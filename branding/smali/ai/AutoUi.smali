.class public final Lcom/isaigu/gymapp/ai/AutoUi;
.super Ljava/lang/Object;
.source "AutoUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoUi$Act;,
        Lcom/isaigu/gymapp/ai/AutoUi$ScrollTo;
    }
.end annotation


# static fields
.field private static final A_AGE:I = 0x9

.field private static final A_BACK:I = 0x3

.field private static final A_CALIB_ROW:I = 0x15

.field private static final A_CLOSE:I = 0x1

.field private static final A_CONTRA:I = 0xc

.field private static final A_DETAILS:I = 0x20

.field private static final A_DOUBLE:I = 0x13

.field private static final A_DOUBLE_LIVE:I = 0x19

.field private static final A_EDIT_PROFILE:I = 0x1d

.field private static final A_EXTRA:I = 0xe

.field private static final A_FITNESS:I = 0x8

.field private static final A_GOAL:I = 0x4

.field private static final A_HEALTH_OPEN:I = 0x1f

.field private static final A_HEIGHT:I = 0xb

.field private static final A_HIDE:I = 0x21

.field private static final A_INFO:I = 0x25

.field private static final A_INTENSITY:I = 0x11

.field private static final A_KIND:I = 0x5

.field private static final A_MINUTES:I = 0x10

.field private static final A_NEXT:I = 0x2

.field private static final A_NEXT_SET:I = 0x27

.field private static final A_OPERATOR:I = 0x6

.field private static final A_PAUSE:I = 0x16

.field private static final A_PROGRAM:I = 0x7

.field private static final A_RAISE:I = 0x18

.field private static final A_REDUCE:I = 0x17

.field private static final A_SEX:I = 0x1c

.field private static final A_STATE:I = 0x26

.field private static final A_STOP:I = 0x1b

.field private static final A_TIPS:I = 0x24

.field private static final A_TODAY:I = 0xd

.field private static final A_VARIANT:I = 0x12

.field private static final A_WEEKS:I = 0xf

.field private static final A_WEIGHT:I = 0xa

.field private static final SETUP_STEPS:I = 0x3

.field static final STEP_CALIB:I = 0x2

.field static final STEP_CLIENT:I = 0x1

.field static final STEP_PROGRAM:I = 0x0

.field static final STEP_RUN:I = 0x3

.field private static calibRowsInfo:Landroid/widget/TextView;

.field private static calibStarted:Z

.field private static details:Z

.field private static healthOk:Z

.field private static healthOpen:Z

.field private static heightTouched:Z

.field private static host:Landroid/app/Activity;

.field private static infoOpen:Z

.field private static primary:Landroid/widget/TextView;

.field private static profileOpen:Z

.field private static final rowLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

.field private static runClock:Landroid/widget/TextView;

.field private static runDouble:Landroid/widget/TextView;

.field private static runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

.field private static runHr:Landroid/widget/TextView;

.field private static runHrBig:Landroid/widget/TextView;

.field private static runHrBox:Landroid/widget/LinearLayout;

.field private static runHrSmall:Landroid/widget/TextView;

.field private static runNext:Landroid/widget/TextView;

.field private static runNextLabel:Landroid/widget/TextView;

.field private static runNotice:Landroid/widget/TextView;

.field private static runPause:Landroid/widget/TextView;

.field private static runPauseLabel:Landroid/widget/TextView;

.field private static runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

.field private static runPeakWho:Landroid/widget/TextView;

.field private static runPhase:Landroid/widget/TextView;

.field private static runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

.field private static runRows:Landroid/widget/TextView;

.field private static runStop:Landroid/widget/TextView;

.field private static runStopLabel:Landroid/widget/TextView;

.field private static runTime:Landroid/widget/TextView;

.field private static runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

.field private static shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private static step:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static action(III)V
    .registers 15

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1200
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v2

    .line 1201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1202
    packed-switch p0, :pswitch_data_270

    .line 1349
    :goto_e
    :pswitch_e
    return-void

    .line 1204
    :pswitch_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_1b

    .line 1205
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_e

    .line 1207
    :cond_1b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 1208
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_e

    .line 1211
    :pswitch_22
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->next()V

    goto :goto_e

    .line 1212
    :pswitch_26
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->back()V

    goto :goto_e

    .line 1213
    :pswitch_2a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_e

    .line 1215
    :pswitch_2e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v0

    aget-object v0, v0, p2

    .line 1216
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-eq v0, v3, :cond_52

    .line 1217
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 1218
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1219
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v3, :cond_5f

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_4e
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 1221
    :cond_50
    iput-object v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 1345
    :cond_52
    :goto_52
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-ne v0, v1, :cond_59

    .line 1346
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 1348
    :cond_59
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_e

    .line 1219
    :cond_5f
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_4e

    .line 1226
    :pswitch_62
    if-nez p2, :cond_6b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_66
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 1227
    iput-object v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_52

    .line 1226
    :cond_6b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_66

    .line 1230
    :pswitch_6e
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v0

    if-eqz v0, :cond_79

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    :goto_76
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    goto :goto_52

    :cond_79
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    goto :goto_76

    .line 1232
    :pswitch_7c
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->profileOpen:Z

    goto :goto_52

    .line 1233
    :pswitch_7f
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->healthOpen:Z

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->healthOk:Z

    goto :goto_52

    .line 1234
    :pswitch_84
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    if-nez v2, :cond_89

    move v0, v1

    :cond_89
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    goto :goto_52

    .line 1236
    :pswitch_8c
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    .line 1237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_52

    .line 1238
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_52

    .line 1242
    :pswitch_a5
    if-nez p2, :cond_ac

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_a9
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_52

    :cond_ac
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_a9

    .line 1243
    :pswitch_af
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->values()[Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v0

    aget-object v0, v0, p2

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_52

    .line 1244
    :pswitch_b8
    const/16 v0, 0xe

    const/16 v3, 0x5f

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    add-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    goto :goto_52

    .line 1245
    :pswitch_ca
    const-wide/16 v4, 0x23

    const-wide/16 v6, 0xdc

    iget-wide v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    int-to-long v10, p2

    add-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-double v4, v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    goto/16 :goto_52

    .line 1247
    :pswitch_e3
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_ef

    const/16 v0, 0xaa

    :goto_e9
    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 1248
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->heightTouched:Z

    goto/16 :goto_52

    .line 1247
    :cond_ef
    const/16 v0, 0x78

    const/16 v3, 0xdc

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    add-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_e9

    .line 1251
    :pswitch_ff
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-ne p2, v1, :cond_10a

    move v0, v1

    :cond_10a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_52

    .line 1254
    :pswitch_113
    sget-object v3, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-object v0, v3, v0

    .line 1255
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 1256
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_52

    .line 1261
    :pswitch_133
    if-ne p2, v1, :cond_136

    move v0, v1

    .line 1262
    :cond_136
    packed-switch p1, :pswitch_data_2c2

    .line 1267
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hydrated:Z

    goto/16 :goto_52

    .line 1263
    :pswitch_13f
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->feverOrIllness:Z

    goto/16 :goto_52

    .line 1264
    :pswitch_145
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->alcoholOrStress48h:Z

    goto/16 :goto_52

    .line 1265
    :pswitch_14b
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    goto/16 :goto_52

    .line 1266
    :pswitch_151
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->ateLast2h:Z

    goto/16 :goto_52

    .line 1271
    :pswitch_157
    if-ne p2, v1, :cond_15a

    move v0, v1

    .line 1272
    :cond_15a
    packed-switch p1, :pswitch_data_2ce

    .line 1281
    :pswitch_15d
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backBladder:Z

    goto/16 :goto_52

    .line 1273
    :pswitch_163
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    goto/16 :goto_52

    .line 1274
    :pswitch_169
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    goto/16 :goto_52

    .line 1275
    :pswitch_16f
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    goto/16 :goto_52

    .line 1276
    :pswitch_175
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backAcute:Z

    goto/16 :goto_52

    .line 1277
    :pswitch_17b
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backRadiating:Z

    goto/16 :goto_52

    .line 1278
    :pswitch_181
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backTrauma:Z

    goto/16 :goto_52

    .line 1279
    :pswitch_187
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backSurgery:Z

    goto/16 :goto_52

    .line 1280
    :pswitch_18d
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backNightPainFever:Z

    goto/16 :goto_52

    .line 1285
    :pswitch_193
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    const/16 v4, 0x68

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    add-int/2addr v2, p2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    goto/16 :goto_52

    .line 1287
    :pswitch_1a8
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    .line 1288
    if-eqz v0, :cond_1ca

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    .line 1289
    :goto_1b0
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    mul-int/lit8 v5, p2, 0x3c

    add-int/2addr v0, v5

    invoke-static {v3, v4, v2, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->clampSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    .line 1290
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_52

    .line 1288
    :cond_1ca
    const/16 v0, 0x4b0

    goto :goto_1b0

    .line 1294
    :pswitch_1cd
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 1295
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_52

    .line 1298
    :pswitch_1df
    iput p2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    .line 1299
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_52

    .line 1302
    :pswitch_1e6
    if-ne p2, v1, :cond_1ef

    :goto_1e8
    iput-boolean v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 1303
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_e

    :cond_1ef
    move v1, v0

    .line 1302
    goto :goto_1e8

    .line 1306
    :pswitch_1f1
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    if-nez v2, :cond_1f6

    move v0, v1

    :cond_1f6
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    goto/16 :goto_52

    .line 1309
    :pswitch_1fa
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    if-ne p2, v1, :cond_203

    :goto_1fe
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->setTips(Landroid/content/Context;Z)V

    goto/16 :goto_e

    :cond_203
    move v1, v0

    goto :goto_1fe

    .line 1312
    :pswitch_205
    const-string v0, "calib_keys"

    const-string v1, "\u00b11 / \u00b15 \u043d\u0430 \u0440\u0435\u0434\u0430. \u041a\u0430\u0447\u0432\u0430\u043d\u0435\u0442\u043e \u0435 \u043f\u043b\u0430\u0432\u043d\u043e: \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e +5 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430."

    const-string v2, "\u00b11 / \u00b15 per row. Raising is gradual: at most +5 per second."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1314
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v1, p1, 0x64

    add-int/lit8 v1, v1, -0x32

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->adjustCalibration(II)V

    .line 1315
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshCalib()V

    goto/16 :goto_e

    .line 1318
    :pswitch_220
    const-string v0, "btn_pause"

    const-string v1, "\u041f\u0430\u0443\u0437\u0430: \u0438\u0437\u0445\u043e\u0434\u044a\u0442 \u0435 0 \u0438 \u0447\u0430\u0441\u043e\u0432\u043d\u0438\u043a\u044a\u0442 \u043d\u0430 \u043f\u043b\u0430\u043d\u0430 \u0441\u043f\u0438\u0440\u0430. \u0421\u043b\u0435\u0434 \u043f\u0430\u0443\u0437\u0430 \u043d\u0430\u0434 30 s \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0442\u0440\u044a\u0433\u0432\u0430\u0442 \u043f\u043e-\u043c\u0435\u043a\u043e."

    const-string v2, "Pause: output 0 and the plan clock stops. After more than 30 s the pulses restart softer."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1320
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->togglePause()V

    .line 1321
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V

    goto/16 :goto_e

    .line 1323
    :pswitch_235
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->reduceAll()V

    goto/16 :goto_e

    .line 1324
    :pswitch_23a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->raiseAll()V

    goto/16 :goto_e

    .line 1326
    :pswitch_23f
    const-string v2, "btn_double"

    const-string v3, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u043b\u0435\u043a \u043d\u0438\u0441\u043a\u043e\u0447\u0435\u0441\u0442\u043e\u0442\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 \u2014 \u0441\u0430\u043c\u043e \u0432\u044a\u0432 \u0444\u0430\u0437\u0438\u0442\u0435, \u043a\u044a\u0434\u0435\u0442\u043e \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0433\u043e \u0438\u043c\u0430."

    const-string v6, "Double impulse: a light low-frequency pulse in the pause \u2014 only in the phases where the program has it."

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1328
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v2

    .line 1329
    if-eqz v2, :cond_25b

    .line 1330
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseOn()Z

    move-result v2

    if-nez v2, :cond_260

    :goto_258
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoSession;->setDoublePulse(Z)V

    .line 1332
    :cond_25b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V

    goto/16 :goto_e

    :cond_260
    move v1, v0

    .line 1330
    goto :goto_258

    .line 1336
    :pswitch_262
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->next()Z

    .line 1337
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V

    goto/16 :goto_e

    .line 1340
    :pswitch_26a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    goto/16 :goto_e

    .line 1202
    nop

    :pswitch_data_270
    .packed-switch 0x1
        :pswitch_f
        :pswitch_22
        :pswitch_26
        :pswitch_2e
        :pswitch_62
        :pswitch_6e
        :pswitch_8c
        :pswitch_af
        :pswitch_b8
        :pswitch_ca
        :pswitch_e3
        :pswitch_ff
        :pswitch_133
        :pswitch_157
        :pswitch_193
        :pswitch_1a8
        :pswitch_1cd
        :pswitch_1df
        :pswitch_1e6
        :pswitch_e
        :pswitch_205
        :pswitch_220
        :pswitch_235
        :pswitch_23a
        :pswitch_23f
        :pswitch_e
        :pswitch_26a
        :pswitch_a5
        :pswitch_7c
        :pswitch_e
        :pswitch_7f
        :pswitch_84
        :pswitch_2a
        :pswitch_e
        :pswitch_e
        :pswitch_1fa
        :pswitch_1f1
        :pswitch_113
        :pswitch_262
    .end packed-switch

    .line 1262
    :pswitch_data_2c2
    .packed-switch 0x0
        :pswitch_13f
        :pswitch_145
        :pswitch_14b
        :pswitch_151
    .end packed-switch

    .line 1272
    :pswitch_data_2ce
    .packed-switch 0x1
        :pswitch_163
        :pswitch_169
        :pswitch_16f
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_175
        :pswitch_17b
        :pswitch_181
        :pswitch_187
        :pswitch_18d
    .end packed-switch
.end method

.method private static back()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    .line 370
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-ne v0, v2, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_13

    .line 371
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 372
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    .line 374
    :cond_13
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-lez v0, :cond_22

    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-gt v0, v2, :cond_22

    .line 375
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    .line 377
    :cond_22
    return-void
.end method

.method private static banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .registers 8

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v3, 0x41600000    # 14.0f

    .line 1436
    const/4 v0, 0x1

    invoke-static {p0, p2, v3, p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1437
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1438
    const/16 v1, 0x22

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x88

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1439
    return-object v0
.end method

.method private static choiceCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 1399
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1400
    if-eqz p3, :cond_4d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v1, 0x3e6147ae    # 0.22f

    invoke-static {v0, p4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    :goto_10
    const/high16 v1, 0x41800000    # 16.0f

    .line 1401
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v4, v1

    if-eqz p3, :cond_50

    move v2, p4

    :goto_1a
    if-eqz p3, :cond_54

    const/high16 v1, 0x40000000    # 2.0f

    :goto_1e
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 1400
    invoke-static {v0, v4, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1402
    const/high16 v0, 0x41900000    # 18.0f

    if-eqz p3, :cond_57

    :goto_2d
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1403
    const/high16 v0, 0x41500000    # 13.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1404
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1405
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1406
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1407
    return-object v3

    .line 1400
    :cond_4d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    goto :goto_10

    .line 1401
    :cond_50
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    move v2, v1

    goto :goto_1a

    :cond_54
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1e

    .line 1402
    :cond_57
    sget p4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_2d
.end method

.method private static clientBlocker()Ljava/lang/String;
    .registers 1

    .prologue
    .line 702
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 703
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlocker()Ljava/lang/String;

    move-result-object v0

    .line 704
    if-eqz v0, :cond_a

    .line 707
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static cr10Text(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 820
    const/4 v0, 0x3

    if-gt p0, v0, :cond_c

    .line 821
    const-string v0, "\u044f\u0441\u043d\u043e, \u043b\u0435\u043a\u043e"

    const-string v1, "clear, light"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    :goto_b
    return-object v0

    .line 823
    :cond_c
    const/4 v0, 0x5

    if-gt p0, v0, :cond_18

    .line 824
    const-string v0, "\u0441\u0438\u043b\u043d\u043e, \u043d\u043e \u043f\u0440\u0438\u044f\u0442\u043d\u043e"

    const-string v1, "strong but pleasant"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 826
    :cond_18
    const-string v0, "\u043c\u043d\u043e\u0433\u043e \u0441\u0438\u043b\u043d\u043e, \u0438\u0437\u0434\u044a\u0440\u0436\u0438\u043c\u043e"

    const-string v1, "very strong, bearable"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static dismiss()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 179
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_c

    .line 181
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_11

    .line 185
    :cond_c
    :goto_c
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 186
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    .line 187
    return-void

    .line 182
    :catch_11
    move-exception v0

    goto :goto_c
.end method

.method private static dockKey(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/high16 v3, 0x42a80000    # 84.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/4 v4, -0x2

    .line 963
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 964
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 965
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 966
    const-string v1, ""

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 967
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 968
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 969
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42d00000    # 104.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 972
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 973
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 974
    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    return-object v1
.end method

.method private static enable(Z)V
    .registers 3

    .prologue
    .line 323
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 324
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    if-eqz p0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 326
    :cond_d
    return-void

    .line 324
    :cond_e
    const v0, 0x3ee66666    # 0.45f

    goto :goto_a
.end method

.method private static footer(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 311
    if-eqz p2, :cond_1f

    .line 312
    const-string v0, "\u041d\u0430\u0437\u0430\u0434"

    const-string v1, "Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 313
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    :cond_1f
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    invoke-static {p0, p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    .line 318
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 320
    return-void
.end method

.method private static go(I)V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 222
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    if-eqz v0, :cond_97

    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-ne p0, v0, :cond_97

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 223
    :goto_17
    sget v2, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-eq p0, v2, :cond_1d

    .line 224
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    .line 226
    :cond_1d
    sput p0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    .line 227
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 228
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 229
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 230
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 231
    sput-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    .line 232
    sput-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->calibRowsInfo:Landroid/widget/TextView;

    .line 233
    packed-switch p0, :pswitch_data_b0

    .line 237
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->screenRun(Landroid/content/Context;)V

    .line 239
    :goto_44
    invoke-static {v2, p0}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTip(Landroid/content/Context;I)V

    .line 240
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTipText(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a6

    move v2, v1

    :goto_52
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    if-ge p0, v5, :cond_a8

    .line 242
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 247
    :goto_80
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v3, 0x3f70a3d7    # 0.94f

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 248
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$ScrollTo;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/AutoUi$ScrollTo;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void

    :cond_97
    move v0, v1

    .line 222
    goto/16 :goto_17

    .line 234
    :pswitch_9a
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->screenProgram(Landroid/content/Context;)V

    goto :goto_44

    .line 235
    :pswitch_9e
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->screenClient(Landroid/content/Context;)V

    goto :goto_44

    .line 236
    :pswitch_a2
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->screenCalib(Landroid/content/Context;)V

    goto :goto_44

    :cond_a6
    move v2, v3

    .line 240
    goto :goto_52

    .line 245
    :cond_a8
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_80

    .line 233
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_9e
        :pswitch_a2
    .end packed-switch
.end method

.method private static goalColor(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)I
    .registers 3

    .prologue
    .line 1451
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 1454
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_d
    return v0

    .line 1452
    :pswitch_e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    goto :goto_d

    .line 1453
    :pswitch_11
    const v0, -0xd95966

    goto :goto_d

    .line 1451
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private static goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1443
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 1446
    const-string v0, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v1, "Toning"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 1444
    :pswitch_14
    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v1, "Weight loss"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 1445
    :pswitch_1d
    const-string v0, "\u0417\u0434\u0440\u0430\u0432\u0435"

    const-string v1, "Health"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 1443
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1d
    .end packed-switch
.end method

.method private static hasHealthFlag(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 471
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 472
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 476
    :goto_21
    return v1

    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->feverOrIllness:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->alcoholOrStress48h:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    if-eqz v0, :cond_37

    :cond_34
    move v0, v1

    :goto_35
    move v1, v0

    goto :goto_21

    :cond_37
    const/4 v0, 0x0

    goto :goto_35
.end method

.method private static hint(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .prologue
    .line 1415
    const/high16 v0, 0x41500000    # 13.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static isShowing()Z
    .registers 1

    .prologue
    .line 201
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    .line 1419
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1420
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1421
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 1422
    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1423
    return-object v0
.end method

.method private static neon(Landroid/content/Context;I)Landroid/widget/TextView;
    .registers 6

    .prologue
    .line 955
    const-string v0, ""

    const/high16 v1, 0x41f00000    # 30.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 956
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 957
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 958
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 959
    return-object v0
.end method

.method private static next()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 329
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 330
    sget v1, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    packed-switch v1, :pswitch_data_58

    .line 367
    :cond_b
    :goto_b
    return-void

    .line 332
    :pswitch_c
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 333
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_b

    .line 337
    :pswitch_14
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlocker()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 340
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->healthOpen:Z

    if-nez v1, :cond_20

    .line 341
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->healthOk:Z

    .line 343
    :cond_20
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->clientBlocker()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_38

    .line 344
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->heightTouched:Z

    if-eqz v1, :cond_31

    .line 345
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveHeight(Landroid/app/Activity;I)V

    .line 347
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 348
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_b

    .line 350
    :cond_38
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_b

    .line 354
    :pswitch_3c
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    if-nez v0, :cond_49

    .line 355
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->beginCalibration()V

    .line 356
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    .line 357
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_b

    .line 358
    :cond_49
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canStart()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 359
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->startRun(Landroid/content/Context;)V

    .line 361
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_b

    .line 330
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_c
        :pswitch_14
        :pswitch_3c
    .end packed-switch
.end method

.method static onFinished()V
    .registers 2

    .prologue
    .line 191
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 193
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->finishAssisted()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_a

    .line 197
    :goto_6
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 198
    return-void

    .line 194
    :catch_a
    move-exception v0

    .line 195
    const-string v1, "AutoUi.onFinished"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 149
    :cond_a
    :goto_a
    return-void

    .line 124
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 125
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v3, :cond_47

    .line 126
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->conflict()Ljava/lang/String;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_1d

    .line 128
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    .line 131
    :cond_1d
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->beginSetup(Landroid/content/Context;)V

    .line 132
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v3

    .line 133
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-lez v0, :cond_43

    move v0, v1

    :goto_29
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->heightTouched:Z

    .line 134
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    .line 135
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_45

    move v0, v1

    :goto_32
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->profileOpen:Z

    .line 136
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->healthOk:Z

    .line 137
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->healthOpen:Z

    .line 138
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 139
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    .line 140
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->show(Landroid/app/Activity;I)V

    goto :goto_a

    :cond_43
    move v0, v2

    .line 133
    goto :goto_29

    :cond_45
    move v0, v2

    .line 135
    goto :goto_32

    .line 143
    :cond_47
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_4f

    .line 144
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->onFinished()V

    goto :goto_a

    .line 147
    :cond_4f
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_58

    const/4 v2, 0x3

    :cond_54
    :goto_54
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->show(Landroid/app/Activity;I)V

    goto :goto_a

    .line 148
    :cond_58
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_54

    const/4 v2, 0x2

    goto :goto_54
.end method

.method private static planBlock(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 13

    .prologue
    .line 587
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v4

    .line 588
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    .line 589
    if-nez v4, :cond_b

    .line 685
    :cond_a
    :goto_a
    return-void

    .line 592
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 594
    const-string v0, "\u0412\u0440\u0435\u043c\u0435"

    const-string v3, "Time"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    div-int/lit8 v5, v5, 0x3c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    if-lez v0, :cond_18f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " + "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    div-int/lit8 v6, v6, 0x3c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u043c\u0438\u043d"

    const-string v6, " min"

    .line 595
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 594
    invoke-static {p0, v2, v3, v0, v5}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 596
    const-string v0, "\u0423\u0441\u0435\u0449\u0430\u043d\u0435"

    const-string v3, "Feeling"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    if-le v0, v6, :cond_193

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2013"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_85
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u043e\u0442 10"

    const-string v6, " of 10"

    .line 597
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xa

    .line 596
    invoke-static {p0, v2, v3, v0, v5}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 598
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v3

    .line 599
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v0, v5, :cond_ce

    if-eqz v3, :cond_ce

    .line 600
    const-string v0, "\u041f\u0443\u043b\u0441 \u0434\u043e"

    const-string v5, "HR up to"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {p0, v2, v0, v5, v6}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 602
    :cond_ce
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 605
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 606
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    div-int/lit8 v6, v6, 0x3c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "\u043c\u0438\u043d \u0430\u043a\u0442\u0438\u0432\u043d\u0438"

    const-string v7, "min active"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    new-instance v8, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v9, 0x10

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, v0, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 609
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoPlanner;->intenseAllowed(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 610
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "\u041c\u0435\u043a"

    const-string v8, "Soft"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u0435\u043d"

    const-string v8, "Standard"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0432\u0435\u043d"

    const-string v8, "Intense"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 612
    :goto_142
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    iget-object v7, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->ordinal()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v8, 0x11

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, v0, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0xe

    .line 613
    invoke-static {v6, v7, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 612
    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 615
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    if-eqz v0, :cond_1c8

    .line 616
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    array-length v0, v0

    new-array v5, v0, [Ljava/lang/String;

    .line 617
    const/4 v0, 0x0

    :goto_177
    array-length v6, v5

    if-ge v0, v6, :cond_1b1

    .line 618
    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    aget-object v6, v6, v0

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsEn:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_177

    .line 594
    :cond_18f
    const-string v0, ""

    goto/16 :goto_3f

    .line 596
    :cond_193
    const-string v0, ""

    goto/16 :goto_85

    .line 611
    :cond_197
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "\u041c\u0435\u043a"

    const-string v8, "Soft"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u0435\u043d"

    const-string v8, "Standard"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    goto :goto_142

    .line 620
    :cond_1b1
    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    new-instance v6, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v7, 0x12

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, v5, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v5, 0xa

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    :cond_1c8
    iget-boolean v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_1f3

    .line 623
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v5, "Double impulse"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u043b\u0435\u043a \u0438\u043c\u043f\u0443\u043b\u0441 \u0438 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430"

    const-string v6, "a light pulse in the pause too"

    .line 624
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    new-instance v6, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v7, 0x13

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 623
    invoke-static {p0, v0, v5, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    .line 625
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 623
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    :cond_1f3
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v0, v1, :cond_220

    if-nez v3, :cond_220

    .line 632
    const-string v0, "\u2022 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430 \u2014 \u043f\u0443\u043b\u0441\u044a\u0442 \u043d\u0435 \u0441\u0435 \u0441\u043b\u0435\u0434\u0438."

    const-string v3, "No band \u2014 heart rate is not watched."

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 634
    :cond_220
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_228
    :goto_228
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 635
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v1, :cond_228

    .line 636
    const-string v1, "\u2022 "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26a

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    :goto_248
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2014 \u043d\u044f\u043c\u0430 \u0434\u0430 \u043f\u043e\u043b\u0443\u0447\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438"

    const-string v5, " \u2014 gets no pulses"

    .line 637
    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_228

    .line 636
    :cond_26a
    const-string v1, "?"

    goto :goto_248

    .line 640
    :cond_26d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_28a

    .line 641
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    :cond_28a
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    if-eqz v0, :cond_398

    const-string v0, "\u25b4  \u0421\u043a\u0440\u0438\u0439 \u0444\u0430\u0437\u0438\u0442\u0435"

    const-string v1, "\u25b4  Hide the phases"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    :goto_296
    const/4 v1, 0x3

    .line 644
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 646
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    if-eqz v0, :cond_a

    .line 649
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 650
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2bc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 651
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 652
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v2, v2

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043c\u0438\u043d \u00b7 "

    const-string v8, " min \u00b7 "

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-eqz v2, :cond_3a2

    .line 655
    const-string v2, "\u0432\u044a\u043b\u043d\u0430 \u043f\u043e \u0437\u043e\u043d\u0438\u0442\u0435 \u00b7 "

    const-string v3, "wave through the zones \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_30a
    const-string v1, " \u00b7 "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 663
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    sub-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v2, v8

    if-lez v1, :cond_34c

    .line 664
    const-string v1, "\u2192"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 666
    :cond_34c
    const-string v1, " %"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 668
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x1

    invoke-static {p0, v0, v2, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x432a0000    # 170.0f

    .line 669
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v8, -0x2

    invoke-direct {v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 668
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {p0, v0, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2bc

    .line 645
    :cond_398
    const-string v0, "\u25be  \u0424\u0430\u0437\u0438 \u0438 \u0437\u043e\u043d\u0438"

    const-string v1, "\u25be  Phases and zones"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_296

    .line 657
    :cond_3a2
    const/4 v1, 0x0

    move v2, v1

    :goto_3a4
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_30a

    .line 658
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 659
    if-lez v2, :cond_3e3

    const-string v3, " \u2194 "

    :goto_3b8
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " Hz "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3a4

    .line 659
    :cond_3e3
    const-string v3, ""

    goto :goto_3b8

    .line 674
    :cond_3e6
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneBars(Landroid/content/Context;Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    const-string v0, "x"

    const-string v2, "y"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42a

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->notesBg:Ljava/util/List;

    .line 677
    :goto_40a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 678
    const-string v3, "\u2022 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40e

    .line 676
    :cond_42a
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->notesEn:Ljava/util/List;

    goto :goto_40a

    .line 680
    :cond_42d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_448

    .line 681
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->hint(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    :cond_448
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a
.end method

.method private static planBlocker()Ljava/lang/String;
    .registers 3

    .prologue
    .line 689
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 690
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v1, :cond_11

    .line 691
    const-string v0, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0440\u044a\u0441\u0442\u0430 \u2014 \u043e\u0442 \u043d\u0435\u0433\u043e \u0441\u0435 \u0441\u043c\u044f\u0442\u0430 \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v1, "Enter the height \u2014 the plan depends on it."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    :goto_10
    return-object v0

    .line 693
    :cond_11
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_20

    .line 694
    const-string v0, "\u041f\u043e\u0434 18 \u0433. \u2014 \u043d\u0435."

    const-string v1, "Under 18 \u2014 no."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 696
    :cond_20
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    .line 697
    if-eqz v1, :cond_2f

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_2f
    const-string v0, "\u041d\u044f\u043c\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v1, "No program"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method static refresh()V
    .registers 2

    .prologue
    .line 205
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 217
    :cond_e
    :goto_e
    return-void

    .line 209
    :cond_f
    :try_start_f
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    .line 210
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_e

    .line 214
    :catch_18
    move-exception v0

    .line 215
    const-string v1, "AutoUi.refresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 211
    :cond_1f
    :try_start_1f
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshCalib()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_27} :catch_18

    goto :goto_e
.end method

.method private static refreshCalib()V
    .registers 5

    .prologue
    .line 805
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v3

    .line 806
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_45

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_45

    .line 807
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 808
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v4, :cond_2f

    const-string v0, "\u2014"

    :goto_28
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 808
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 810
    :cond_45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    if-eqz v0, :cond_50

    .line 811
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canStart()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->enable(Z)V

    .line 813
    :cond_50
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibRowsInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_5f

    .line 814
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v0

    .line 815
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->calibRowsInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_60

    :goto_5c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    :cond_5f
    return-void

    .line 815
    :cond_60
    const-string v0, ""

    goto :goto_5c
.end method

.method private static refreshRun()V
    .registers 28

    .prologue
    .line 1002
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v18

    .line 1003
    if-eqz v18, :cond_a

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    if-nez v4, :cond_b

    .line 1172
    :cond_a
    :goto_a
    return-void

    .line 1006
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1007
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v16

    .line 1008
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v19

    .line 1009
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v22

    .line 1010
    if-eqz v19, :cond_15f

    invoke-virtual/range {v19 .. v19}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v4

    if-eqz v4, :cond_15f

    const/4 v4, 0x1

    move v13, v4

    .line 1011
    :goto_25
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v23

    .line 1012
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v8

    .line 1015
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v5

    .line 1016
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_163

    const/4 v4, 0x1

    move v14, v4

    .line 1017
    :goto_39
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_167

    const/4 v4, 0x1

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCountdownLeftS(J)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v17, v4

    .line 1018
    :goto_4e
    if-eqz v5, :cond_178

    if-nez v23, :cond_178

    .line 1019
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setVisibility(I)V

    .line 1020
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v8, :cond_16c

    iget-object v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_5e
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 1021
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1022
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_16f

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_74
    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setAlpha(F)V

    .line 1023
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v14, :cond_82

    if-lez v17, :cond_174

    :cond_82
    const-string v4, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v9, "Next: "

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_8a
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    :goto_9d
    if-eqz v14, :cond_23a

    .line 1033
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v4

    .line 1034
    const/4 v5, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1035
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startReady()Z

    move-result v7

    .line 1036
    if-eqz v23, :cond_1a3

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1037
    :goto_b8
    if-eqz v7, :cond_1bb

    const/4 v5, 0x2

    .line 1038
    :goto_bb
    if-eqz v23, :cond_1be

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0421\u043b\u0435\u0434\u0432\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    div-int/lit8 v7, v7, 0x3c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " \u043c\u0438\u043d"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Recovery "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    div-int/lit8 v9, v9, 0x3c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " min next"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_ff
    move-object v7, v4

    .line 1058
    :goto_100
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_323

    .line 1059
    const-string v4, "\u041f\u0430\u0443\u0437\u0430"

    const-string v7, "Paused"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1064
    :goto_10e
    sget-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    move/from16 v0, v17

    invoke-virtual {v7, v6, v5, v0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->set(FII)V

    .line 1066
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v9

    .line 1067
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v5, v6, :cond_343

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_343

    const/4 v5, 0x1

    move v15, v5

    .line 1068
    :goto_12f
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->getVisibility()I

    move-result v5

    if-nez v5, :cond_347

    .line 1069
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v7, v10}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->setCenter(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1077
    :goto_13f
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    const/16 v4, 0xa

    new-array v6, v4, [Z

    .line 1081
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getLiveZones()[I

    move-result-object v7

    .line 1082
    const/4 v4, 0x0

    :goto_14d
    array-length v5, v6

    if-ge v4, v5, :cond_3cc

    .line 1083
    if-eqz v7, :cond_3c1

    array-length v5, v7

    if-ge v4, v5, :cond_3c1

    aget v5, v7, v4

    :goto_157
    if-gtz v5, :cond_3c9

    const/4 v5, 0x1

    :goto_15a
    aput-boolean v5, v6, v4

    .line 1082
    add-int/lit8 v4, v4, 0x1

    goto :goto_14d

    .line 1010
    :cond_15f
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_25

    .line 1016
    :cond_163
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_39

    .line 1017
    :cond_167
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_4e

    .line 1020
    :cond_16c
    const/4 v4, 0x0

    goto/16 :goto_5e

    .line 1022
    :cond_16f
    const v4, 0x3f0ccccd    # 0.55f

    goto/16 :goto_74

    .line 1023
    :cond_174
    const-string v4, ""

    goto/16 :goto_8a

    .line 1025
    :cond_178
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setVisibility(I)V

    .line 1026
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    if-nez v23, :cond_184

    if-eqz v13, :cond_191

    :cond_184
    const-string v4, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u00b7 \u043b\u0435\u0433\u043d\u0438 \u0438 \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043d\u0438"

    const-string v6, "Recovery \u00b7 lie down and relax"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_18c
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9d

    .line 1027
    :cond_191
    if-eqz v19, :cond_1a0

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_18c

    :cond_1a0
    const-string v4, ""

    goto :goto_18c

    .line 1036
    :cond_1a3
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestS(J)D

    move-result-wide v24

    int-to-double v0, v5

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    double-to-float v6, v10

    goto/16 :goto_b8

    .line 1037
    :cond_1bb
    const/4 v5, 0x1

    goto/16 :goto_bb

    .line 1040
    :cond_1be
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430 "

    const-string v10, "Rest "

    .line 1039
    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestS(J)D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1040
    if-lez v4, :cond_209

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " \u00b7 \u25b6 \u0441\u043b\u0435\u0434 "

    const-string v11, " \u00b7 \u25b6 in "

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-double v10, v4

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1042
    :goto_1ff
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_ff

    .line 1041
    :cond_209
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestHrHigh(J)Z

    move-result v4

    if-eqz v4, :cond_231

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u00b7 \u043f\u0443\u043b\u0441\u044a\u0442 \u2264 "

    const-string v10, " \u00b7 HR \u2264 "

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestHrLimit()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1ff

    .line 1042
    :cond_231
    const-string v4, " \u00b7 \u0433\u043e\u0442\u043e\u0432\u043e"

    const-string v9, " \u00b7 ready"

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1ff

    .line 1043
    :cond_23a
    if-eqz v13, :cond_274

    .line 1044
    move-object/from16 v0, v19

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v4, :cond_272

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v4

    move-object/from16 v0, v19

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 1045
    :goto_24d
    const/4 v5, 0x3

    .line 1046
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041e\u0441\u0442\u0430\u0432\u0430 "

    const-string v9, "Left "

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v6, v4

    goto/16 :goto_100

    .line 1044
    :cond_272
    const/4 v4, 0x0

    goto :goto_24d

    .line 1047
    :cond_274
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v4

    if-eqz v4, :cond_2e9

    .line 1048
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getStationS()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v6, v4

    .line 1049
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_2e7

    const/4 v4, 0x0

    .line 1050
    :goto_297
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetImpulses()[I

    move-result-object v5

    .line 1051
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0418\u043c\u043f\u0443\u043b\u0441 "

    const-string v10, "Impulse "

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x0

    aget v9, v5, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " / "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x1

    aget v5, v5, v9

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " \u00b7 "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v10, 0x0

    .line 1052
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v24

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getStationS()D

    move-result-wide v26

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v5, v4

    .line 1053
    goto/16 :goto_100

    .line 1049
    :cond_2e7
    const/4 v4, 0x4

    goto :goto_297

    .line 1054
    :cond_2e9
    if-eqz v19, :cond_321

    move-object/from16 v0, v19

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v4, :cond_321

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v4

    move-object/from16 v0, v19

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 1055
    :goto_2fc
    const/4 v5, 0x0

    .line 1056
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041e\u0441\u0442\u0430\u0432\u0430 "

    const-string v9, "Left "

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v6, v4

    goto/16 :goto_100

    .line 1054
    :cond_321
    const/4 v4, 0x0

    goto :goto_2fc

    .line 1060
    :cond_323
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_8c2

    .line 1061
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->isResumeWaiting()Z

    move-result v4

    if-eqz v4, :cond_339

    const-string v4, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u043d\u0430 \u2014 \u25b6"

    const-string v7, "HR is down \u2014 \u25b6"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_10e

    .line 1062
    :cond_339
    const-string v4, "\u041f\u0430\u0443\u0437\u0430: \u043f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0432\u0438\u0441\u043e\u043a"

    const-string v7, "Paused: HR high"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_10e

    .line 1067
    :cond_343
    const/4 v5, 0x0

    move v15, v5

    goto/16 :goto_12f

    .line 1070
    :cond_347
    if-eqz v15, :cond_396

    .line 1071
    sget-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    if-lez v9, :cond_390

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2665 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u0434\u043e "

    const-string v11, "up to "

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1072
    if-lez v9, :cond_393

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCardioLoad(J)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/isaigu/gymapp/ai/AutoViews;->heat(D)I

    move-result v6

    .line 1071
    :goto_38b
    invoke-virtual {v7, v5, v10, v6}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->setCenter(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_13f

    :cond_390
    const-string v5, "\u2665 \u2014"

    goto :goto_360

    .line 1072
    :cond_393
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_38b

    .line 1074
    :cond_396
    sget-object v10, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    if-nez v13, :cond_39c

    if-nez v19, :cond_3b9

    :cond_39c
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v6

    :goto_3a0
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v6

    .line 1075
    if-eqz v19, :cond_3be

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3b2
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1074
    invoke-virtual {v10, v6, v5, v7}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->setCenter(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_13f

    :cond_3b9
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v6

    goto :goto_3a0

    .line 1075
    :cond_3be
    const-string v5, ""

    goto :goto_3b2

    .line 1083
    :cond_3c1
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v5, v5, v4

    goto/16 :goto_157

    :cond_3c9
    const/4 v5, 0x0

    goto/16 :goto_15a

    .line 1085
    :cond_3cc
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    if-eqz v8, :cond_4ae

    iget-object v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_3d2
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getChannelLoad(J)[D

    move-result-object v7

    invoke-virtual {v5, v4, v7, v6}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[Z)V

    .line 1087
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->set(D)V

    .line 1088
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCardioLoad(J)D

    move-result-wide v6

    .line 1089
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPeakWho:Landroid/widget/TextView;

    const-wide/16 v10, 0x0

    cmpl-double v4, v6, v10

    if-ltz v4, :cond_4b2

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isCardioLimiting(J)Z

    move-result v4

    if-eqz v4, :cond_4b2

    const-string v4, "\u0441\u044a\u0440\u0446\u0435"

    const-string v8, "heart"

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_40c
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    if-eqz v15, :cond_4bc

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4bc

    const/4 v4, 0x1

    .line 1092
    :goto_41a
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runHrBox:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_4bf

    const/4 v5, 0x0

    :goto_41f
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1093
    if-eqz v4, :cond_481

    .line 1094
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHrBig:Landroid/widget/TextView;

    if-lez v9, :cond_4c3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u2665 "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_43b
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHrBig:Landroid/widget/TextView;

    if-lez v9, :cond_4c7

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AutoViews;->heat(D)I

    move-result v4

    :goto_446
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1096
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHrSmall:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v4, v6, :cond_4cb

    .line 1097
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0437\u043e\u043d\u0430 "

    const-string v7, "zone "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorLoHr()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u2013"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1096
    :goto_47e
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    :cond_481
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v12, v4, [Ljava/lang/String;

    .line 1103
    const/4 v4, 0x0

    move v5, v4

    :goto_48d
    array-length v4, v12

    if-ge v5, v4, :cond_4f2

    .line 1104
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1105
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v6

    if-eqz v6, :cond_4e9

    const-string v4, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Recovery"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_4a8
    aput-object v4, v12, v5

    .line 1103
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_48d

    .line 1085
    :cond_4ae
    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_3d2

    .line 1089
    :cond_4b2
    const-string v4, "\u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v8, "muscles"

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_40c

    .line 1091
    :cond_4bc
    const/4 v4, 0x0

    goto/16 :goto_41a

    .line 1092
    :cond_4bf
    const/16 v5, 0x8

    goto/16 :goto_41f

    .line 1094
    :cond_4c3
    const-string v4, "\u2665 \u2014"

    goto/16 :goto_43b

    .line 1095
    :cond_4c7
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_446

    .line 1098
    :cond_4cb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0434\u043e "

    const-string v7, "up to "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_47e

    .line 1105
    :cond_4e9
    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4a8

    .line 1107
    :cond_4f2
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v10

    .line 1108
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getForecast()Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v7

    .line 1109
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    if-eqz v15, :cond_6c0

    move-object/from16 v0, v16

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    :goto_50a
    invoke-virtual {v5, v6, v4}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->setHrScale(II)V

    .line 1110
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTrace()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v8

    invoke-virtual/range {v5 .. v12}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->set(Ljava/util/List;Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;DD[Ljava/lang/String;)V

    .line 1111
    if-eqz v7, :cond_6c3

    const-wide/16 v4, 0x0

    iget-wide v8, v7, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->sessionAt(D)D

    move-result-wide v6

    sub-double v6, v8, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 1112
    :goto_530
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0418\u0437\u043c\u0438\u043d\u0430\u043b\u043e "

    const-string v9, "Elapsed "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   \u00b7   \u043e\u0441\u0442\u0430\u0432\u0430 "

    const-string v9, "   \u00b7   left "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1113
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   \u00b7   \u0438\u043c\u043f\u0443\u043b\u0441\u0438 "

    const-string v7, "   \u00b7   impulses "

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v8

    move-object/from16 v0, v16

    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    div-int/lit8 v5, v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u043c\u0438\u043d"

    const-string v7, " min"

    .line 1114
    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1112
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHr:Landroid/widget/TextView;

    if-eqz v15, :cond_6c9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2665 \u043b\u0438\u043d\u0438\u044f \u00b7 \u0442\u0430\u0432\u0430\u043d "

    const-string v7, "\u2665 line \u00b7 cap "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5c4
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    const v8, -0xdd3aa2

    .line 1119
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_6cd

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_6cd

    const/4 v4, 0x1

    move v11, v4

    .line 1120
    :goto_5d8
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_6d1

    .line 1121
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPause:Landroid/widget/TextView;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPauseLabel:Landroid/widget/TextView;

    const-string v6, "\u275a\u275a"

    const-string v7, "\u041f\u0430\u0443\u0437\u0430"

    const-string v8, "Pause"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/ai/AutoUi;->styleKey(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 1135
    :goto_5f3
    if-nez v13, :cond_78c

    if-nez v23, :cond_78c

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_5ff

    if-eqz v14, :cond_78c

    :cond_5ff
    const/4 v9, 0x1

    .line 1136
    :goto_600
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runNext:Landroid/widget/TextView;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runNextLabel:Landroid/widget/TextView;

    const-string v6, "\u23ed"

    if-eqz v14, :cond_78f

    const-string v7, "\u0414\u0440\u0443\u0433\u043e \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v8, "Other exercise"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1138
    :goto_610
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v10, 0x1

    .line 1136
    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/ai/AutoUi;->styleKey(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 1139
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runStop:Landroid/widget/TextView;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runStopLabel:Landroid/widget/TextView;

    const-string v6, "\u25a0"

    if-nez v13, :cond_620

    if-eqz v23, :cond_7af

    :cond_620
    const-string v7, "\u041a\u0440\u0430\u0439"

    const-string v8, "End"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1140
    :goto_628
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/4 v9, 0x1

    move v10, v11

    .line 1139
    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/ai/AutoUi;->styleKey(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 1142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v19, :cond_7c7

    if-eqz v13, :cond_7b9

    const-string v4, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Recovery"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_640
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1143
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getStationsDone()I

    move-result v4

    if-lez v4, :cond_7ce

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u00b7 \u0441\u0435\u0440\u0438\u044f "

    const-string v7, " \u00b7 set "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getStationsDone()I

    move-result v7

    if-eqz v14, :cond_7cb

    const/4 v4, 0x0

    :goto_662
    add-int/2addr v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_66b
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1142
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoUi;->subtitle(Ljava/lang/String;)V

    .line 1146
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v7

    .line 1147
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v13

    .line 1148
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1149
    const/4 v4, 0x0

    move v5, v4

    :goto_685
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_843

    .line 1150
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1151
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_69c

    .line 1152
    const-string v6, "   \u00b7   "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    :cond_69c
    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7d2

    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    move-object v12, v6

    .line 1155
    :goto_6a7
    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v6, :cond_6af

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-gtz v6, :cond_7f4

    .line 1156
    :cond_6af
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v4, :cond_7f0

    const-string v4, " \u2298"

    :goto_6b9
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    :goto_6bc
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_685

    .line 1109
    :cond_6c0
    const/4 v4, 0x0

    goto/16 :goto_50a

    .line 1111
    :cond_6c3
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRemainingS()D

    move-result-wide v4

    goto/16 :goto_530

    .line 1115
    :cond_6c9
    const-string v4, ""

    goto/16 :goto_5c4

    .line 1119
    :cond_6cd
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_5d8

    .line 1122
    :cond_6d1
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_6ff

    .line 1123
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPause:Landroid/widget/TextView;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPauseLabel:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u041e\u0442\u043a\u0430\u0437"

    const-string v9, "Cancel"

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/ai/AutoUi;->styleKey(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_5f3

    .line 1124
    :cond_6ff
    if-eqz v14, :cond_75a

    .line 1125
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startReady()Z

    move-result v9

    .line 1126
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v7

    .line 1127
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPause:Landroid/widget/TextView;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPauseLabel:Landroid/widget/TextView;

    const-string v6, "\u25b6"

    if-eqz v9, :cond_72e

    if-eqz v23, :cond_725

    const-string v7, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v10, "Recovery"

    invoke-static {v7, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1129
    :goto_71f
    const/4 v10, 0x1

    .line 1127
    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/ai/AutoUi;->styleKey(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_5f3

    .line 1128
    :cond_725
    const-string v7, "\u0421\u0442\u0430\u0440\u0442"

    const-string v10, "Start"

    invoke-static {v7, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_71f

    :cond_72e
    if-lez v7, :cond_751

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u0441\u043b\u0435\u0434 "

    const-string v15, "in "

    invoke-static {v12, v15}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    int-to-double v0, v7

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_71f

    .line 1129
    :cond_751
    const-string v7, "\u043f\u0443\u043b\u0441\u044a\u0442"

    const-string v10, "HR"

    invoke-static {v7, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_71f

    .line 1130
    :cond_75a
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v4

    if-eqz v4, :cond_775

    .line 1131
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPause:Landroid/widget/TextView;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPauseLabel:Landroid/widget/TextView;

    const-string v6, "\u25b6"

    const-string v7, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v9, "Resume"

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/ai/AutoUi;->styleKey(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_5f3

    .line 1133
    :cond_775
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPause:Landroid/widget/TextView;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPauseLabel:Landroid/widget/TextView;

    const-string v6, "\u2665"

    const-string v7, "\u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u0430"

    const-string v8, "HR coming down"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/ai/AutoUi;->styleKey(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_5f3

    .line 1135
    :cond_78c
    const/4 v9, 0x0

    goto/16 :goto_600

    .line 1137
    :cond_78f
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v7

    if-eqz v7, :cond_7a5

    const-string v7, "\u041a\u0440\u0430\u0439 \u043d\u0430 \u0441\u0435\u0440\u0438\u044f\u0442\u0430"

    const-string v8, "End the set"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_610

    .line 1138
    :cond_7a5
    const-string v7, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449\u0430 \u0444\u0430\u0437\u0430"

    const-string v8, "Next phase"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_610

    .line 1140
    :cond_7af
    const-string v7, "\u041a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v8, "To recovery"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_628

    .line 1142
    :cond_7b9
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_640

    :cond_7c7
    const-string v4, ""

    goto/16 :goto_640

    .line 1143
    :cond_7cb
    const/4 v4, 0x1

    goto/16 :goto_662

    :cond_7ce
    const-string v4, ""

    goto/16 :goto_66b

    .line 1154
    :cond_7d2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0423\u0447\u0430\u0441\u0442\u043d\u0438\u043a "

    const-string v9, "Participant "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    goto/16 :goto_6a7

    .line 1156
    :cond_7f0
    const-string v4, " \u2014"

    goto/16 :goto_6b9

    .line 1159
    :cond_7f4
    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v6, :cond_83e

    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1160
    :goto_7fa
    if-eqz v7, :cond_841

    iget v8, v4, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v0, v8

    move-wide/from16 v22, v0

    iget-wide v8, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v10, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    move-object/from16 v6, v18

    invoke-virtual/range {v6 .. v11}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D

    move-result-wide v8

    mul-double v8, v8, v22

    const-wide v10, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 1161
    :goto_818
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " \u00b7 \u0434\u043e "

    const-string v9, " \u00b7 up to "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_6bc

    :cond_83e
    move-object/from16 v6, v16

    .line 1159
    goto :goto_7fa

    .line 1160
    :cond_841
    const/4 v6, 0x0

    goto :goto_818

    .line 1163
    :cond_843
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runRows:Landroid/widget/TextView;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v5

    .line 1165
    if-eqz v5, :cond_8ae

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8ae

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeMs()J

    move-result-wide v6

    sub-long v6, v20, v6

    const-wide/16 v8, 0x2ee0

    cmp-long v4, v6, v8

    if-gez v4, :cond_8ae

    const/4 v4, 0x1

    .line 1166
    :goto_865
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    if-eqz v4, :cond_8b0

    :goto_869
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    if-eqz v4, :cond_8b3

    const/4 v4, 0x0

    :goto_871
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1168
    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseAvailable()Z

    move-result v4

    .line 1169
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runDouble:Landroid/widget/TextView;

    if-eqz v4, :cond_8b6

    const/4 v4, 0x0

    :goto_87d
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1170
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runDouble:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2\u00d7 \u0438\u043c\u043f\u0443\u043b\u0441: "

    const-string v7, "2\u00d7 impulse: "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseOn()Z

    move-result v4

    if-eqz v4, :cond_8b9

    .line 1171
    const-string v4, "\u0432\u043a\u043b."

    const-string v7, "on"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_8a1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1170
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1165
    :cond_8ae
    const/4 v4, 0x0

    goto :goto_865

    .line 1166
    :cond_8b0
    const-string v5, ""

    goto :goto_869

    .line 1167
    :cond_8b3
    const/16 v4, 0x8

    goto :goto_871

    .line 1169
    :cond_8b6
    const/16 v4, 0x8

    goto :goto_87d

    .line 1171
    :cond_8b9
    const-string v4, "\u0438\u0437\u043a\u043b."

    const-string v7, "off"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8a1

    :cond_8c2
    move-object v4, v7

    goto/16 :goto_10e
.end method

.method private static screenCalib(Landroid/content/Context;)V
    .registers 14

    .prologue
    .line 756
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    .line 757
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    const-string v2, "\u0421\u0438\u043b\u0430"

    const-string v3, "Strength"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0414\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435 "

    const-string v3, "Up to a feeling of "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 759
    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    iget v3, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    if-le v0, v3, :cond_7b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2013"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043e\u0442 10 \u00b7 "

    const-string v3, " of 10 \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoUi;->cr10Text(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->subtitle(Ljava/lang/String;)V

    .line 760
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 761
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    if-nez v0, :cond_7e

    .line 762
    const-string v0, "\u25b6 \u041f\u0443\u0441\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435"

    const-string v1, "\u25b6 Start the pulses"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->footer(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 802
    :goto_7a
    return-void

    .line 759
    :cond_7b
    const-string v0, ""

    goto :goto_45

    .line 765
    :cond_7e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v4

    .line 766
    const/4 v0, 0x0

    move v1, v0

    :goto_84
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1cb

    .line 767
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 768
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 769
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 770
    const/16 v2, 0x10

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 771
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_104

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    :goto_a7
    const/high16 v7, 0x41800000    # 16.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v9, 0x1

    invoke-static {p0, v2, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    const-string v2, ""

    const/high16 v7, 0x41b00000    # 22.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v9, 0x1

    invoke-static {p0, v2, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 774
    sget-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v7, :cond_120

    .line 776
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 777
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2298 "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/4 v7, 0x1

    invoke-static {p0, v0, v2, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 796
    :goto_f7
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_84

    .line 771
    :cond_104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0423\u0447\u0430\u0441\u0442\u043d\u0438\u043a "

    const-string v8, "Participant "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a7

    .line 780
    :cond_120
    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_1f0

    .line 781
    const/4 v0, 0x0

    :goto_127
    array-length v8, v7

    if-ge v0, v8, :cond_16b

    .line 782
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u2212"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v7, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {p0, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v8

    .line 783
    new-instance v9, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v10, 0x15

    mul-int/lit8 v11, v1, 0x64

    aget v12, v7, v0

    add-int/lit8 v12, v12, 0x32

    add-int/2addr v11, v12

    invoke-direct {v9, v10, v11}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42900000    # 72.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    add-int/lit8 v0, v0, 0x1

    goto :goto_127

    .line 786
    :cond_16b
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 787
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42a00000    # 80.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, -0x2

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    const/4 v0, 0x2

    new-array v2, v0, [I

    fill-array-data v2, :array_1f8

    .line 789
    const/4 v0, 0x0

    :goto_186
    array-length v7, v2

    if-ge v0, v7, :cond_1c6

    .line 790
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {p0, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v7

    .line 791
    new-instance v8, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v9, 0x15

    mul-int/lit8 v10, v1, 0x64

    aget v11, v2, v0

    add-int/lit8 v11, v11, 0x32

    add-int/2addr v10, v11

    invoke-direct {v8, v9, v10}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42900000    # 72.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_186

    .line 794
    :cond_1c6
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_f7

    .line 798
    :cond_1cb
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->hint(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibRowsInfo:Landroid/widget/TextView;

    .line 799
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibRowsInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    const-string v0, "\u0421\u0442\u0430\u0440\u0442"

    const-string v1, "Start"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->footer(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 801
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshCalib()V

    goto/16 :goto_7a

    .line 780
    nop

    :array_1f0
    .array-data 4
        -0x5
        -0x1
    .end array-data

    .line 788
    :array_1f8
    .array-data 4
        0x1
        0x5
    .end array-data
.end method

.method private static screenClient(Landroid/content/Context;)V
    .registers 14

    .prologue
    .line 480
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v2

    .line 481
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    .line 482
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_32d

    .line 483
    :cond_2b
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v4, "Client"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    :goto_33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    if-eqz v3, :cond_33c

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->subtitle(Ljava/lang/String;)V

    .line 485
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 486
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlocker()Ljava/lang/String;

    move-result-object v5

    .line 487
    if-nez v5, :cond_4c

    .line 488
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 492
    :cond_4c
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->profileOpen:Z

    if-eqz v0, :cond_346

    .line 493
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 494
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "\u0416\u0435\u043d\u0430"

    const-string v8, "Female"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x1

    const-string v7, "\u041c\u044a\u0436"

    const-string v8, "Male"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 495
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v7, :cond_33f

    const/4 v0, 0x0

    :goto_74
    new-instance v7, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 494
    invoke-static {p0, v6, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 496
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 497
    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v7, "Age"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u0433."

    const-string v9, "y"

    .line 498
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x41a00000    # 20.0f

    new-instance v10, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v11, 0x9

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v7

    iget-object v7, v7, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 497
    invoke-static {p0, v0, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 498
    invoke-static {v7, v8, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 497
    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    const-string v0, "\u0422\u0435\u0433\u043b\u043e"

    const-string v7, "Weight"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 500
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "kg"

    const/high16 v9, 0x41a00000    # 20.0f

    new-instance v10, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v7

    iget-object v7, v7, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 499
    invoke-static {p0, v0, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0xa

    .line 500
    invoke-static {v7, v8, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 499
    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    const-string v0, "\u0420\u044a\u0441\u0442"

    const-string v7, "Height"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 502
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-lez v0, :cond_342

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12d
    const-string v8, "cm"

    const/high16 v9, 0x41a00000    # 20.0f

    new-instance v10, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v11, 0xb

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, v0, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 501
    invoke-static {p0, v7, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0xa

    .line 503
    invoke-static {v7, v8, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 501
    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "\u041d\u0438\u0441\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v8, "Low fitness"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "\u0421\u0440\u0435\u0434\u043d\u0430"

    const-string v8, "Medium"

    .line 506
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "\u0412\u0438\u0441\u043e\u043a\u0430"

    const-string v8, "High"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    iget-object v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->ordinal()I

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 505
    invoke-static {p0, v0, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v6, 0xa

    .line 507
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 505
    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    :goto_19e
    if-eqz v3, :cond_22e

    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksPostpartum:Z

    if-eqz v0, :cond_22e

    .line 527
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 528
    const-string v1, "\u0421\u0435\u0434\u043c\u0438\u0446\u0438 \u0441\u043b\u0435\u0434 \u0440\u0430\u0436\u0434\u0430\u043d\u0435\u0442\u043e"

    const-string v6, "Weeks since birth"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u0441\u0435\u0434\u043c."

    const-string v8, "wk"

    .line 529
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41a00000    # 20.0f

    new-instance v9, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v10, 0xf

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 528
    invoke-static {p0, v1, v6}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 530
    const-string v1, "\u0426\u0435\u0437\u0430\u0440\u043e\u0432\u043e \u0441\u0435\u0447\u0435\u043d\u0438\u0435"

    const-string v6, "Cesarean section"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    const/4 v8, 0x1

    invoke-static {p0, v1, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 531
    const-string v1, "\u041a\u044a\u0440\u043c\u0438"

    const-string v6, "Breastfeeding"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    const/4 v8, 0x2

    invoke-static {p0, v1, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 532
    const-string v1, "\u0414\u0438\u0430\u0441\u0442\u0430\u0437\u0430 (\u2265 2 \u043f\u0440\u044a\u0441\u0442\u0430)"

    const-string v6, "Diastasis (\u2265 2 fingers)"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    const/4 v8, 0x3

    invoke-static {p0, v1, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    :cond_22e
    if-eqz v3, :cond_2d4

    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    if-eqz v0, :cond_2d4

    .line 536
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 537
    const-string v1, "\u0413\u0440\u044a\u0431: \u0438\u043c\u0430 \u043b\u0438 \u043d\u044f\u043a\u043e\u0435 \u043e\u0442 \u0442\u0435\u0437\u0438?"

    const-string v3, "Back: any of these?"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 538
    const-string v1, "\u041e\u0441\u0442\u0440\u0430 \u0431\u043e\u043b\u043a\u0430 (\u043f\u043e\u0434 6 \u0441\u0435\u0434\u043c\u0438\u0446\u0438)"

    const-string v3, "Acute pain (under 6 weeks)"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backAcute:Z

    const/16 v7, 0xa

    invoke-static {p0, v1, v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 539
    const-string v1, "\u0411\u043e\u043b\u043a\u0430 \u043a\u044a\u043c \u043a\u0440\u0430\u043a\u0430, \u0438\u0437\u0442\u0440\u044a\u043f\u0432\u0430\u043d\u0435, \u0441\u043b\u0430\u0431\u043e\u0441\u0442"

    const-string v3, "Pain down the leg, numbness, weakness"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backRadiating:Z

    const/16 v7, 0xb

    invoke-static {p0, v1, v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 540
    const-string v1, "\u0421\u043a\u043e\u0440\u043e\u0448\u043d\u0430 \u0442\u0440\u0430\u0432\u043c\u0430"

    const-string v3, "Recent trauma"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backTrauma:Z

    const/16 v7, 0xc

    invoke-static {p0, v1, v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    const-string v1, "\u041e\u043f\u0435\u0440\u0430\u0446\u0438\u044f \u043d\u0430 \u0433\u0440\u044a\u0431\u043d\u0430\u0447\u043d\u0438\u044f \u0441\u0442\u044a\u043b\u0431"

    const-string v3, "Spinal surgery"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backSurgery:Z

    const/16 v7, 0xd

    invoke-static {p0, v1, v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    const-string v1, "\u041d\u043e\u0449\u043d\u0430 \u0431\u043e\u043b\u043a\u0430 \u0438\u043b\u0438 \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430"

    const-string v3, "Night pain or fever"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backNightPainFever:Z

    const/16 v7, 0xe

    invoke-static {p0, v1, v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 543
    const-string v1, "\u041f\u0440\u043e\u0431\u043b\u0435\u043c \u0441 \u0443\u0440\u0438\u043d\u0438\u0440\u0430\u043d\u0435\u0442\u043e"

    const-string v3, "Bladder problem"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backBladder:Z

    const/16 v7, 0xf

    invoke-static {p0, v1, v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 544
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    :cond_2d4
    if-nez v5, :cond_427

    .line 549
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlock(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 555
    :goto_2d9
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 556
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 557
    const-string v0, "\u0414\u043d\u0435\u0441"

    const-string v1, "Today"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x1

    invoke-static {p0, v0, v1, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 558
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v6, 0x0

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 559
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 560
    const/4 v0, 0x0

    :goto_308
    sget-object v1, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_48a

    .line 561
    sget-object v1, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    aget-object v6, v1, v0

    .line 562
    const-string v1, "t_period"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43f

    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v7, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    iget-object v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-static {v1, v7, v8}, Lcom/isaigu/gymapp/ai/AiPersonal;->periodApplies(Lcom/isaigu/gymapp/ai/AiModel$Sex;ILjava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_43f

    .line 563
    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 560
    :goto_32a
    add-int/lit8 v0, v0, 0x1

    goto :goto_308

    .line 483
    :cond_32d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    goto/16 :goto_33

    .line 484
    :cond_33c
    const/4 v0, 0x0

    goto/16 :goto_3c

    .line 495
    :cond_33f
    const/4 v0, 0x1

    goto/16 :goto_74

    .line 502
    :cond_342
    const-string v0, "\u2014"

    goto/16 :goto_12d

    .line 510
    :cond_346
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 511
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 512
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_403

    const-string v0, "\u043d\u0438\u0441\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "low fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    :goto_35d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v8, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v8, :cond_41d

    const-string v1, "\u0416\u0435\u043d\u0430"

    const-string v8, "Female"

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_370
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \u00b7 "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \u0433."

    const-string v8, " y"

    .line 516
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \u00b7 "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " kg \u00b7 "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " cm \u00b7 "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v8, 0x0

    .line 515
    invoke-static {p0, v0, v1, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u270e  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u041f\u0440\u043e\u043c\u0435\u043d\u0438"

    const-string v7, "Edit"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 520
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v7, 0x1d

    const/4 v8, 0x0

    invoke-direct {v1, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 522
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_19e

    .line 513
    :cond_403
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_413

    const-string v0, "\u0432\u0438\u0441\u043e\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "high fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_35d

    .line 514
    :cond_413
    const-string v0, "\u0441\u0440\u0435\u0434\u043d\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "medium fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_35d

    .line 515
    :cond_41d
    const-string v1, "\u041c\u044a\u0436"

    const-string v8, "Male"

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_370

    .line 551
    :cond_427
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_43c

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_42d
    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/ai/AutoUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2d9

    :cond_43c
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    goto :goto_42d

    .line 566
    :cond_43f
    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 567
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_487

    const-string v1, "\u2713 "

    :goto_44e
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiPersonal;->todayName(Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v1, v7, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 568
    new-instance v6, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v7, 0x26

    invoke-direct {v6, v7, v0}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 570
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 572
    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 573
    invoke-virtual {v3, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_32a

    .line 567
    :cond_487
    const-string v1, ""

    goto :goto_44e

    .line 575
    :cond_48a
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 576
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 577
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 578
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    if-nez v5, :cond_4b2

    const/4 v0, 0x1

    .line 581
    :goto_4a2
    const-string v1, "\u041a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430  \u203a"

    const-string v2, "To strength  \u203a"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->footer(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 582
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->enable(Z)V

    .line 583
    return-void

    .line 580
    :cond_4b2
    const/4 v0, 0x0

    goto :goto_4a2
.end method

.method private static screenProgram(Landroid/content/Context;)V
    .registers 18

    .prologue
    .line 382
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v11

    .line 383
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    const-string v2, "\u041a\u0430\u043a\u0432\u043e \u043f\u0440\u0430\u0432\u0438\u043c \u0434\u043d\u0435\u0441?"

    const-string v3, "What are we doing today?"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoUi;->subtitle(Ljava/lang/String;)V

    .line 385
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v12, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 386
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v3

    .line 387
    array-length v1, v3

    new-array v4, v1, [Ljava/lang/String;

    .line 388
    const/4 v2, 0x0

    .line 389
    const/4 v1, 0x0

    :goto_24
    array-length v5, v3

    if-ge v1, v5, :cond_39

    .line 390
    aget-object v5, v3, v1

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 391
    aget-object v5, v3, v1

    iget-object v6, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne v5, v6, :cond_36

    move v2, v1

    .line 389
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 395
    :cond_39
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    move-object/from16 v0, p0

    invoke-static {v0, v4, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v1, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fe

    iget-object v1, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fe

    const/4 v1, 0x1

    .line 398
    :goto_6d
    if-eqz v1, :cond_a7

    .line 399
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "\u0421 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    const-string v4, "With movement"

    .line 400
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "\u041f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v4, "Procedure at rest"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 401
    iget-object v1, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v1, v3, :cond_101

    const/4 v1, 0x0

    :goto_8f
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 399
    move-object/from16 v0, p0

    invoke-static {v0, v2, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0xa

    .line 401
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 399
    invoke-virtual {v12, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    :cond_a7
    iget-object v1, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v13

    .line 405
    iget-object v1, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v1, v2, v11}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v14

    .line 406
    iget-object v1, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_ce

    invoke-interface {v13, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v3, 0x0

    invoke-static {v1, v2, v11, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_db

    .line 408
    :cond_ce
    iget-object v1, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v2, 0x0

    invoke-static {v14, v1, v11, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_103

    iget-object v1, v14, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    :goto_d9
    iput-object v1, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 410
    :cond_db
    const/4 v9, 0x0

    .line 411
    const/4 v8, 0x0

    .line 412
    const/4 v1, 0x0

    move v10, v1

    :goto_df
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_252

    .line 413
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 414
    iget-object v1, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v2, 0x0

    invoke-static {v7, v1, v11, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v2

    .line 415
    if-eqz v2, :cond_105

    .line 417
    if-nez v9, :cond_2f1

    move v1, v8

    .line 412
    :goto_f8
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move v8, v1

    move-object v9, v2

    goto :goto_df

    .line 397
    :cond_fe
    const/4 v1, 0x0

    goto/16 :goto_6d

    .line 401
    :cond_101
    const/4 v1, 0x1

    goto :goto_8f

    .line 408
    :cond_103
    const/4 v1, 0x0

    goto :goto_d9

    .line 422
    :cond_105
    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 423
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v15

    .line 424
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 425
    const/16 v1, 0x10

    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 426
    if-eqz v4, :cond_242

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->goalColor(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)I

    move-result v2

    const v3, 0x3e3851ec    # 0.18f

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v1

    :goto_12b
    const/high16 v2, 0x41800000    # 16.0f

    .line 427
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v5, v2

    if-eqz v4, :cond_246

    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->goalColor(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)I

    move-result v2

    move v3, v2

    :goto_13d
    if-eqz v4, :cond_24b

    const/high16 v2, 0x40000000    # 2.0f

    :goto_141
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 426
    invoke-static {v1, v5, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 431
    const/high16 v1, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    move-object/from16 v0, v16

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 432
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v3

    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const/16 v5, 0x80

    const/16 v6, 0x60

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/ProgramArt;->tile(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;II)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 434
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 436
    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-direct {v4, v5, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    if-ne v7, v14, :cond_1c0

    .line 439
    const-string v3, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0430\u043d\u0430"

    const-string v4, "Recommended"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    :cond_1c0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v7, v4, v11}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u043c\u0438\u043d"

    const-string v5, " min"

    .line 442
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    .line 441
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 444
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->desc()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 446
    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 447
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 448
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v10}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    invoke-static {v15}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 450
    if-nez v8, :cond_24f

    const/16 v1, 0xe

    :goto_234
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    add-int/lit8 v1, v8, 0x1

    move-object v2, v9

    goto/16 :goto_f8

    .line 426
    :cond_242
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    goto/16 :goto_12b

    .line 427
    :cond_246
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    move v3, v2

    goto/16 :goto_13d

    :cond_24b
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_141

    .line 450
    :cond_24f
    const/16 v1, 0xa

    goto :goto_234

    .line 453
    :cond_252
    if-nez v8, :cond_269

    .line 454
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    if-eqz v9, :cond_2dc

    :goto_258
    move-object/from16 v0, p0

    invoke-static {v0, v1, v9}, Lcom/isaigu/gymapp/ai/AutoUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xe

    .line 455
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 454
    invoke-virtual {v12, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    :cond_269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0423\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430: "

    const-string v3, "Operated by: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v1

    if-eqz v1, :cond_2e6

    .line 459
    const-string v1, "\u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0441\u0430\u043c \u00b7 \u0441\u043c\u0435\u043d\u0438"

    const-string v3, "the client alone \u00b7 change"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    :goto_288
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v4, 0x0

    .line 458
    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 461
    const/4 v2, 0x0

    const/high16 v3, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 462
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    const-string v1, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v2, "Next"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->footer(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 465
    iget-object v1, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    if-eqz v1, :cond_2ef

    const/4 v1, 0x1

    :goto_2d8
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoUi;->enable(Z)V

    .line 466
    return-void

    .line 455
    :cond_2dc
    const-string v2, "\u041d\u044f\u043c\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u0442\u043e\u0437\u0438 \u0438\u0437\u0431\u043e\u0440."

    const-string v3, "No program for this choice."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_258

    .line 460
    :cond_2e6
    const-string v1, "\u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u00b7 \u0441\u043c\u0435\u043d\u0438"

    const-string v3, "trainer \u00b7 change"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_288

    .line 465
    :cond_2ef
    const/4 v1, 0x0

    goto :goto_2d8

    :cond_2f1
    move v1, v8

    move-object v2, v9

    goto/16 :goto_f8
.end method

.method private static screenRun(Landroid/content/Context;)V
    .registers 14

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 839
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    .line 840
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    const-string v0, ""

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->subtitle(Ljava/lang/String;)V

    .line 842
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 845
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 846
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 847
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 848
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 849
    new-instance v4, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 850
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v11, v11}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 851
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 853
    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 854
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 855
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v3, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    .line 857
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x437a0000    # 250.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x437a0000    # 250.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    const-string v3, ""

    const/high16 v4, 0x41a80000    # 21.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v3, v4, v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    .line 861
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 862
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 863
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v4, v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    .line 865
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 866
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43aa0000    # 340.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v8, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 870
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 871
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 872
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 875
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 876
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    sput-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHrBox:Landroid/widget/LinearLayout;

    .line 877
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHrBox:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 878
    const-string v5, ""

    const/high16 v6, 0x41f00000    # 30.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v5, v6, v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    sput-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHrBig:Landroid/widget/TextView;

    .line 879
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHrBig:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 880
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHrBox:Landroid/widget/LinearLayout;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runHrBig:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 881
    const-string v5, ""

    const/high16 v6, 0x41400000    # 12.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v5, v6, v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    sput-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHrSmall:Landroid/widget/TextView;

    .line 882
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHrSmall:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 883
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHrBox:Landroid/widget/LinearLayout;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runHrSmall:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 884
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHrBox:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    new-instance v5, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    .line 887
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42380000    # 46.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v7, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    const-string v5, ""

    const/high16 v6, 0x41400000    # 12.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v5, v6, v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    sput-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPeakWho:Landroid/widget/TextView;

    .line 889
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPeakWho:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 890
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPeakWho:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 891
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42d00000    # 104.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 892
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 893
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43aa0000    # 340.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const v5, 0x3faccccd    # 1.35f

    invoke-direct {v3, v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 897
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 899
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->hint(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    .line 900
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 904
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 905
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    .line 906
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42e00000    # 112.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 908
    const-string v4, ""

    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v5, v6, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    .line 909
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v8, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
    const-string v4, ""

    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v5, v6, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runHr:Landroid/widget/TextView;

    .line 911
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runHr:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 912
    const/4 v4, 0x6

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v8, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 916
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 917
    const/16 v3, 0x16

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->neon(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runPause:Landroid/widget/TextView;

    .line 918
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runPause:Landroid/widget/TextView;

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->dockKey(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runPauseLabel:Landroid/widget/TextView;

    .line 919
    const/16 v3, 0x27

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->neon(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runNext:Landroid/widget/TextView;

    .line 920
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runNext:Landroid/widget/TextView;

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->dockKey(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runNextLabel:Landroid/widget/TextView;

    .line 921
    const/16 v3, 0x1b

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->neon(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runStop:Landroid/widget/TextView;

    .line 922
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runStop:Landroid/widget/TextView;

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->dockKey(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runStopLabel:Landroid/widget/TextView;

    .line 923
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43a50000    # 330.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 924
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 925
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 930
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 931
    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v2, v3, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runRows:Landroid/widget/TextView;

    .line 932
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runRows:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 933
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runRows:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v8, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    const-string v2, "\u2212 10 %"

    invoke-static {p0, v2, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 935
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v4, 0x17

    invoke-direct {v3, v4, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v3, v4, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 937
    const-string v2, "+ 5 %"

    invoke-static {p0, v2, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 938
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v4, 0x18

    invoke-direct {v3, v4, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v3, v4, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    const-string v2, ""

    invoke-static {p0, v2, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runDouble:Landroid/widget/TextView;

    .line 941
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runDouble:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v4, 0x19

    invoke-direct {v3, v4, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runDouble:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v3, v4, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    const-string v0, "\u0421\u043a\u0440\u0438\u0439"

    const-string v1, "Hide"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 946
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x21

    invoke-direct {v1, v2, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 948
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 949
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->tipsToggle(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 950
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V

    .line 951
    return-void
.end method

.method static show()V
    .registers 1

    .prologue
    .line 154
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 163
    :cond_e
    :goto_e
    return-void

    .line 157
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_e

    .line 159
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->open(Landroid/app/Activity;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_e

    .line 161
    :catch_1d
    move-exception v0

    goto :goto_e
.end method

.method private static show(Landroid/app/Activity;I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 167
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_49

    .line 168
    :cond_12
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 169
    const-string v0, ""

    const-string v1, ""

    const/16 v2, 0x49c

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 170
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x25

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 173
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 175
    :cond_49
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    .line 176
    return-void
.end method

.method static startLabel(Lcom/isaigu/gymapp/ai/AutoEngine;J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 1177
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_82

    .line 1178
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "recovery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    :goto_16
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v1

    .line 1181
    if-lez v1, :cond_44

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u25b6 \u0421\u0442\u0430\u0440\u0442 \u0441\u043b\u0435\u0434 "

    const-string v3, "\u25b6 Start in "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-double v2, v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    :goto_3a
    return-object v0

    .line 1179
    :cond_3b
    const-string v0, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430 \u0441\u0435\u0440\u0438\u044f"

    const-string v1, "next set"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1184
    :cond_44
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestHrHigh(J)Z

    move-result v1

    if-eqz v1, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u25b6 \u0421\u0442\u0430\u0440\u0442 \u00b7 \u0447\u0430\u043a\u0430 \u043f\u0443\u043b\u0441\u0430 \u2264 "

    const-string v2, "\u25b6 Start \u00b7 waits for HR \u2264 "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestHrLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 1185
    :cond_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u25b6 \u0421\u0442\u0430\u0440\u0442 \u00b7 "

    const-string v3, "\u25b6 Start \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 1187
    :cond_82
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_a4

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCountdownLeftS(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2026  (\u043e\u0442\u043a\u0430\u0437)"

    const-string v2, " \u2026  (cancel)"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 1190
    :cond_a4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1191
    const-string v0, "\u25b6 \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v1, "\u25b6 Resume"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 1193
    :cond_b3
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_c1

    const-string v0, "\u2026 \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u0430"

    const-string v1, "\u2026 HR coming down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    .line 1194
    :cond_c1
    const-string v0, "\u275a\u275a \u041f\u0430\u0443\u0437\u0430"

    const-string v1, "\u275a\u275a Pause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a
.end method

.method public static status()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1467
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 1468
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 1469
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_45

    if-eqz v1, :cond_45

    .line 1470
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 1471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u25cf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_42

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRemainingS()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1476
    :goto_41
    return-object v0

    .line 1471
    :cond_42
    const-string v0, ""

    goto :goto_27

    .line 1473
    :cond_45
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_52

    .line 1474
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v1, "Ready programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 1476
    :cond_52
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_5f

    const-string v0, "\u041e\u0442\u0447\u0435\u0442"

    const-string v1, "Report"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_5f
    const-string v0, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430"

    const-string v1, "Setting up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_41
.end method

.method private static stepTip(Landroid/content/Context;I)V
    .registers 10

    .prologue
    const v7, -0xbd5a0b

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v5, 0x0

    .line 268
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTipText(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_10

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    if-nez v1, :cond_11

    .line 278
    :cond_10
    :goto_10
    return-void

    .line 272
    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 273
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v3, 0x3e23d70a    # 0.16f

    invoke-static {v2, v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 274
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 273
    invoke-static {v2, v3, v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v6, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x25

    invoke-direct {v0, v2, v5}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10
.end method

.method private static stepTipText(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 281
    packed-switch p0, :pswitch_data_2a

    .line 299
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 283
    :pswitch_5
    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u0432\u0430\u0442 \u0441\u0435 \u0441\u0430\u043c\u043e \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435, \u043f\u043e\u0437\u0432\u043e\u043b\u0435\u043d\u0438 \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442. \u201e\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0430\u043d\u0430\u201c \u0435 \u043f\u043e \u043f\u0440\u043e\u0444\u0438\u043b\u0430."

    const-string v1, "Only the programs allowed for this client are shown. \u201cRecommended\u201d follows the profile."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 286
    :pswitch_e
    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044a\u0442 \u0435 \u043e\u0442 \u043a\u043b\u0438\u0435\u043d\u0442\u0441\u043a\u0438\u044f \u0437\u0430\u043f\u0438\u0441, \u043f\u043b\u0430\u043d\u044a\u0442 \u0441\u0435 \u0441\u043c\u044f\u0442\u0430 \u043e\u0442 \u043d\u0435\u0433\u043e. \u041c\u043e\u0436\u0435 \u0434\u0430 \u0441\u043a\u044a\u0441\u0438\u0448 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u0438 \u0434\u0430 \u0441\u043c\u0435\u043d\u0438\u0448 \u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442\u0430, \u043d\u0435 \u0438 \u0434\u0430 \u043c\u0438\u043d\u0435\u0448 \u043b\u0438\u043c\u0438\u0442\u0438\u0442\u0435. \u201e\u0414\u043d\u0435\u0441\u201c \u2014 \u043a\u0430\u043a \u0435 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0441\u0435\u0433\u0430 (\u043d\u0435\u0434\u043e\u0441\u043f\u0430\u043b, \u0441\u0442\u0440\u0435\u0441, \u0446\u0438\u043a\u044a\u043b\u2026): \u043d\u0435 \u0441\u043f\u0438\u0440\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430, \u043f\u043b\u0430\u043d\u044a\u0442 \u0441\u0435 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u0441\u0430\u043c."

    const-string v1, "The profile comes from the client record and the plan from the profile. You may shorten the time and change the intensity, not pass the limits. \u201cToday\u201d \u2014 how the client is now (short on sleep, stress, period\u2026): it never stops the session, the plan adapts by itself."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 293
    :pswitch_17
    const-string v0, "\u041a\u0430\u0447\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442 \u0434\u043e \u0446\u0435\u043b\u0435\u0432\u043e\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435. \u201e\u0421\u0442\u0430\u0440\u0442\u201c \u0437\u0430\u043f\u043e\u0447\u0432\u0430 \u043e\u0442 \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430\u0442\u0430 \u0441 60 % \u043e\u0442 \u043d\u0435\u044f."

    const-string v1, "Raise each client\'s strength to the target feeling. Start begins with the warm-up at 60 % of it."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 296
    :pswitch_20
    const-string v0, "\u201e\u0421\u043a\u0440\u0438\u0439\u201c \u0438\u043b\u0438 \u2715 \u0441\u043a\u0440\u0438\u0432\u0430 \u0442\u0430\u0431\u043b\u043e\u0442\u043e \u2014 \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430. \u041b\u0438\u043c\u0438\u0442\u0438\u0442\u0435 \u0438 \u0437\u0430\u0449\u0438\u0442\u0438\u0442\u0435 \u0441\u0435 \u043f\u043e\u043a\u0430\u0437\u0432\u0430\u0442 \u0432\u0438\u043d\u0430\u0433\u0438."

    const-string v1, "Hide or \u2715 hides the board \u2014 the session goes on. Limits and safety always show."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 281
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_e
        :pswitch_17
        :pswitch_20
    .end packed-switch
.end method

.method private static styleKey(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 10

    .prologue
    .line 980
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 981
    if-eqz p6, :cond_f

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 982
    if-nez p6, :cond_12

    .line 999
    :goto_e
    return-void

    .line 981
    :cond_f
    const/16 v1, 0x8

    goto :goto_9

    .line 985
    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 986
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p4, :cond_61

    .line 987
    :cond_36
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 989
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 990
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 991
    const/16 v2, 0x1c

    invoke-static {p4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 992
    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 993
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 994
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 996
    :cond_61
    if-eqz p5, :cond_71

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_65
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 997
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    if-eqz p5, :cond_75

    :goto_6d
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    .line 996
    :cond_71
    const v0, 0x3ed70a3d    # 0.42f

    goto :goto_65

    .line 998
    :cond_75
    sget p4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_6d
.end method

.method private static subtitle(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1394
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1396
    return-void

    .line 1395
    :cond_18
    const/16 v0, 0x8

    goto :goto_14
.end method

.method private static tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 1427
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1428
    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1429
    const/high16 v1, 0x41980000    # 19.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x1

    invoke-static {p0, p3, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1430
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1431
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1432
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p4, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1433
    return-void
.end method

.method private static tipsToggle(Landroid/content/Context;)Landroid/view/View;
    .registers 7

    .prologue
    .line 304
    const-string v0, "\u041f\u043e\u0434\u0441\u043a\u0430\u0437\u043a\u0438"

    const-string v1, "Tips"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041f\u0440\u0438 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u043f\u043e\u043b\u0437\u0432\u0430\u043d\u0435 \u043d\u0430 \u0431\u0443\u0442\u043e\u043d\u0438\u0442\u0435 \u0438 \u043c\u0435\u043d\u044e\u0442\u0430\u0442\u0430. \u041b\u0438\u043c\u0438\u0442\u0438\u0442\u0435 \u0438 \u0437\u0430\u0449\u0438\u0442\u0438\u0442\u0435 \u0441\u0435 \u043f\u043e\u043a\u0430\u0437\u0432\u0430\u0442 \u0432\u0438\u043d\u0430\u0433\u0438."

    const-string v2, "On the first use of buttons and menus. Limits and safety always show."

    .line 305
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn()Z

    move-result v2

    new-instance v3, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 304
    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1460
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 1463
    :goto_8
    return-void

    .line 1461
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private static toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;
    .registers 7

    .prologue
    .line 1411
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p4}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private static zoneBars(Landroid/content/Context;Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Landroid/view/View;
    .registers 15

    .prologue
    .line 711
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 712
    const/16 v0, 0x50

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 713
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneNames()[Ljava/lang/String;

    move-result-object v3

    .line 714
    const/4 v0, 0x0

    :goto_e
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel;->DISPLAY_ORDER:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d5

    .line 715
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel;->DISPLAY_ORDER:[I

    aget v4, v1, v0

    .line 716
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 717
    const/16 v1, 0x51

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 718
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v6, v1, v4

    .line 719
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_c0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ud83d\udd12"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3d
    const/high16 v7, 0x41400000    # 12.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v9, 0x1

    invoke-static {p0, v1, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 720
    const/16 v7, 0x11

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 721
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 722
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 723
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 724
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v10, 0x3e800000    # 0.25f

    const/high16 v11, 0x3f400000    # 0.75f

    int-to-float v12, v6

    mul-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-static {v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 725
    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 726
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 727
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x40800000    # 4.0f

    mul-int/lit8 v6, v6, 0x46

    int-to-float v6, v6

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v6, v10

    add-float/2addr v6, v9

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 728
    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 729
    invoke-virtual {v5, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    aget-object v1, v3, v4

    const/high16 v4, 0x41300000    # 11.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {p0, v1, v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 731
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 732
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 733
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 719
    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 735
    :cond_d5
    return-object v2
.end method

.method static zoneNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 739
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 740
    const/4 v1, 0x3

    const-string v2, "\u041f\u0440\u0430\u0441\u0435\u0446"

    const-string v3, "Calf"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 741
    const/4 v1, 0x2

    const-string v2, "\u041f\u0440. \u0431\u0435\u0434\u0440\u043e"

    const-string v3, "Quads"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 742
    const/16 v1, 0x9

    const-string v2, "\u0417\u0430\u0434. \u0431\u0435\u0434\u0440\u043e"

    const-string v3, "Hamstr."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 743
    const/16 v1, 0x8

    const-string v2, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v3, "Glutes"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 744
    const/4 v1, 0x1

    const-string v2, "\u041a\u043e\u0440\u0435\u043c"

    const-string v3, "Abs"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 745
    const/4 v1, 0x7

    const-string v2, "\u041a\u0440\u044a\u0441\u0442"

    const-string v3, "Low back"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 746
    const/4 v1, 0x6

    const-string v2, "\u0413\u0440\u044a\u0431"

    const-string v3, "Back"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 747
    const/4 v1, 0x5

    const-string v2, "\u0422\u0440\u0430\u043f\u0435\u0446"

    const-string v3, "Traps"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 748
    const/4 v1, 0x0

    const-string v2, "\u0413\u044a\u0440\u0434\u0438"

    const-string v3, "Chest"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 749
    const/4 v1, 0x4

    const-string v2, "\u0420\u044a\u0446\u0435"

    const-string v3, "Arms"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 750
    return-object v0
.end method
