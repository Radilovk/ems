.class public final Lcom/isaigu/gymapp/ai/AutoUi;
.super Ljava/lang/Object;
.source "AutoUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoUi$Act;,
        Lcom/isaigu/gymapp/ai/AutoUi$ScrollTo;,
        Lcom/isaigu/gymapp/ai/AutoUi$StripTo;,
        Lcom/isaigu/gymapp/ai/AutoUi$InfoTap;
    }
.end annotation


# static fields
.field static final AUTO_TEAL:I = -0xd95966

.field private static final A_AGE:I = 0x9

.field private static final A_BACK:I = 0x3

.field private static final A_CALIB_ROW:I = 0x15

.field private static final A_CLOSE:I = 0x1

.field private static final A_CONTRA:I = 0xc

.field private static final A_DETAILS:I = 0x20

.field private static final A_DOUBLE:I = 0x13

.field private static final A_EDIT_PROFILE:I = 0x1d

.field private static final A_EXERCISES:I = 0x29

.field private static final A_EXTRA:I = 0xe

.field private static final A_FITNESS:I = 0x8

.field private static final A_GOAL:I = 0x4

.field private static final A_HEALTH_OPEN:I = 0x1f

.field private static final A_HEIGHT:I = 0xb

.field private static final A_HIDE:I = 0x21

.field private static final A_HOW:I = 0x28

.field private static final A_INFO:I = 0x25

.field private static final A_INTENSITY:I = 0x11

.field private static final A_KIND:I = 0x5

.field private static final A_MINUTES:I = 0x10

.field private static final A_NEXT:I = 0x2

.field private static final A_OPERATOR:I = 0x6

.field private static final A_PROGRAM:I = 0x7

.field private static final A_SEX:I = 0x1c

.field private static final A_STATE:I = 0x26

.field private static final A_TIPS:I = 0x24

.field private static final A_TODAY:I = 0xd

.field private static final A_VARIANT:I = 0x12

.field private static final A_WEEKS:I = 0xf

.field private static final A_WEIGHT:I = 0xa

.field private static final INFO_BOARD:I = 0x3

.field private static final INFO_BODY:I = 0x1

.field private static final INFO_SET:I = 0x0

.field private static final INFO_TIMELINE:I = 0x2

.field private static final NEXT_SOON_S:D = 10.0

.field private static final SETUP_STEPS:I = 0x3

.field static final STEP_CALIB:I = 0x2

.field static final STEP_CLIENT:I = 0x1

.field static final STEP_PROGRAM:I = 0x0

.field static final STEP_RUN:I = 0x3

.field private static boardSub:Landroid/widget/TextView;

.field private static calibRowsInfo:Landroid/widget/TextView;

.field private static calibStarted:Z

.field private static details:Z

.field private static healthOk:Z

.field private static healthOpen:Z

.field private static heightTouched:Z

.field private static host:Landroid/app/Activity;

.field private static howShownFor:Ljava/lang/String;

.field private static infoOpen:Z

.field private static infoPop:Landroid/widget/PopupWindow;

.field private static phasesShownFor:I

.field private static primary:Landroid/widget/TextView;

.field private static profileOpen:Z

.field private static programStrip:Landroid/widget/HorizontalScrollView;

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

.field private static runArrow:Landroid/widget/TextView;

.field private static runArt:Landroid/view/View;

.field private static runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

.field private static runClient:Landroid/widget/TextView;

.field private static runClock:Landroid/widget/TextView;

.field private static runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

.field private static runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

.field private static runFlash:Landroid/view/View;

.field private static runHow:Landroid/widget/LinearLayout;

.field private static runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

.field private static runNextRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

.field private static runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

.field private static runNotice:Landroid/widget/TextView;

.field private static runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

.field private static runPhase:Landroid/widget/TextView;

.field private static runPhases:Landroid/widget/LinearLayout;

.field private static runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

.field private static runStage:Landroid/view/View;

.field private static runTime:Landroid/widget/TextView;

.field private static runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

.field private static runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

.field private static shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private static step:I

.field private static stripX:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    const/4 v0, -0x2

    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->phasesShownFor:I

    .line 113
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 125
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

.method static synthetic access$100(Landroid/view/View;I)V
    .registers 2

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoUi;->showInfo(Landroid/view/View;I)V

    return-void
.end method

.method static action(III)V
    .registers 15

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1598
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v2

    .line 1599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1600
    packed-switch p0, :pswitch_data_24e

    .line 1737
    :goto_e
    :pswitch_e
    return-void

    .line 1602
    :pswitch_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_1b

    .line 1603
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_e

    .line 1605
    :cond_1b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 1606
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_e

    .line 1609
    :pswitch_22
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->next()V

    goto :goto_e

    .line 1610
    :pswitch_26
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->back()V

    goto :goto_e

    .line 1611
    :pswitch_2a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_e

    .line 1613
    :pswitch_2e
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1614
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v0

    aget-object v0, v0, p2

    .line 1615
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-eq v0, v3, :cond_54

    .line 1616
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 1617
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1618
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v3, :cond_61

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_50
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 1620
    :cond_52
    iput-object v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 1733
    :cond_54
    :goto_54
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-ne v0, v1, :cond_5b

    .line 1734
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 1736
    :cond_5b
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_e

    .line 1618
    :cond_61
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_50

    .line 1625
    :pswitch_64
    if-ne p2, v1, :cond_67

    move v0, v1

    :cond_67
    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    goto :goto_54

    .line 1628
    :pswitch_6a
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1629
    if-nez p2, :cond_75

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_70
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 1630
    iput-object v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_54

    .line 1629
    :cond_75
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_70

    .line 1633
    :pswitch_78
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v0

    if-eqz v0, :cond_83

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    :goto_80
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    goto :goto_54

    :cond_83
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    goto :goto_80

    .line 1635
    :pswitch_86
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->profileOpen:Z

    goto :goto_54

    .line 1636
    :pswitch_89
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->healthOpen:Z

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->healthOk:Z

    goto :goto_54

    .line 1637
    :pswitch_8e
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    if-nez v2, :cond_93

    move v0, v1

    :cond_93
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    goto :goto_54

    .line 1639
    :pswitch_96
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_a0

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    :cond_a0
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1640
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    .line 1641
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_54

    .line 1642
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_54

    .line 1646
    :pswitch_bb
    if-nez p2, :cond_c2

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_bf
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_54

    :cond_c2
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_bf

    .line 1647
    :pswitch_c5
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->values()[Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v0

    aget-object v0, v0, p2

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_54

    .line 1648
    :pswitch_ce
    const/16 v0, 0xe

    const/16 v3, 0x5f

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    add-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    goto/16 :goto_54

    .line 1649
    :pswitch_e1
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

    goto/16 :goto_54

    .line 1651
    :pswitch_fa
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_106

    const/16 v0, 0xaa

    :goto_100
    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 1652
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->heightTouched:Z

    goto/16 :goto_54

    .line 1651
    :cond_106
    const/16 v0, 0x78

    const/16 v3, 0xdc

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    add-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_100

    .line 1655
    :pswitch_116
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-ne p2, v1, :cond_121

    move v0, v1

    :cond_121
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_54

    .line 1658
    :pswitch_12a
    sget-object v3, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-object v0, v3, v0

    .line 1659
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 1660
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_54

    .line 1665
    :pswitch_14a
    if-ne p2, v1, :cond_14d

    move v0, v1

    .line 1666
    :cond_14d
    packed-switch p1, :pswitch_data_2a4

    .line 1671
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hydrated:Z

    goto/16 :goto_54

    .line 1667
    :pswitch_156
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->feverOrIllness:Z

    goto/16 :goto_54

    .line 1668
    :pswitch_15c
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->alcoholOrStress48h:Z

    goto/16 :goto_54

    .line 1669
    :pswitch_162
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    goto/16 :goto_54

    .line 1670
    :pswitch_168
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->ateLast2h:Z

    goto/16 :goto_54

    .line 1675
    :pswitch_16e
    if-ne p2, v1, :cond_171

    move v0, v1

    .line 1676
    :cond_171
    packed-switch p1, :pswitch_data_2b0

    .line 1685
    :pswitch_174
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backBladder:Z

    goto/16 :goto_54

    .line 1677
    :pswitch_17a
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    goto/16 :goto_54

    .line 1678
    :pswitch_180
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    goto/16 :goto_54

    .line 1679
    :pswitch_186
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    goto/16 :goto_54

    .line 1680
    :pswitch_18c
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backAcute:Z

    goto/16 :goto_54

    .line 1681
    :pswitch_192
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backRadiating:Z

    goto/16 :goto_54

    .line 1682
    :pswitch_198
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backTrauma:Z

    goto/16 :goto_54

    .line 1683
    :pswitch_19e
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backSurgery:Z

    goto/16 :goto_54

    .line 1684
    :pswitch_1a4
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backNightPainFever:Z

    goto/16 :goto_54

    .line 1689
    :pswitch_1aa
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

    goto/16 :goto_54

    .line 1691
    :pswitch_1bf
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    .line 1692
    if-eqz v0, :cond_1e1

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    .line 1693
    :goto_1c7
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

    .line 1694
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_54

    .line 1692
    :cond_1e1
    const/16 v0, 0x4b0

    goto :goto_1c7

    .line 1698
    :pswitch_1e4
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 1699
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_54

    .line 1702
    :pswitch_1f6
    iput p2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    .line 1703
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_54

    .line 1706
    :pswitch_1fd
    if-ne p2, v1, :cond_206

    :goto_1ff
    iput-boolean v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 1707
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_e

    :cond_206
    move v1, v0

    .line 1706
    goto :goto_1ff

    .line 1710
    :pswitch_208
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    if-nez v2, :cond_20d

    move v0, v1

    :cond_20d
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    goto/16 :goto_54

    .line 1713
    :pswitch_211
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    if-ne p2, v1, :cond_21a

    :goto_215
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->setTips(Landroid/content/Context;Z)V

    goto/16 :goto_e

    :cond_21a
    move v1, v0

    goto :goto_215

    .line 1716
    :pswitch_21c
    const-string v0, "calib_keys"

    const-string v1, "\u00b11 / \u00b15 \u043d\u0430 \u0440\u0435\u0434\u0430. \u041a\u0430\u0447\u0432\u0430\u043d\u0435\u0442\u043e \u0435 \u043f\u043b\u0430\u0432\u043d\u043e: \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e +5 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430."

    const-string v2, "\u00b11 / \u00b15 per row. Raising is gradual: at most +5 per second."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1718
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v1, p1, 0x64

    add-int/lit8 v1, v1, -0x32

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->adjustCalibration(II)V

    .line 1719
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshCalib()V

    goto/16 :goto_e

    .line 1723
    :pswitch_237
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 1724
    if-eqz v0, :cond_248

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_248

    .line 1725
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->next()Z

    .line 1727
    :cond_248
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V

    goto/16 :goto_e

    .line 1600
    nop

    :pswitch_data_24e
    .packed-switch 0x1
        :pswitch_f
        :pswitch_22
        :pswitch_26
        :pswitch_2e
        :pswitch_6a
        :pswitch_78
        :pswitch_96
        :pswitch_c5
        :pswitch_ce
        :pswitch_e1
        :pswitch_fa
        :pswitch_116
        :pswitch_14a
        :pswitch_16e
        :pswitch_1aa
        :pswitch_1bf
        :pswitch_1e4
        :pswitch_1f6
        :pswitch_1fd
        :pswitch_e
        :pswitch_21c
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_bb
        :pswitch_86
        :pswitch_e
        :pswitch_89
        :pswitch_8e
        :pswitch_2a
        :pswitch_e
        :pswitch_e
        :pswitch_211
        :pswitch_208
        :pswitch_12a
        :pswitch_e
        :pswitch_237
        :pswitch_64
    .end packed-switch

    .line 1666
    :pswitch_data_2a4
    .packed-switch 0x0
        :pswitch_156
        :pswitch_15c
        :pswitch_162
        :pswitch_168
    .end packed-switch

    .line 1676
    :pswitch_data_2b0
    .packed-switch 0x1
        :pswitch_17a
        :pswitch_180
        :pswitch_186
        :pswitch_174
        :pswitch_174
        :pswitch_174
        :pswitch_174
        :pswitch_174
        :pswitch_174
        :pswitch_18c
        :pswitch_192
        :pswitch_198
        :pswitch_19e
        :pswitch_1a4
    .end packed-switch
.end method

.method private static back()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    .line 436
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-ne v0, v2, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_13

    .line 437
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 438
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    .line 440
    :cond_13
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-lez v0, :cond_22

    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-gt v0, v2, :cond_22

    .line 441
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    .line 443
    :cond_22
    return-void
.end method

.method private static banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .registers 8

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v3, 0x41600000    # 14.0f

    .line 1824
    const/4 v0, 0x1

    invoke-static {p0, p2, v3, p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1825
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1826
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

    .line 1827
    return-object v0
.end method

.method static buildBoard(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 15

    .prologue
    .line 992
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 993
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_40c

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    :goto_a
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 994
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    .line 995
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v3

    .line 996
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 999
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->boardSub:Landroid/widget/TextView;

    .line 1002
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 1003
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 1004
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 1005
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1006
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->goalColor(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 1007
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const v10, 0x800013

    invoke-direct {v2, v4, v5, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1010
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1011
    const-string v2, ""

    const/high16 v4, 0x42200000    # 40.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v10, 0x1

    invoke-static {p0, v2, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    .line 1012
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    const-string v4, "sans-serif-condensed"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1013
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1014
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1015
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/AutoViews$Dots;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    .line 1016
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1017
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1018
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const v10, 0x800015

    invoke-direct {v2, v4, v5, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v10, p0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;-><init>(Landroid/content/Context;II)V

    .line 1024
    new-instance v11, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x44fa0000    # 2000.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v11, p0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;-><init>(Landroid/content/Context;FI)V

    .line 1025
    new-instance v1, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 1026
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x2

    const/4 v12, 0x2

    invoke-virtual {v1, v4, v5, v2, v12}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 1027
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v11, v1}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1028
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v2

    if-eqz v3, :cond_410

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_f1
    const/16 v4, 0x78

    const/16 v5, 0x5a

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/ProgramArt;->tile(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;II)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    .line 1029
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    invoke-virtual {v11, v0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1030
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    .line 1031
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-virtual {v11, v0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1032
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v11, v0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    invoke-virtual {v10, v11}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->addView(Landroid/view/View;)V

    .line 1034
    const-string v0, "\u2192"

    const/high16 v1, 0x41b00000    # 22.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    .line 1035
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1036
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->addView(Landroid/view/View;)V

    .line 1037
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    const v1, 0x3d75c28f    # 0.06f

    const/high16 v2, 0x44fa0000    # 2000.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;-><init>(Landroid/content/Context;FI)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    .line 1038
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    .line 1039
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 1040
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x2

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 1041
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1042
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runNextRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1043
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    invoke-virtual {v10, v0}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->addView(Landroid/view/View;)V

    .line 1044
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1048
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1049
    const-string v1, ""

    const/high16 v2, 0x41900000    # 18.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    .line 1050
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1051
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1052
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1053
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1055
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    .line 1056
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1057
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    .line 1058
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1059
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1060
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1061
    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1062
    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    const-string v0, "-"

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    .line 1065
    const/4 v0, -0x2

    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->phasesShownFor:I

    .line 1066
    const/4 v0, 0x0

    invoke-static {p0, v7, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->infoCorner(Landroid/content/Context;Landroid/widget/LinearLayout;I)Landroid/view/View;

    move-result-object v1

    .line 1067
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    .line 1068
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/16 v3, 0x2e

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/high16 v5, 0x40400000    # 3.0f

    .line 1069
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 1068
    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1070
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1071
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    move-object v0, v1

    .line 1072
    check-cast v0, Landroid/widget/FrameLayout;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x40133333    # 2.3f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1077
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1078
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 1079
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1081
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1082
    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    .line 1083
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    const v4, 0x800005

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1084
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1085
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1086
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    .line 1089
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v7, 0x42780000    # 62.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    const-string v3, "\u041d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435"

    const-string v4, "Load"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41400000    # 12.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x1

    invoke-static {p0, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1091
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1092
    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    .line 1094
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1095
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1096
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1097
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1098
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1100
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1101
    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->infoCorner(Landroid/content/Context;Landroid/widget/LinearLayout;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1105
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1106
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    .line 1107
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42b80000    # 92.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1109
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1110
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    .line 1111
    new-instance v2, Lcom/isaigu/gymapp/ai/ImpulseGlyph;

    const/4 v3, 0x1

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const v5, 0x3fe66666    # 1.8f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;-><init>(IIF)V

    .line 1112
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->setBounds(IIII)V

    .line 1113
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1114
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1115
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1116
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    .line 1117
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    const v3, 0x800005

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1118
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1119
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1120
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1121
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1122
    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1123
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1124
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1125
    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->infoCorner(Landroid/content/Context;Landroid/widget/LinearLayout;I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V

    .line 1127
    return-void

    .line 993
    :cond_40c
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    goto/16 :goto_a

    .line 1028
    :cond_410
    const/4 v3, 0x0

    goto/16 :goto_f1
.end method

.method private static choiceCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 1787
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1788
    if-eqz p3, :cond_4d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v1, 0x3e6147ae    # 0.22f

    invoke-static {v0, p4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    :goto_10
    const/high16 v1, 0x41800000    # 16.0f

    .line 1789
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

    .line 1788
    invoke-static {v0, v4, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1790
    const/high16 v0, 0x41900000    # 18.0f

    if-eqz p3, :cond_57

    :goto_2d
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1791
    const/high16 v0, 0x41500000    # 13.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1792
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1793
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1794
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1795
    return-object v3

    .line 1788
    :cond_4d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    goto :goto_10

    .line 1789
    :cond_50
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    move v2, v1

    goto :goto_1a

    :cond_54
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1e

    .line 1790
    :cond_57
    sget p4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_2d
.end method

.method private static clientBlocker()Ljava/lang/String;
    .registers 1

    .prologue
    .line 824
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 825
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlocker()Ljava/lang/String;

    move-result-object v0

    .line 826
    if-eqz v0, :cond_a

    .line 829
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static cr10Scale(Landroid/content/Context;II)Landroid/view/View;
    .registers 16

    .prologue
    const/16 v12, 0x10

    const/4 v5, 0x1

    const/high16 v11, 0x40400000    # 3.0f

    const/4 v2, 0x0

    .line 930
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 931
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    move v6, v5

    .line 932
    :goto_f
    const/16 v0, 0xa

    if-gt v6, v0, :cond_95

    .line 933
    if-lt v6, p1, :cond_75

    if-gt v6, p2, :cond_75

    move v4, v5

    .line 934
    :goto_18
    const/4 v0, 0x3

    if-gt v6, v0, :cond_77

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 935
    :goto_1d
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_80

    const/high16 v1, 0x41900000    # 18.0f

    move v3, v1

    :goto_26
    if-eqz v4, :cond_84

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_2a
    invoke-static {p0, v9, v3, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 936
    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 937
    if-eqz v4, :cond_87

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_37
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v10, v1

    .line 938
    if-eqz v4, :cond_8e

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move v3, v1

    :goto_43
    if-eqz v4, :cond_90

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 937
    :goto_4b
    invoke-static {v0, v10, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 939
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_92

    const/high16 v0, 0x42380000    # 46.0f

    :goto_58
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 940
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 941
    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 942
    invoke-virtual {v8, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_f

    :cond_75
    move v4, v2

    .line 933
    goto :goto_18

    .line 934
    :cond_77
    const/4 v0, 0x6

    if-gt v6, v0, :cond_7d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_1d

    :cond_7d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    goto :goto_1d

    .line 935
    :cond_80
    const/high16 v1, 0x41600000    # 14.0f

    move v3, v1

    goto :goto_26

    :cond_84
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_2a

    .line 937
    :cond_87
    const/16 v1, 0x22

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_37

    :cond_8e
    move v3, v2

    .line 938
    goto :goto_43

    :cond_90
    move v1, v2

    goto :goto_4b

    .line 939
    :cond_92
    const/high16 v0, 0x42180000    # 38.0f

    goto :goto_58

    .line 944
    :cond_95
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 945
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 946
    return-object v7
.end method

.method private static cr10Text(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 965
    const/4 v0, 0x3

    if-gt p0, v0, :cond_c

    .line 966
    const-string v0, "\u044f\u0441\u043d\u043e, \u043b\u0435\u043a\u043e"

    const-string v1, "clear, light"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    :goto_b
    return-object v0

    .line 968
    :cond_c
    const/4 v0, 0x5

    if-gt p0, v0, :cond_18

    .line 969
    const-string v0, "\u0441\u0438\u043b\u043d\u043e, \u043d\u043e \u043f\u0440\u0438\u044f\u0442\u043d\u043e"

    const-string v1, "strong but pleasant"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 971
    :cond_18
    const-string v0, "\u043c\u043d\u043e\u0433\u043e \u0441\u0438\u043b\u043d\u043e, \u0438\u0437\u0434\u044a\u0440\u0436\u0438\u043c\u043e"

    const-string v1, "very strong, bearable"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static dismiss()V
    .registers 1

    .prologue
    .line 195
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_b

    .line 197
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_f

    .line 201
    :cond_b
    :goto_b
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 202
    return-void

    .line 198
    :catch_f
    move-exception v0

    goto :goto_b
.end method

.method private static enable(Z)V
    .registers 3

    .prologue
    .line 389
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 390
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    if-eqz p0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 392
    :cond_d
    return-void

    .line 390
    :cond_e
    const v0, 0x3ee66666    # 0.45f

    goto :goto_a
.end method

.method static flashSetEnd()V
    .registers 4

    .prologue
    .line 213
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    .line 214
    if-nez v0, :cond_5

    .line 224
    :goto_4
    return-void

    .line 218
    :cond_5
    :try_start_5
    const-string v1, "alpha"

    const/4 v2, 0x5

    new-array v2, v2, [F

    fill-array-data v2, :array_22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 219
    const-wide/16 v2, 0x578

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_19} :catch_1a

    goto :goto_4

    .line 221
    :catch_1a
    move-exception v0

    .line 222
    const-string v1, "AutoUi.flash"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 218
    nop

    :array_22
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static footer(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 377
    if-eqz p2, :cond_1f

    .line 378
    const-string v0, "\u041d\u0430\u0437\u0430\u0434"

    const-string v1, "Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 379
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    :cond_1f
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    invoke-static {p0, p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    .line 384
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    return-void
.end method

.method private static go(I)V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 264
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    if-eqz v0, :cond_9b

    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-ne p0, v0, :cond_9b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 265
    :goto_17
    sget v2, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-eq p0, v2, :cond_1d

    .line 266
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    .line 268
    :cond_1d
    sput p0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    .line 269
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 270
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 271
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 272
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 274
    sput-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    .line 275
    sput-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->calibRowsInfo:Landroid/widget/TextView;

    .line 276
    packed-switch p0, :pswitch_data_b4

    .line 282
    :goto_48
    invoke-static {v2, p0}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTip(Landroid/content/Context;I)V

    .line 283
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTipText(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_aa

    move v2, v1

    :goto_56
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    if-ge p0, v5, :cond_ac

    .line 285
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
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

    .line 290
    :goto_84
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v3, 0x3f70a3d7    # 0.94f

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 291
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$ScrollTo;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/AutoUi$ScrollTo;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void

    :cond_9b
    move v0, v1

    .line 264
    goto/16 :goto_17

    .line 277
    :pswitch_9e
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->screenProgram(Landroid/content/Context;)V

    goto :goto_48

    .line 278
    :pswitch_a2
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->screenClient(Landroid/content/Context;)V

    goto :goto_48

    .line 279
    :pswitch_a6
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->screenCalib(Landroid/content/Context;)V

    goto :goto_48

    :cond_aa
    move v2, v3

    .line 283
    goto :goto_56

    .line 288
    :cond_ac
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_84

    .line 276
    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_a2
        :pswitch_a6
    .end packed-switch
.end method

.method private static goalColor(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)I
    .registers 3

    .prologue
    .line 1839
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 1842
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_d
    return v0

    .line 1840
    :pswitch_e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    goto :goto_d

    .line 1841
    :pswitch_11
    const v0, -0xd95966

    goto :goto_d

    .line 1839
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
    .line 1831
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 1834
    const-string v0, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v1, "Toning"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 1832
    :pswitch_14
    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v1, "Weight loss"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 1833
    :pswitch_1d
    const-string v0, "\u0417\u0434\u0440\u0430\u0432\u0435"

    const-string v1, "Health"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 1831
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

    .line 580
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

    .line 581
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 585
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
    .line 1803
    const/high16 v0, 0x41500000    # 13.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static howSteps(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 1365
    :try_start_1
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v0

    .line 1366
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howText()Ljava/lang/String;

    move-result-object v0

    .line 1367
    :goto_b
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    .line 1368
    :cond_17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1386
    :goto_1a
    return-object v0

    .line 1366
    :cond_1b
    const/4 v0, 0x0

    goto :goto_b

    .line 1370
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?<=[.!?])\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1371
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    array-length v5, v3

    move v1, v2

    :goto_2e
    if-ge v1, v5, :cond_56

    aget-object v0, v3, v1

    .line 1373
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1374
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1375
    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1377
    :cond_49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_52

    .line 1378
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1372
    :cond_52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    .line 1381
    :cond_56
    :goto_56
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_8b

    .line 1382
    const/4 v1, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x3

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v0, 0x4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_86} :catch_87

    goto :goto_56

    .line 1385
    :catch_87
    move-exception v0

    .line 1386
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_1a

    .line 1384
    :cond_8b
    const/4 v0, 0x0

    :try_start_8c
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_94} :catch_87

    goto :goto_1a
.end method

.method private static infoCorner(Landroid/content/Context;Landroid/widget/LinearLayout;I)Landroid/view/View;
    .registers 13

    .prologue
    const/high16 v9, 0x41c00000    # 24.0f

    const/4 v0, 0x1

    const v7, -0xd95966

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 1187
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1188
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1190
    const-string v2, "i"

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {p0, v2, v4, v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1191
    const/16 v2, 0x11

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1192
    const/16 v2, 0x1a

    invoke-static {v7, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0xcc

    invoke-static {v7, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    const v7, 0x3fb33333    # 1.4f

    .line 1193
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 1192
    invoke-static {v2, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1194
    const-string v2, "\u041a\u0430\u043a \u0440\u0430\u0431\u043e\u0442\u0438"

    const-string v5, "How it works"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1195
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$InfoTap;

    invoke-direct {v2, p2}, Lcom/isaigu/gymapp/ai/AutoUi$InfoTap;-><init>(I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1198
    if-ne p2, v0, :cond_86

    .line 1199
    :goto_5e
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 1200
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    if-eqz v0, :cond_88

    const v2, 0x800003

    :goto_6d
    or-int/lit8 v2, v2, 0x30

    invoke-direct {v5, v6, v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1201
    if-eqz v0, :cond_8c

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    :goto_78
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    if-eqz v0, :cond_8e

    move v0, v1

    :goto_7f
    invoke-virtual {v5, v2, v6, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1202
    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1203
    return-object v3

    :cond_86
    move v0, v1

    .line 1198
    goto :goto_5e

    .line 1200
    :cond_88
    const v2, 0x800005

    goto :goto_6d

    :cond_8c
    move v2, v1

    .line 1201
    goto :goto_78

    :cond_8e
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    goto :goto_7f
.end method

.method static infoText(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1207
    packed-switch p0, :pswitch_data_24

    .line 1241
    :pswitch_3
    const-string v0, "\u0426\u044f\u043b\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u043f\u043e \u0440\u0435\u0430\u043b\u043d\u0438\u044f \u0447\u0430\u0441\u043e\u0432\u043d\u0438\u043a: \u0432\u0438\u0441\u043e\u0447\u0438\u043d\u0430 \u0438 \u0446\u0432\u044f\u0442 \u2014 \u043e\u0431\u0449\u043e\u0442\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 (\u0433\u043e\u0440\u0435 = 100 %, \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u0438\u044f\u0442 \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430).\n\u0421\u0435\u0440\u0438\u044f\u0442\u0430 (\u0415\u041c\u0421 + \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e) \u0441\u0442\u043e\u0438 \u0432\u0438\u0441\u043e\u043a\u043e, \u043f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0438 \u0432\u0441\u044f\u043a\u0430 \u043f\u0430\u0443\u0437\u0430 \u043f\u0430\u0434\u0430\u0442 \u0441 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e, \u0434\u043e\u043a\u0430\u0442\u043e \u0442\u0440\u0430\u044f\u0442. \u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435\u0442\u043e \u043d\u0430\u043a\u0440\u0430\u044f \u0435 \u043e\u0442\u0434\u0435\u043b\u043d\u0430, \u043d\u0438\u0441\u043a\u0430 \u0447\u0430\u0441\u0442.\n\u041c\u0438\u043d\u0430\u043b\u043e\u0442\u043e \u0435 \u044f\u0440\u043a\u043e, \u043f\u0440\u0435\u0434\u0441\u0442\u043e\u044f\u0449\u043e\u0442\u043e \u2014 \u043f\u0440\u043e\u0433\u043d\u043e\u0437\u0430 \u043e\u0442 \u0441\u0435\u0433\u0430\u0448\u043d\u043e\u0442\u043e \u0441\u044a\u0441\u0442\u043e\u044f\u043d\u0438\u0435.\n\u0427\u0435\u0440\u0432\u0435\u043d\u0430 \u043b\u0438\u043d\u0438\u044f \u2014 \u043f\u0443\u043b\u0441\u044a\u0442, \u043f\u0443\u043d\u043a\u0442\u0438\u0440 \u2014 \u0442\u0430\u0432\u0430\u043d\u044a\u0442. \u0427\u0430\u0441\u043e\u0432\u043d\u0438\u043a\u044a\u0442 \u0431\u0440\u043e\u0438 \u0438 \u043f\u0430\u0443\u0437\u0438\u0442\u0435."

    const-string v1, "The whole session on the real clock: height and colour \u2014 the total load (top = 100 %, the client\'s healthy maximum).\nA set (EMS + the exercise) stands high, the rest and any pause fall with the load as long as they last. The recovery at the end is its own low part.\nThe past is bright, what comes is forecast from the state now.\nRed line \u2014 the HR, dashed \u2014 the ceiling. The clock counts the pauses too."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 1209
    :pswitch_c
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTipText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1211
    :pswitch_12
    const-string v0, "\u041f\u0440\u044a\u0441\u0442\u0435\u043d\u044a\u0442 \u0435 \u0441\u0435\u0440\u0438\u044f\u0442\u0430: 30\u201340 s, \u0442\u043e\u0447\u043a\u0438\u0442\u0435 \u0441\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435.\n\u0421\u043b\u0435\u0434 \u0441\u0435\u0440\u0438\u044f\u0442\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0441\u043f\u0438\u0440\u0430\u0442 \u0441\u0430\u043c\u0438. \u041f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0435 \u043a\u043e\u043b\u043a\u043e\u0442\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438\u0441\u043a\u0430\u0442, \u0437\u0430 \u0434\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0442 \u0435\u043d\u0435\u0440\u0433\u0438\u044f\u0442\u0430 \u0441\u0438 (\u043f\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0438 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f\u0442\u0430), \u0438 \u043f\u0443\u043b\u0441\u044a\u0442 \u0434\u0430 \u0441\u043f\u0430\u0434\u043d\u0435. \u0422\u043e\u0433\u0430\u0432\u0430 \u25b6 \u0441\u0432\u0435\u0442\u0432\u0430.\n\u0412\u0441\u0435\u043a\u0438 \u0441\u0442\u0430\u0440\u0442 \u0431\u0440\u043e\u0438 3 s: \u0442\u0440\u0438 \u043a\u044a\u0441\u0438 \u0441\u0438\u0433\u043d\u0430\u043b\u0430 \u0438 \u0434\u044a\u043b\u044a\u0433 \u0441 \u043f\u044a\u0440\u0432\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441.\n\u0421\u0438\u0432\u043e\u0442\u043e \u0432\u0434\u044f\u0441\u043d\u043e \u0435 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e; \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 10 s \u0441\u0435 \u043e\u0446\u0432\u0435\u0442\u044f\u0432\u0430. \u23ed \u0432 \u043f\u0430\u043d\u0435\u043b\u0430 \u0432\u0434\u044f\u0441\u043d\u043e (\u043c\u0435\u0436\u0434\u0443 \u25b6 \u0438 +) \u2014 \u043f\u0440\u043e\u043f\u0443\u0441\u043a\u0430: \u0441\u0435\u0440\u0438\u044f\u0442\u0430 (\u0438\u043b\u0438 \u0438\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u0441\u0435\u0440\u0438\u044f) \u043e\u0442\u043f\u0430\u0434\u0430 \u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0441\u0442\u0430\u0432\u0430 \u0442\u043e\u043b\u043a\u043e\u0432\u0430 \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u0430; \u0441\u043b\u0435\u0434\u0432\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e \u043f\u043e \u0440\u0435\u0434.\n\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u2014 \u0441 \u0433\u043b\u0430\u0432\u043d\u0438\u0442\u0435 \u25b6 / \u275a\u275a \u0438 \u25a0: \u25a0 \u0440\u0430\u0431\u043e\u0442\u0438 \u043e\u0442 \u043f\u0430\u0443\u0437\u0430; \u043f\u044a\u0440\u0432\u0438\u044f\u0442 \u2014 \u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435, \u0432\u0442\u043e\u0440\u0438\u044f\u0442 \u2014 \u043a\u0440\u0430\u0439."

    const-string v1, "The ring is the set: 30\u201340 s, the dots are the impulses.\nAfter the set the impulses stop by themselves. The rest lasts as long as the muscles need to refill (by the load and fitness) and the HR to come down; then \u25b6 lights up.\nEvery start counts 3 s: three short beeps and a long one with the first impulse.\nThe grey one on the right is the next; it lights up in the last 10 s. \u23ed on the right panel (between \u25b6 and +) skips: the set (or the coming one) is dropped and the session is that much shorter; the next in order follows.\nControl \u2014 the main \u25b6 / \u275a\u275a and \u25a0: \u25a0 works from a pause; the first goes to the recovery, the second ends."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1228
    :pswitch_1b
    const-string v0, "\u0412\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0441\u0435 \u043e\u0446\u0432\u0435\u0442\u044f\u0432\u0430 \u0441 \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430, \u043a\u043e\u044f\u0442\u043e \u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u0430 \u0434\u043e\u0441\u0435\u0433\u0430, \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u0430\u0439-\u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0435\u043d\u0430\u0442\u0430 \u0437\u043e\u043d\u0430 \u043d\u0430 \u0442\u0430\u0437\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430: \u0442\u044f \u0441\u0442\u0438\u0433\u0430 \u043f\u044a\u043b\u043d\u0438\u044f \u0446\u0432\u044f\u0442 (\u0436\u0435\u043d\u0430 \u2014 magenta, \u043c\u044a\u0436 \u2014 cyan) \u0432 \u043a\u0440\u0430\u044f \u043d\u0430 \u043f\u043b\u0430\u043d\u0430; \u0434\u0440\u0443\u0433\u0438\u0442\u0435 \u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u0442\u043e\u043b\u043a\u043e\u0432\u0430 \u043f\u043e-\u0431\u043b\u0435\u0434\u0438, \u043a\u043e\u043b\u043a\u043e\u0442\u043e \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430\u0442. \u041a\u0430\u043d\u0430\u043b \u043d\u0430 0 \u2014 \u0441\u0430\u043c\u043e \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430 \u043e\u0442 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e. \u041d\u0430\u0434 \u0446\u0435\u043b\u0442\u0430 \u0446\u0432\u0435\u0442\u044a\u0442 \u0441\u0442\u0430\u0432\u0430 \u043e\u0440\u0430\u043d\u0436\u0435\u0432, \u043f\u043e\u0441\u043b\u0435 \u0447\u0435\u0440\u0432\u0435\u043d. \u0417\u043e\u043d\u0430, \u043a\u043e\u044f\u0442\u043e \u0440\u0430\u0431\u043e\u0442\u0438 \u0432 \u043c\u043e\u043c\u0435\u043d\u0442\u0430, \u0441\u0432\u0435\u0442\u0432\u0430 \u043f\u043e-\u044f\u0440\u043a\u043e.\n\u0421\u043c\u0435\u0442\u043a\u0430: \u0441\u0438\u043b\u0430 \u00d7 \u0448\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u00d7 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u00d7 % \u043d\u0430 \u0437\u043e\u043d\u0430\u0442\u0430 + \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430 \u043d\u0430 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e.\n\u0421\u044a\u0440\u0446\u0435\u0442\u043e \u0431\u0438\u0435 \u0441 \u043f\u0443\u043b\u0441\u0430, \u0446\u0432\u0435\u0442\u044a\u0442 \u0435 \u043f\u0443\u043b\u0441\u043e\u0432\u0430\u0442\u0430 \u0437\u043e\u043d\u0430.\n\u041d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 \u2014 \u0446\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e: \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e, \u043a\u0438\u0441\u043b\u043e\u0440\u043e\u0434\u044a\u0442 \u0438 \u043f\u0443\u043b\u0441\u044a\u0442, \u0441\u0432\u044a\u0440\u0448\u0435\u043d\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u0430; \u043f\u043e \u0434\u0430\u043d\u043d\u0438\u0442\u0435 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v1, "Each zone is coloured by the work it has had so far against the most worked zone of this session: that one reaches full colour (woman \u2014 magenta, man \u2014 cyan) at the end of the plan; the others stay as much paler as they get less. A channel at 0 \u2014 the exercise\'s work only. Past the target the colour turns orange, then red. A zone working now glows brighter.\nSum: strength \u00d7 pulse width \u00d7 frequency \u00d7 zone % + the exercise\'s work.\nThe heart beats with the HR, its colour is the HR zone.\nLoad \u2014 the whole body: the muscles by impulse and exercise, oxygen and HR, the work done; by the client\'s data."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1207
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1b
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method static isShowing()Z
    .registers 1

    .prologue
    .line 238
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
    .line 1807
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1808
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1809
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 1810
    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1811
    return-object v0
.end method

.method static nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 1131
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1133
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ui_card_background"

    const-string v3, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1134
    if-eqz v1, :cond_19

    .line 1135
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_19} :catch_23

    .line 1139
    :cond_19
    :goto_19
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 1140
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1141
    return-object v0

    .line 1137
    :catch_23
    move-exception v1

    goto :goto_19
.end method

.method private static next()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 395
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 396
    sget v1, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    packed-switch v1, :pswitch_data_58

    .line 433
    :cond_b
    :goto_b
    return-void

    .line 398
    :pswitch_c
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 399
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_b

    .line 403
    :pswitch_14
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlocker()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 406
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->healthOpen:Z

    if-nez v1, :cond_20

    .line 407
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->healthOk:Z

    .line 409
    :cond_20
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->clientBlocker()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_38

    .line 410
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->heightTouched:Z

    if-eqz v1, :cond_31

    .line 411
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveHeight(Landroid/app/Activity;I)V

    .line 413
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 414
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_b

    .line 416
    :cond_38
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_b

    .line 420
    :pswitch_3c
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    if-nez v0, :cond_49

    .line 421
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->beginCalibration()V

    .line 422
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    .line 423
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_b

    .line 424
    :cond_49
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canStart()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 425
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->startRun(Landroid/content/Context;)V

    .line 427
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_b

    .line 396
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_c
        :pswitch_14
        :pswitch_3c
    .end packed-switch
.end method

.method static onBoardDetached()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 206
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    .line 207
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    .line 208
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->boardSub:Landroid/widget/TextView;

    .line 209
    return-void
.end method

.method static onFinished()V
    .registers 2

    .prologue
    .line 228
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 230
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->finishAssisted()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_a

    .line 234
    :goto_6
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 235
    return-void

    .line 231
    :catch_a
    move-exception v0

    .line 232
    const-string v1, "AutoUi.onFinished"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 158
    :cond_a
    :goto_a
    return-void

    .line 133
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 134
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v3, :cond_47

    .line 135
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->conflict()Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1d

    .line 137
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    .line 140
    :cond_1d
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->beginSetup(Landroid/content/Context;)V

    .line 141
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v3

    .line 142
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-lez v0, :cond_43

    move v0, v1

    :goto_29
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->heightTouched:Z

    .line 143
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    .line 144
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_45

    move v0, v1

    :goto_32
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->profileOpen:Z

    .line 145
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->healthOk:Z

    .line 146
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->healthOpen:Z

    .line 147
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 148
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    .line 149
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->show(Landroid/app/Activity;I)V

    goto :goto_a

    :cond_43
    move v0, v2

    .line 142
    goto :goto_29

    :cond_45
    move v0, v2

    .line 144
    goto :goto_32

    .line 152
    :cond_47
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_4f

    .line 153
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->onFinished()V

    goto :goto_a

    .line 156
    :cond_4f
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_58

    const/4 v2, 0x3

    :cond_54
    :goto_54
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->show(Landroid/app/Activity;I)V

    goto :goto_a

    .line 157
    :cond_58
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_54

    const/4 v2, 0x2

    goto :goto_54
.end method

.method private static planBlock(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 13

    .prologue
    .line 711
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v4

    .line 712
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    .line 713
    if-nez v4, :cond_b

    .line 807
    :cond_a
    :goto_a
    return-void

    .line 716
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 718
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

    if-lez v0, :cond_147

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

    .line 719
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 718
    invoke-static {p0, v2, v3, v0, v5}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 720
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v3

    .line 721
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v0, v5, :cond_87

    if-eqz v3, :cond_87

    .line 722
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

    .line 724
    :cond_87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 727
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 728
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 729
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

    .line 731
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoPlanner;->intenseAllowed(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 732
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

    .line 734
    :goto_fa
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

    .line 735
    invoke-static {v6, v7, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 734
    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 737
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    if-eqz v0, :cond_17c

    .line 738
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    array-length v0, v0

    new-array v5, v0, [Ljava/lang/String;

    .line 739
    const/4 v0, 0x0

    :goto_12f
    array-length v6, v5

    if-ge v0, v6, :cond_165

    .line 740
    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    aget-object v6, v6, v0

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsEn:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto :goto_12f

    .line 718
    :cond_147
    const-string v0, ""

    goto/16 :goto_3f

    .line 733
    :cond_14b
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

    goto :goto_fa

    .line 742
    :cond_165
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

    .line 744
    :cond_17c
    iget-boolean v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_1a7

    .line 745
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v5, "Double impulse"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u043b\u0435\u043a \u0438\u043c\u043f\u0443\u043b\u0441 \u0438 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430"

    const-string v6, "a light pulse in the pause too"

    .line 746
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    new-instance v6, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v7, 0x13

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 745
    invoke-static {p0, v0, v5, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    .line 747
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 745
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    :cond_1a7
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v0, v1, :cond_1d4

    if-nez v3, :cond_1d4

    .line 754
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

    .line 756
    :cond_1d4
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1dc
    :goto_1dc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_221

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 757
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v1, :cond_1dc

    .line 758
    const-string v1, "\u2022 "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_21e

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    :goto_1fc
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

    .line 759
    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1dc

    .line 758
    :cond_21e
    const-string v1, "?"

    goto :goto_1fc

    .line 762
    :cond_221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_23e

    .line 763
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

    .line 766
    :cond_23e
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    if-eqz v0, :cond_34c

    const-string v0, "\u25b4  \u0421\u043a\u0440\u0438\u0439 \u0444\u0430\u0437\u0438\u0442\u0435"

    const-string v1, "\u25b4  Hide the phases"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    :goto_24a
    const/4 v1, 0x3

    .line 766
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 768
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    if-eqz v0, :cond_a

    .line 771
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 772
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_270
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 773
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 774
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
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

    .line 776
    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-eqz v2, :cond_356

    .line 777
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

    .line 784
    :cond_2be
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

    .line 785
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    sub-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v2, v8

    if-lez v1, :cond_300

    .line 786
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

    .line 788
    :cond_300
    const-string v1, " %"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 790
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

    .line 791
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v8, -0x2

    invoke-direct {v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 790
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
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

    .line 794
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_270

    .line 767
    :cond_34c
    const-string v0, "\u25be  \u0424\u0430\u0437\u0438 \u0438 \u0437\u043e\u043d\u0438"

    const-string v1, "\u25be  Phases and zones"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24a

    .line 779
    :cond_356
    const/4 v1, 0x0

    move v2, v1

    :goto_358
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2be

    .line 780
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 781
    if-lez v2, :cond_397

    const-string v3, " \u2194 "

    :goto_36c
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

    .line 779
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_358

    .line 781
    :cond_397
    const-string v3, ""

    goto :goto_36c

    .line 796
    :cond_39a
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneBars(Landroid/content/Context;Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    const-string v0, "x"

    const-string v2, "y"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3de

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->notesBg:Ljava/util/List;

    .line 799
    :goto_3be
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 800
    const-string v3, "\u2022 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c2

    .line 798
    :cond_3de
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->notesEn:Ljava/util/List;

    goto :goto_3be

    .line 802
    :cond_3e1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3fc

    .line 803
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

    .line 805
    :cond_3fc
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a
.end method

.method private static planBlocker()Ljava/lang/String;
    .registers 3

    .prologue
    .line 811
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 812
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v1, :cond_11

    .line 813
    const-string v0, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0440\u044a\u0441\u0442\u0430 \u2014 \u043e\u0442 \u043d\u0435\u0433\u043e \u0441\u0435 \u0441\u043c\u044f\u0442\u0430 \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v1, "Enter the height \u2014 the plan depends on it."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    :goto_10
    return-object v0

    .line 815
    :cond_11
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_20

    .line 816
    const-string v0, "\u041f\u043e\u0434 18 \u0433. \u2014 \u043d\u0435."

    const-string v1, "Under 18 \u2014 no."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 818
    :cond_20
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    .line 819
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
    .line 243
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 244
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_18

    .line 249
    :cond_9
    :goto_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 259
    :cond_17
    :goto_17
    return-void

    .line 246
    :catch_18
    move-exception v0

    .line 247
    const-string v1, "AutoUi.refreshRun"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 253
    :cond_1f
    :try_start_1f
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 254
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshCalib()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_17

    .line 256
    :catch_28
    move-exception v0

    .line 257
    const-string v1, "AutoUi.refresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method private static refreshCalib()V
    .registers 5

    .prologue
    .line 950
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v3

    .line 951
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_49

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_49

    .line 952
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 953
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v4, :cond_2a

    sget-boolean v4, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    if-nez v4, :cond_33

    :cond_2a
    const-string v0, "\u2014"

    :goto_2c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 953
    :cond_33
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

    goto :goto_2c

    .line 955
    :cond_49
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    if-eqz v0, :cond_54

    .line 956
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canStart()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->enable(Z)V

    .line 958
    :cond_54
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibRowsInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_63

    .line 959
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v0

    .line 960
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->calibRowsInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_64

    :goto_60
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    :cond_63
    return-void

    .line 960
    :cond_64
    const-string v0, ""

    goto :goto_60
.end method

.method private static refreshRun()V
    .registers 28

    .prologue
    .line 1391
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v14

    .line 1392
    if-eqz v14, :cond_a

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    if-nez v2, :cond_b

    .line 1570
    :cond_a
    :goto_a
    return-void

    .line 1395
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1396
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v15

    .line 1397
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v12

    .line 1398
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v18

    .line 1399
    if-eqz v12, :cond_25f

    invoke-virtual {v12}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_25f

    const/4 v2, 0x1

    move v11, v2

    .line 1400
    :goto_25
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v19

    .line 1401
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v20

    .line 1402
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_263

    const/4 v2, 0x1

    move v3, v2

    .line 1403
    :goto_35
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_267

    const/4 v2, 0x1

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCountdownLeftS(J)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v2

    .line 1406
    :goto_47
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v7

    .line 1407
    if-eqz v7, :cond_26b

    if-nez v19, :cond_26b

    const/4 v2, 0x1

    move v13, v2

    .line 1408
    :goto_51
    if-eqz v20, :cond_26f

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_57
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v6

    .line 1409
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v13, :cond_272

    const/4 v2, 0x0

    :goto_60
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setVisibility(I)V

    .line 1410
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    if-eqz v13, :cond_275

    const/16 v2, 0x8

    :goto_69
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1411
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_278

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_76
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1412
    if-nez v13, :cond_97

    .line 1414
    if-nez v11, :cond_7f

    if-eqz v19, :cond_27d

    :cond_7f
    const/4 v2, 0x1

    move v5, v2

    .line 1415
    :goto_81
    if-eqz v20, :cond_281

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 1416
    :goto_87
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    if-eqz v5, :cond_284

    const-string v5, "recovery"

    const/4 v9, 0x0

    invoke-static {v5, v9, v2}, Lcom/isaigu/gymapp/ai/ProgramArt;->key(Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v2

    .line 1417
    :goto_92
    const/16 v5, 0x78

    .line 1416
    invoke-static {v8, v2, v5}, Lcom/isaigu/gymapp/ai/ProgramArt;->show(Landroid/view/View;Ljava/lang/String;I)V

    .line 1419
    :cond_97
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getNextExercise()Ljava/lang/String;

    move-result-object v8

    .line 1420
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_294

    if-eqz v8, :cond_294

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetLeftS()D

    move-result-wide v22

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    cmpg-double v2, v22, v24

    if-gtz v2, :cond_294

    const/4 v2, 0x1

    move v9, v2

    .line 1422
    :goto_af
    if-eqz v13, :cond_298

    if-eqz v8, :cond_298

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_298

    const/4 v2, 0x1

    .line 1423
    :goto_ba
    sget-object v10, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    if-eqz v2, :cond_29b

    const/4 v5, 0x0

    :goto_bf
    invoke-virtual {v10, v5}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->setVisibility(I)V

    .line 1424
    sget-object v10, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    if-eqz v2, :cond_29f

    const/4 v5, 0x0

    :goto_c7
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1425
    if-eqz v2, :cond_f6

    .line 1426
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2, v8}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1427
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v9, :cond_2a3

    move v2, v6

    :goto_d6
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 1428
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v9, :cond_2ad

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_df
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setAlpha(F)V

    .line 1429
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNextRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v5, v10, v0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->set(FII)V

    .line 1430
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    if-eqz v9, :cond_2b1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_f3
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1432
    :cond_f6
    if-eqz v13, :cond_2ef

    .line 1433
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 1434
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2, v7}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1436
    if-nez v3, :cond_106

    if-lez v4, :cond_2bb

    :cond_106
    const/4 v2, 0x1

    .line 1437
    :goto_107
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-eq v0, v5, :cond_111

    if-eqz v2, :cond_2be

    :cond_111
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_113
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setAlpha(F)V

    .line 1440
    if-eqz v9, :cond_2c2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2c2

    .line 1441
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "   \u2192  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v10, "Recovery"

    invoke-static {v8, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1445
    :goto_146
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    if-eqz v2, :cond_2eb

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_14c
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1446
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->howSteps(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->showHow(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1466
    :goto_15c
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_445

    const/4 v2, 0x1

    .line 1468
    :goto_163
    const/4 v5, 0x2

    new-array v7, v5, [I

    fill-array-data v7, :array_6b8

    .line 1470
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1471
    if-eqz v3, :cond_484

    .line 1472
    const/4 v2, 0x1

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1473
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v3

    .line 1474
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startReady()Z

    move-result v5

    .line 1475
    if-eqz v19, :cond_448

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1476
    :goto_184
    if-nez v19, :cond_18c

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v10, v6

    if-ltz v6, :cond_45e

    :cond_18c
    const/4 v9, 0x0

    .line 1477
    :goto_18d
    if-eqz v5, :cond_465

    const/4 v8, 0x2

    .line 1478
    :goto_190
    if-eqz v19, :cond_468

    .line 1479
    iget v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    .line 1480
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_19b
    move v5, v2

    move-object v6, v3

    .line 1508
    :goto_19d
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_1a9

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_1ba

    .line 1509
    :cond_1a9
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1510
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_54e

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v2

    if-nez v2, :cond_54e

    const-string v2, "\u2665"

    :goto_1b9
    move-object v6, v2

    .line 1512
    :cond_1ba
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    if-lez v4, :cond_1bf

    const/4 v9, 0x0

    :cond_1bf
    invoke-virtual {v2, v10, v8, v4, v9}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->set(FIIF)V

    .line 1513
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    invoke-virtual {v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->set(II)V

    .line 1514
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    const/4 v2, 0x1

    aget v2, v7, v2

    if-lez v2, :cond_552

    const/4 v2, 0x0

    :goto_1d5
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->setVisibility(I)V

    .line 1515
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1516
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1521
    const/16 v2, 0xa

    new-array v6, v2, [Z

    .line 1523
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    if-eqz v20, :cond_555

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_1ee
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneProgress(J)[D

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getChannelLoad(J)[D

    move-result-object v5

    .line 1524
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneActive(J)[Z

    move-result-object v7

    .line 1523
    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z[Z)V

    .line 1525
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->set(D)V

    .line 1526
    iget-object v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v2, v3, :cond_559

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_559

    const/4 v2, 0x1

    move v3, v2

    .line 1527
    :goto_21e
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    if-eqz v3, :cond_55d

    const/4 v2, 0x0

    :goto_223
    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->setVisibility(I)V

    .line 1528
    if-eqz v3, :cond_239

    .line 1529
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v2

    .line 1530
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    iget v5, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/HrGuard;->zoneColor(II)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->set(II)V

    .line 1532
    :cond_239
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v2

    .line 1533
    const-string v5, ""

    .line 1534
    const/4 v4, 0x0

    .line 1535
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_244
    :goto_244
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_565

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1536
    iget-object v7, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v7, :cond_244

    .line 1539
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_561

    .line 1540
    iget-object v5, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    move v2, v4

    :goto_25d
    move v4, v2

    .line 1544
    goto :goto_244

    .line 1399
    :cond_25f
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_25

    .line 1402
    :cond_263
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_35

    .line 1403
    :cond_267
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_47

    .line 1407
    :cond_26b
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_51

    .line 1408
    :cond_26f
    const/4 v2, 0x0

    goto/16 :goto_57

    .line 1409
    :cond_272
    const/4 v2, 0x4

    goto/16 :goto_60

    .line 1410
    :cond_275
    const/4 v2, 0x0

    goto/16 :goto_69

    .line 1411
    :cond_278
    const v2, 0x3f19999a    # 0.6f

    goto/16 :goto_76

    .line 1414
    :cond_27d
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_81

    .line 1415
    :cond_281
    const/4 v2, 0x0

    goto/16 :goto_87

    .line 1417
    :cond_284
    iget-object v5, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iget-object v9, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v9

    invoke-static {v5, v9, v2}, Lcom/isaigu/gymapp/ai/ProgramArt;->key(Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_92

    .line 1420
    :cond_294
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_af

    .line 1422
    :cond_298
    const/4 v2, 0x0

    goto/16 :goto_ba

    .line 1423
    :cond_29b
    const/16 v5, 0x8

    goto/16 :goto_bf

    .line 1424
    :cond_29f
    const/16 v5, 0x8

    goto/16 :goto_c7

    .line 1427
    :cond_2a3
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v10, 0x99

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto/16 :goto_d6

    .line 1428
    :cond_2ad
    const/high16 v2, 0x3f400000    # 0.75f

    goto/16 :goto_df

    .line 1430
    :cond_2b1
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v10, 0x99

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto/16 :goto_f3

    .line 1436
    :cond_2bb
    const/4 v2, 0x0

    goto/16 :goto_107

    .line 1437
    :cond_2be
    const/high16 v5, 0x3f000000    # 0.5f

    goto/16 :goto_113

    .line 1443
    :cond_2c2
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_2e8

    const-string v5, "\u0421\u043b\u0435\u0434\u0432\u0430:  "

    const-string v10, "Next:  "

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2d3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_146

    :cond_2e8
    const-string v5, ""

    goto :goto_2d3

    .line 1445
    :cond_2eb
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_14c

    .line 1448
    :cond_2ef
    if-eqz v19, :cond_3d7

    iget-object v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    iget-object v5, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1449
    :goto_301
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    if-eqz v19, :cond_3da

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u2192  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v8, "Recovery"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_320
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1452
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1454
    if-eqz v19, :cond_42b

    const/4 v5, 0x0

    .line 1455
    :goto_32d
    invoke-static {v15, v2}, Lcom/isaigu/gymapp/ai/AutoCues;->phaseGoal(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;

    move-result-object v8

    .line 1456
    if-eqz v5, :cond_431

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseOn()Z

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCues;->effect(Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 1457
    :goto_33c
    if-eqz v2, :cond_436

    invoke-static {v15, v2}, Lcom/isaigu/gymapp/ai/AutoCues;->phaseHint(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;

    move-result-object v6

    .line 1458
    :goto_342
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "phase:"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v2, :cond_43a

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    :goto_353
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v5, :cond_441

    .line 1459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-wide v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmpl-double v2, v22, v24

    if-lez v2, :cond_43e

    const/4 v2, 0x1

    :goto_381
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_399
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v21, "\u0426\u0435\u043b"

    const-string v22, "Goal"

    invoke-static/range {v21 .. v22}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v10

    const/4 v10, 0x1

    const-string v21, "\u0415\u0444\u0435\u043a\u0442"

    const-string v22, "Effect"

    invoke-static/range {v21 .. v22}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v10

    const/4 v10, 0x2

    const-string v21, "\u0422\u0438"

    const-string v22, "You"

    .line 1460
    invoke-static/range {v21 .. v22}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v10

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v8, v10, v21

    const/4 v8, 0x1

    aput-object v7, v10, v8

    const/4 v7, 0x2

    aput-object v6, v10, v7

    .line 1458
    invoke-static {v2, v5, v10}, Lcom/isaigu/gymapp/ai/AutoUi;->showLabelled(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_15c

    :cond_3d7
    move-object v2, v12

    .line 1448
    goto/16 :goto_301

    .line 1450
    :cond_3da
    if-eqz v11, :cond_41b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v8, "Recovery"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getImpulseName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_418

    .line 1451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  \u00b7  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getImpulseName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_40e
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_320

    :cond_418
    const-string v5, ""

    goto :goto_40e

    :cond_41b
    if-eqz v12, :cond_427

    iget-object v5, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v7, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_320

    :cond_427
    const-string v5, ""

    goto/16 :goto_320

    .line 1454
    :cond_42b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getWritten()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v5

    goto/16 :goto_32d

    .line 1456
    :cond_431
    const-string v6, ""

    move-object v7, v6

    goto/16 :goto_33c

    .line 1457
    :cond_436
    const-string v6, ""

    goto/16 :goto_342

    .line 1458
    :cond_43a
    const-string v2, ""

    goto/16 :goto_353

    .line 1459
    :cond_43e
    const/4 v2, 0x0

    goto/16 :goto_381

    :cond_441
    const-string v2, "-"

    goto/16 :goto_399

    .line 1466
    :cond_445
    const/4 v2, 0x0

    goto/16 :goto_163

    .line 1475
    :cond_448
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestS(J)D

    move-result-wide v22

    int-to-double v0, v2

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-float v10, v8

    goto/16 :goto_184

    .line 1476
    :cond_45e
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v2, v2

    div-float v9, v6, v2

    goto/16 :goto_18d

    .line 1477
    :cond_465
    const/4 v8, 0x1

    goto/16 :goto_190

    .line 1481
    :cond_468
    if-lez v3, :cond_473

    .line 1482
    int-to-double v2, v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    .line 1483
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_19b

    .line 1485
    :cond_473
    if-eqz v5, :cond_47d

    const-string v3, "\u25b6"

    .line 1486
    :goto_477
    if-eqz v5, :cond_480

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_19b

    .line 1485
    :cond_47d
    const-string v3, "\u2665"

    goto :goto_477

    .line 1486
    :cond_480
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_19b

    .line 1488
    :cond_484
    if-eqz v11, :cond_4b7

    .line 1489
    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v3, :cond_4b3

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v8

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v0, v3

    move-wide/from16 v22, v0

    div-double v8, v8, v22

    double-to-float v10, v8

    .line 1490
    :goto_496
    const/4 v8, 0x3

    .line 1491
    if-eqz v2, :cond_4b5

    iget v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v2, :cond_4b5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v0, v6

    move-wide/from16 v22, v0

    div-double v2, v2, v22

    double-to-float v2, v2

    .line 1492
    :goto_4a7
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move v9, v2

    goto/16 :goto_19d

    .line 1489
    :cond_4b3
    const/4 v10, 0x0

    goto :goto_496

    .line 1491
    :cond_4b5
    const/4 v2, 0x0

    goto :goto_4a7

    .line 1493
    :cond_4b7
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v3

    if-eqz v3, :cond_50f

    .line 1494
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getStationS()D

    move-result-wide v6

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    div-double v6, v6, v22

    double-to-float v10, v6

    .line 1495
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_50b

    const/4 v8, 0x0

    .line 1496
    :goto_4d9
    if-eqz v2, :cond_50d

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-float v2, v2

    .line 1497
    :goto_4eb
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetImpulses()[I

    move-result-object v7

    .line 1498
    const-wide/16 v22, 0x0

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v24

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getStationS()D

    move-result-wide v26

    sub-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v6

    .line 1499
    if-eqz v9, :cond_6b5

    .line 1500
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move v5, v3

    move v9, v2

    goto/16 :goto_19d

    .line 1495
    :cond_50b
    const/4 v8, 0x4

    goto :goto_4d9

    .line 1496
    :cond_50d
    const/4 v2, 0x0

    goto :goto_4eb

    .line 1503
    :cond_50f
    if-eqz v12, :cond_548

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v3, :cond_548

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v8

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v0, v3

    move-wide/from16 v22, v0

    div-double v8, v8, v22

    double-to-float v3, v8

    .line 1504
    :goto_521
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v6, :cond_54a

    const/4 v8, 0x0

    .line 1505
    :goto_528
    if-eqz v2, :cond_54c

    if-eqz v12, :cond_54c

    iget v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v2, :cond_54c

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    iget v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v0, v2

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v2, v0

    .line 1506
    :goto_53c
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v6

    move v9, v2

    move v10, v3

    goto/16 :goto_19d

    .line 1503
    :cond_548
    const/4 v3, 0x0

    goto :goto_521

    .line 1504
    :cond_54a
    const/4 v8, 0x4

    goto :goto_528

    .line 1505
    :cond_54c
    const/4 v2, 0x0

    goto :goto_53c

    .line 1510
    :cond_54e
    const-string v2, "\u275a\u275a"

    goto/16 :goto_1b9

    .line 1514
    :cond_552
    const/4 v2, 0x4

    goto/16 :goto_1d5

    .line 1523
    :cond_555
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_1ee

    .line 1526
    :cond_559
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_21e

    .line 1527
    :cond_55d
    const/16 v2, 0x8

    goto/16 :goto_223

    .line 1542
    :cond_561
    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_25d

    .line 1545
    :cond_565
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-lez v4, :cond_5b9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  +"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_585
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1548
    iget-object v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v10, v2, [Ljava/lang/String;

    .line 1549
    const/4 v2, 0x0

    move v4, v2

    :goto_59a
    array-length v2, v10

    if-ge v4, v2, :cond_5c5

    .line 1550
    iget-object v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1551
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-eqz v5, :cond_5bc

    const-string v2, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v5, "Recovery"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5b3
    aput-object v2, v10, v4

    .line 1549
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_59a

    .line 1545
    :cond_5b9
    const-string v2, ""

    goto :goto_585

    .line 1551
    :cond_5bc
    iget-object v5, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5b3

    .line 1553
    :cond_5c5
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v8

    .line 1554
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getForecast()Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v5

    .line 1555
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    iget v6, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    if-eqz v3, :cond_693

    iget v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    :goto_5d7
    invoke-virtual {v4, v6, v2}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->setHrScale(II)V

    .line 1556
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTrace()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v6

    invoke-virtual/range {v3 .. v10}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->set(Ljava/util/List;Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;DD[Ljava/lang/String;)V

    .line 1557
    if-eqz v5, :cond_696

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v2

    invoke-virtual {v5, v8, v9, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->leftS(DD)D

    move-result-wide v2

    .line 1558
    :goto_5f1
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  /  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->boardSub:Landroid/widget/TextView;

    if-eqz v2, :cond_659

    .line 1560
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getImpulseName()Ljava/lang/String;

    move-result-object v3

    .line 1561
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->boardSub:Landroid/widget/TextView;

    if-eqz v12, :cond_6a8

    .line 1562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1561
    if-eqz v11, :cond_69c

    const-string v2, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Recovery"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_631
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1562
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6a5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  \u00b7  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_64e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1561
    :goto_656
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    :cond_659
    if-nez v13, :cond_6ab

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v2

    if-nez v2, :cond_6ab

    const/4 v2, 0x1

    :goto_666
    invoke-static {v14, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->showPhases(Lcom/isaigu/gymapp/ai/AutoEngine;Z)V

    .line 1566
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v3

    .line 1567
    if-eqz v3, :cond_6ad

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6ad

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeMs()J

    move-result-wide v4

    sub-long v4, v16, v4

    const-wide/16 v6, 0x2ee0

    cmp-long v2, v4, v6

    if-gez v2, :cond_6ad

    const/4 v2, 0x1

    .line 1568
    :goto_682
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    if-eqz v2, :cond_6af

    :goto_686
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1569
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    if-eqz v2, :cond_6b2

    const/4 v2, 0x0

    :goto_68e
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 1555
    :cond_693
    const/4 v2, 0x0

    goto/16 :goto_5d7

    .line 1557
    :cond_696
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRemainingS()D

    move-result-wide v2

    goto/16 :goto_5f1

    .line 1561
    :cond_69c
    iget-object v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_631

    .line 1562
    :cond_6a5
    const-string v2, ""

    goto :goto_64e

    :cond_6a8
    const-string v2, ""

    goto :goto_656

    .line 1564
    :cond_6ab
    const/4 v2, 0x0

    goto :goto_666

    .line 1567
    :cond_6ad
    const/4 v2, 0x0

    goto :goto_682

    .line 1568
    :cond_6af
    const-string v3, ""

    goto :goto_686

    .line 1569
    :cond_6b2
    const/16 v2, 0x8

    goto :goto_68e

    :cond_6b5
    move v9, v2

    goto/16 :goto_19d

    .line 1468
    :array_6b8
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static screenCalib(Landroid/content/Context;)V
    .registers 14

    .prologue
    .line 878
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    .line 879
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    const-string v2, "\u0421\u0438\u043b\u0430"

    const-string v3, "Strength"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
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

    .line 881
    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    iget v3, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    if-le v0, v3, :cond_100

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

    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->cr10Text(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->subtitle(Ljava/lang/String;)V

    .line 882
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 884
    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->cr10Scale(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 885
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v4

    .line 886
    const/4 v0, 0x0

    move v1, v0

    :goto_80
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1ef

    .line 887
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 888
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 889
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 890
    const/16 v2, 0x10

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 891
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_104

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    :goto_a3
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

    .line 893
    const-string v2, ""

    const/high16 v7, 0x41b00000    # 22.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v9, 0x1

    invoke-static {p0, v2, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 894
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v2, :cond_120

    .line 896
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 897
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 898
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

    .line 920
    :goto_f3
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_80

    .line 881
    :cond_100
    const-string v0, ""

    goto/16 :goto_45

    .line 891
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

    goto :goto_a3

    .line 900
    :cond_120
    const/4 v0, 0x2

    new-array v8, v0, [I

    fill-array-data v8, :array_220

    .line 901
    const/4 v0, 0x0

    :goto_127
    array-length v2, v8

    if-ge v0, v2, :cond_17d

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u2212"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v9, v8, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x2

    invoke-static {p0, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v9

    .line 903
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    if-eqz v2, :cond_179

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_14e
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 904
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 905
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v10, 0x15

    mul-int/lit8 v11, v1, 0x64

    aget v12, v8, v0

    add-int/lit8 v12, v12, 0x32

    add-int/2addr v11, v12

    invoke-direct {v2, v10, v11}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42900000    # 72.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/4 v11, -0x2

    invoke-direct {v2, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_127

    .line 903
    :cond_179
    const v2, 0x3eb33333    # 0.35f

    goto :goto_14e

    .line 908
    :cond_17d
    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 909
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v8, -0x2

    invoke-direct {v0, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_228

    .line 911
    const/4 v0, 0x0

    :goto_198
    array-length v2, v7

    if-ge v0, v2, :cond_1ea

    .line 912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v8, v7, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    invoke-static {p0, v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v8

    .line 913
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    if-eqz v2, :cond_1e6

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1bb
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 914
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 915
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v9, 0x15

    mul-int/lit8 v10, v1, 0x64

    aget v11, v7, v0

    add-int/lit8 v11, v11, 0x32

    add-int/2addr v10, v11

    invoke-direct {v2, v9, v10}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42900000    # 72.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 911
    add-int/lit8 v0, v0, 0x1

    goto :goto_198

    .line 913
    :cond_1e6
    const v2, 0x3eb33333    # 0.35f

    goto :goto_1bb

    .line 918
    :cond_1ea
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_f3

    .line 922
    :cond_1ef
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->hint(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibRowsInfo:Landroid/widget/TextView;

    .line 923
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibRowsInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 924
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->calibStarted:Z

    if-eqz v0, :cond_216

    const-string v0, "\u0421\u0442\u0430\u0440\u0442  \u203a"

    const-string v1, "Start  \u203a"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20e
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->footer(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 925
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshCalib()V

    .line 926
    return-void

    .line 924
    :cond_216
    const-string v0, "\u25b6 \u041f\u0443\u0441\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435"

    const-string v1, "\u25b6 Start the pulses"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20e

    .line 900
    nop

    :array_220
    .array-data 4
        -0x5
        -0x1
    .end array-data

    .line 910
    :array_228
    .array-data 4
        0x1
        0x5
    .end array-data
.end method

.method private static screenClient(Landroid/content/Context;)V
    .registers 15

    .prologue
    .line 589
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v4

    .line 590
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v2

    .line 591
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_354

    .line 592
    :cond_2b
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v3, "Client"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    :goto_33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    if-eqz v2, :cond_363

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->subtitle(Ljava/lang/String;)V

    .line 595
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 596
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 597
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 598
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const v8, 0x3f933333    # 1.15f

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 600
    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 601
    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlocker()Ljava/lang/String;

    move-result-object v6

    .line 604
    if-nez v6, :cond_81

    .line 605
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 609
    :cond_81
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->profileOpen:Z

    if-eqz v0, :cond_36d

    .line 610
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 611
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v8, "\u0416\u0435\u043d\u0430"

    const-string v9, "Female"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x1

    const-string v8, "\u041c\u044a\u0436"

    const-string v9, "Male"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 612
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v8, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v8, :cond_366

    const/4 v0, 0x0

    :goto_a9
    new-instance v8, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v9, 0x1c

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 611
    invoke-static {p0, v7, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 614
    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v8, "Age"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u0433."

    const-string v10, "y"

    .line 615
    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41a00000    # 20.0f

    new-instance v11, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v12, 0x9

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, v8, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v8

    iget-object v8, v8, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 614
    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 615
    invoke-static {v8, v9, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 614
    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    const-string v0, "\u0422\u0435\u0433\u043b\u043e"

    const-string v8, "Weight"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 617
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "kg"

    const/high16 v10, 0x41a00000    # 20.0f

    new-instance v11, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, v8, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v8

    iget-object v8, v8, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 616
    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0xa

    .line 617
    invoke-static {v8, v9, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 616
    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    const-string v0, "\u0420\u044a\u0441\u0442"

    const-string v8, "Height"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 619
    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-lez v0, :cond_369

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_162
    const-string v9, "cm"

    const/high16 v10, 0x41a00000    # 20.0f

    new-instance v11, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, v0, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 618
    invoke-static {p0, v8, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0xa

    .line 620
    invoke-static {v8, v9, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 618
    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u041d\u0438\u0441\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v9, "Low fitness"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "\u0421\u0440\u0435\u0434\u043d\u0430"

    const-string v9, "Medium"

    .line 623
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "\u0412\u0438\u0441\u043e\u043a\u0430"

    const-string v9, "High"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->ordinal()I

    move-result v7

    new-instance v8, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 622
    invoke-static {p0, v0, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v7, 0xa

    .line 624
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 622
    invoke-virtual {v1, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    :goto_1d3
    if-eqz v2, :cond_263

    iget-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksPostpartum:Z

    if-eqz v0, :cond_263

    .line 644
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 645
    const-string v1, "\u0421\u0435\u0434\u043c\u0438\u0446\u0438 \u0441\u043b\u0435\u0434 \u0440\u0430\u0436\u0434\u0430\u043d\u0435\u0442\u043e"

    const-string v7, "Weeks since birth"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u0441\u0435\u0434\u043c."

    const-string v9, "wk"

    .line 646
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x41a00000    # 20.0f

    new-instance v10, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v7

    iget-object v7, v7, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 645
    invoke-static {p0, v1, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 647
    const-string v1, "\u0426\u0435\u0437\u0430\u0440\u043e\u0432\u043e \u0441\u0435\u0447\u0435\u043d\u0438\u0435"

    const-string v7, "Cesarean section"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    const/4 v9, 0x1

    invoke-static {p0, v1, v7, v8, v9}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 648
    const-string v1, "\u041a\u044a\u0440\u043c\u0438"

    const-string v7, "Breastfeeding"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    const/4 v9, 0x2

    invoke-static {p0, v1, v7, v8, v9}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    const-string v1, "\u0414\u0438\u0430\u0441\u0442\u0430\u0437\u0430 (\u2265 2 \u043f\u0440\u044a\u0441\u0442\u0430)"

    const-string v7, "Diastasis (\u2265 2 fingers)"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    const/4 v9, 0x3

    invoke-static {p0, v1, v7, v8, v9}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 650
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    :cond_263
    if-eqz v2, :cond_309

    iget-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    if-eqz v0, :cond_309

    .line 653
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 654
    const-string v1, "\u0413\u0440\u044a\u0431: \u0438\u043c\u0430 \u043b\u0438 \u043d\u044f\u043a\u043e\u0435 \u043e\u0442 \u0442\u0435\u0437\u0438?"

    const-string v2, "Back: any of these?"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 655
    const-string v1, "\u041e\u0441\u0442\u0440\u0430 \u0431\u043e\u043b\u043a\u0430 (\u043f\u043e\u0434 6 \u0441\u0435\u0434\u043c\u0438\u0446\u0438)"

    const-string v2, "Acute pain (under 6 weeks)"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backAcute:Z

    const/16 v8, 0xa

    invoke-static {p0, v1, v2, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 656
    const-string v1, "\u0411\u043e\u043b\u043a\u0430 \u043a\u044a\u043c \u043a\u0440\u0430\u043a\u0430, \u0438\u0437\u0442\u0440\u044a\u043f\u0432\u0430\u043d\u0435, \u0441\u043b\u0430\u0431\u043e\u0441\u0442"

    const-string v2, "Pain down the leg, numbness, weakness"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backRadiating:Z

    const/16 v8, 0xb

    invoke-static {p0, v1, v2, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 657
    const-string v1, "\u0421\u043a\u043e\u0440\u043e\u0448\u043d\u0430 \u0442\u0440\u0430\u0432\u043c\u0430"

    const-string v2, "Recent trauma"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backTrauma:Z

    const/16 v8, 0xc

    invoke-static {p0, v1, v2, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 658
    const-string v1, "\u041e\u043f\u0435\u0440\u0430\u0446\u0438\u044f \u043d\u0430 \u0433\u0440\u044a\u0431\u043d\u0430\u0447\u043d\u0438\u044f \u0441\u0442\u044a\u043b\u0431"

    const-string v2, "Spinal surgery"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backSurgery:Z

    const/16 v8, 0xd

    invoke-static {p0, v1, v2, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 659
    const-string v1, "\u041d\u043e\u0449\u043d\u0430 \u0431\u043e\u043b\u043a\u0430 \u0438\u043b\u0438 \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430"

    const-string v2, "Night pain or fever"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backNightPainFever:Z

    const/16 v8, 0xe

    invoke-static {p0, v1, v2, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 660
    const-string v1, "\u041f\u0440\u043e\u0431\u043b\u0435\u043c \u0441 \u0443\u0440\u0438\u043d\u0438\u0440\u0430\u043d\u0435\u0442\u043e"

    const-string v2, "Bladder problem"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backBladder:Z

    const/16 v8, 0xf

    invoke-static {p0, v1, v2, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    :cond_309
    if-nez v6, :cond_44e

    .line 666
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlock(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 672
    :goto_30e
    const-string v0, "\u041a\u0430\u043a \u0435 \u0434\u043d\u0435\u0441"

    const-string v1, "How is today"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 673
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 675
    const/4 v1, 0x0

    .line 676
    const/4 v0, 0x0

    .line 677
    const/4 v2, 0x0

    :goto_32f
    sget-object v3, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_4cf

    .line 678
    sget-object v3, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    aget-object v8, v3, v2

    .line 679
    const-string v3, "t_period"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_465

    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v9, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-static {v3, v9, v10}, Lcom/isaigu/gymapp/ai/AiPersonal;->periodApplies(Lcom/isaigu/gymapp/ai/AiModel$Sex;ILjava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_465

    .line 680
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 677
    :goto_351
    add-int/lit8 v2, v2, 0x1

    goto :goto_32f

    .line 592
    :cond_354
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    goto/16 :goto_33

    .line 593
    :cond_363
    const/4 v0, 0x0

    goto/16 :goto_3c

    .line 612
    :cond_366
    const/4 v0, 0x1

    goto/16 :goto_a9

    .line 619
    :cond_369
    const-string v0, "\u2014"

    goto/16 :goto_162

    .line 627
    :cond_36d
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 628
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 629
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_42a

    const-string v0, "\u043d\u0438\u0441\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "low fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    :goto_384
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v9, :cond_444

    const-string v1, "\u0416\u0435\u043d\u0430"

    const-string v9, "Female"

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_397
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " \u00b7 "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " \u0433."

    const-string v9, " y"

    .line 633
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " \u00b7 "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " kg \u00b7 "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " cm \u00b7 "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v9, 0x0

    .line 632
    invoke-static {p0, v0, v1, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u270e  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u041f\u0440\u043e\u043c\u0435\u043d\u0438"

    const-string v8, "Edit"

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 637
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v8, 0x1d

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 639
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1d3

    .line 630
    :cond_42a
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_43a

    const-string v0, "\u0432\u0438\u0441\u043e\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "high fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_384

    .line 631
    :cond_43a
    const-string v0, "\u0441\u0440\u0435\u0434\u043d\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "medium fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_384

    .line 632
    :cond_444
    const-string v1, "\u041c\u044a\u0436"

    const-string v9, "Male"

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_397

    .line 668
    :cond_44e
    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_462

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_454
    invoke-static {p0, v0, v6}, Lcom/isaigu/gymapp/ai/AutoUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_30e

    :cond_462
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    goto :goto_454

    .line 683
    :cond_465
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 684
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_4c9

    const-string v3, "\u2713 "

    :goto_474
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v8, v10}, Lcom/isaigu/gymapp/ai/AiPersonal;->todayName(Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v3, v9, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v3

    .line 685
    new-instance v8, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v9, 0x26

    invoke-direct {v8, v9, v2}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 687
    if-eqz v1, :cond_49e

    const/4 v8, 0x3

    if-ne v0, v8, :cond_4b1

    .line 688
    :cond_49e
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 689
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_4cc

    const/4 v0, 0x0

    :goto_4a9
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    const/4 v0, 0x0

    .line 692
    :cond_4b1
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 693
    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 694
    invoke-virtual {v1, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_351

    .line 684
    :cond_4c9
    const-string v3, ""

    goto :goto_474

    .line 689
    :cond_4cc
    const/16 v0, 0x8

    goto :goto_4a9

    .line 697
    :cond_4cf
    if-eqz v1, :cond_4e9

    .line 698
    :goto_4d1
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_4e9

    .line 699
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v2

    goto :goto_4d1

    .line 702
    :cond_4e9
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    if-nez v6, :cond_504

    const/4 v0, 0x1

    .line 705
    :goto_4f4
    const-string v1, "\u041a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430  \u203a"

    const-string v2, "To strength  \u203a"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->footer(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 706
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->enable(Z)V

    .line 707
    return-void

    .line 704
    :cond_504
    const/4 v0, 0x0

    goto :goto_4f4
.end method

.method private static screenProgram(Landroid/content/Context;)V
    .registers 23

    .prologue
    .line 448
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v14

    .line 449
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    const-string v3, "\u041a\u0430\u043a\u0432\u043e \u043f\u0440\u0430\u0432\u0438\u043c \u0434\u043d\u0435\u0441?"

    const-string v4, "What are we doing today?"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->subtitle(Ljava/lang/String;)V

    .line 451
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v15, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 452
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v4

    .line 453
    array-length v2, v4

    new-array v5, v2, [Ljava/lang/String;

    .line 454
    const/4 v3, 0x0

    .line 455
    const/4 v2, 0x0

    :goto_24
    array-length v6, v4

    if-ge v2, v6, :cond_39

    .line 456
    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 457
    aget-object v6, v4, v2

    iget-object v7, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne v6, v7, :cond_36

    move v3, v2

    .line 455
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 462
    :cond_39
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 463
    const/16 v2, 0x10

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 464
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    move-object/from16 v0, p0

    invoke-static {v0, v5, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const v7, 0x3fcccccd    # 1.6f

    invoke-direct {v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_180

    iget-object v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_180

    const/4 v2, 0x1

    .line 468
    :goto_79
    if-eqz v2, :cond_b5

    .line 469
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "\u0421 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    const-string v6, "With movement"

    .line 470
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v2, 0x1

    const-string v5, "\u0412 \u043f\u043e\u043a\u043e\u0439"

    const-string v6, "At rest"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 471
    iget-object v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v2, v5, :cond_183

    const/4 v2, 0x0

    :goto_9b
    new-instance v5, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 469
    move-object/from16 v0, p0

    invoke-static {v0, v3, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v5, 0xe

    .line 471
    move-object/from16 v0, p0

    invoke-static {v3, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 469
    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    :cond_b5
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    iget-object v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v2, v3, :cond_fc

    .line 477
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "\u0421\u0430\u043c\u043e \u0448\u0430\u0431\u043b\u043e\u043d"

    const-string v5, "Template only"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "\u0421 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v5, "With exercises"

    .line 478
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-boolean v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    if-eqz v2, :cond_186

    const/4 v2, 0x1

    :goto_e3
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v5, 0x29

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 477
    move-object/from16 v0, p0

    invoke-static {v0, v3, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0xc

    .line 479
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 477
    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    :cond_fc
    iget-object v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v3, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v16

    .line 483
    iget-object v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v3, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v2, v3, v14}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v17

    .line 484
    iget-object v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v2

    .line 485
    if-eqz v2, :cond_125

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_125

    iget-object v3, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v4, 0x0

    invoke-static {v2, v3, v14, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_136

    .line 486
    :cond_125
    iget-object v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v14, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_189

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    :goto_134
    iput-object v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 490
    :cond_136
    const/4 v11, 0x0

    .line 491
    const/4 v10, 0x0

    .line 492
    const/4 v3, 0x0

    .line 493
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v18

    .line 494
    const/4 v2, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 495
    const/4 v2, 0x0

    move v12, v2

    :goto_15d
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_351

    .line 496
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 497
    iget-object v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v4, 0x0

    invoke-static {v8, v2, v14, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v5

    .line 498
    if-eqz v5, :cond_18b

    .line 500
    if-nez v11, :cond_452

    move-object v2, v3

    move v4, v10

    .line 495
    :goto_179
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    move-object v3, v2

    move v10, v4

    move-object v11, v5

    goto :goto_15d

    .line 467
    :cond_180
    const/4 v2, 0x0

    goto/16 :goto_79

    .line 471
    :cond_183
    const/4 v2, 0x1

    goto/16 :goto_9b

    .line 478
    :cond_186
    const/4 v2, 0x0

    goto/16 :goto_e3

    .line 486
    :cond_189
    const/4 v2, 0x0

    goto :goto_134

    .line 505
    :cond_18b
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iget-object v4, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 506
    if-eqz v19, :cond_44f

    move-object v9, v8

    .line 509
    :goto_196
    iget-object v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->goalColor(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)I

    move-result v13

    .line 510
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v20

    .line 511
    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 512
    const/high16 v3, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 513
    if-eqz v19, :cond_341

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v13, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    :goto_1c0
    const/high16 v3, 0x41900000    # 18.0f

    .line 514
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v5, v3

    if-eqz v19, :cond_345

    move v4, v13

    :goto_1cc
    if-eqz v19, :cond_34a

    const/high16 v3, 0x40200000    # 2.5f

    :goto_1d0
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 513
    invoke-static {v2, v5, v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 515
    new-instance v21, Landroid/widget/FrameLayout;

    invoke-direct/range {v21 .. v22}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 516
    iget-object v3, v8, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v4

    iget-object v5, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const/16 v6, 0xd2

    const/16 v7, 0x96

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/ProgramArt;->tile(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;II)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    move-object/from16 v0, v17

    if-ne v8, v0, :cond_24d

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2605 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0430\u043d\u0430"

    const-string v4, "Recommended"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 520
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const v6, 0x800033

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 522
    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 523
    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    :cond_24d
    if-eqz v19, :cond_2a5

    .line 526
    const-string v2, "\u2713"

    const/high16 v3, 0x41800000    # 16.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 527
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 528
    const/high16 v3, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v13, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41e00000    # 28.0f

    .line 530
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const v6, 0x800035

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 531
    const/4 v4, 0x0

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 532
    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    :cond_2a5
    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 536
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 537
    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v8, v3, v14}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043c\u0438\u043d"

    const-string v4, " min"

    .line 539
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41600000    # 14.0f

    if-eqz v19, :cond_34e

    move v2, v13

    :goto_2fa
    const/4 v5, 0x1

    .line 538
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x2

    .line 540
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 538
    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v12}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 543
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43660000    # 230.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 545
    const/high16 v3, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 546
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    add-int/lit8 v3, v10, 0x1

    move-object v2, v9

    move v4, v3

    move-object v5, v11

    goto/16 :goto_179

    .line 513
    :cond_341
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    goto/16 :goto_1c0

    .line 514
    :cond_345
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    move v4, v3

    goto/16 :goto_1cc

    :cond_34a
    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_1d0

    .line 539
    :cond_34e
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_2fa

    .line 549
    :cond_351
    if-nez v10, :cond_3e5

    .line 550
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    if-eqz v11, :cond_3db

    :goto_357
    move-object/from16 v0, p0

    invoke-static {v0, v2, v11}, Lcom/isaigu/gymapp/ai/AutoUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0xe

    .line 551
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 550
    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    :cond_368
    :goto_368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0423\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430: "

    const-string v4, "Operated by: "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v2

    if-eqz v2, :cond_443

    .line 568
    const-string v2, "\u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0441\u0430\u043c \u00b7 \u0441\u043c\u0435\u043d\u0438"

    const-string v4, "the client alone \u00b7 change"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 569
    :goto_387
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    .line 567
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 570
    const/4 v3, 0x0

    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 571
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    const-string v2, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v3, "Next"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->footer(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 574
    iget-object v2, v14, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    if-eqz v2, :cond_44d

    const/4 v2, 0x1

    :goto_3d7
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->enable(Z)V

    .line 575
    return-void

    .line 551
    :cond_3db
    const-string v3, "\u041d\u044f\u043c\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u0442\u043e\u0437\u0438 \u0438\u0437\u0431\u043e\u0440."

    const-string v4, "No program for this choice."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_357

    .line 553
    :cond_3e5
    new-instance v2, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    .line 554
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 555
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 556
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 557
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    const/16 v4, 0xe

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    new-instance v4, Lcom/isaigu/gymapp/ai/AutoUi$StripTo;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    sget v6, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/AutoUi$StripTo;-><init>(Landroid/widget/HorizontalScrollView;I)V

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 559
    if-eqz v3, :cond_368

    .line 560
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->desc()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 561
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 562
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 563
    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_368

    .line 569
    :cond_443
    const-string v2, "\u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u00b7 \u0441\u043c\u0435\u043d\u0438"

    const-string v4, "trainer \u00b7 change"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_387

    .line 574
    :cond_44d
    const/4 v2, 0x0

    goto :goto_3d7

    :cond_44f
    move-object v9, v3

    goto/16 :goto_196

    :cond_452
    move-object v2, v3

    move v4, v10

    move-object v5, v11

    goto/16 :goto_179
.end method

.method static show()V
    .registers 1

    .prologue
    .line 163
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 172
    :cond_e
    :goto_e
    return-void

    .line 166
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_e

    .line 168
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->open(Landroid/app/Activity;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_e

    .line 170
    :catch_1d
    move-exception v0

    goto :goto_e
.end method

.method private static show(Landroid/app/Activity;I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 176
    const/4 v0, 0x3

    if-ne p1, v0, :cond_23

    .line 178
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 179
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 180
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    :goto_16
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    .line 192
    :goto_19
    return-void

    .line 180
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_16

    .line 183
    :cond_23
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_31

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_68

    .line 184
    :cond_31
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 185
    const-string v0, ""

    const-string v1, ""

    const/16 v2, 0x49c

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 186
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x25

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 191
    :cond_68
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_19
.end method

.method private static showHow(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13

    .prologue
    const/high16 v10, 0x41b00000    # 22.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1294
    if-eqz p0, :cond_12

    .line 1295
    :goto_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1322
    :goto_11
    return-void

    .line 1294
    :cond_12
    const-string p0, ""

    goto :goto_9

    .line 1298
    :cond_15
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    .line 1299
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1300
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1301
    if-nez p1, :cond_26

    .line 1302
    new-array p1, v1, [Ljava/lang/String;

    :cond_26
    move v0, v1

    .line 1304
    :goto_27
    array-length v2, p1

    if-ge v0, v2, :cond_a6

    .line 1305
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1306
    const/16 v2, 0x30

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1307
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v6, 0x1

    invoke-static {v3, v2, v9, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1308
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1309
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v6, 0x26

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1310
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1311
    invoke-static {v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1312
    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    aget-object v2, p1, v0

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v2, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1314
    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1315
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1316
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1317
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a4

    move v2, v1

    :goto_9a
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1304
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1318
    :cond_a4
    const/4 v2, 0x5

    goto :goto_9a

    .line 1320
    :cond_a6
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1321
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_11
.end method

.method private static showInfo(Landroid/view/View;I)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 1271
    :try_start_2
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1272
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1273
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    .line 1290
    :goto_16
    return-void

    .line 1276
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1277
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoUi;->infoText(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1278
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1279
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1280
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v4, -0xbd5a0b

    const v5, 0x3e23d70a    # 0.16f

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const v5, -0xbd5a0b

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1281
    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 1280
    invoke-static {v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1282
    new-instance v3, Landroid/widget/PopupWindow;

    const/high16 v4, 0x43be0000    # 380.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-direct {v3, v2, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    .line 1283
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1284
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1285
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 1286
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    if-ne p1, v7, :cond_b5

    :goto_a2
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, p0, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_ab} :catch_ad

    goto/16 :goto_16

    .line 1287
    :catch_ad
    move-exception v0

    .line 1288
    const-string v1, "AutoUi.info"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1286
    :cond_b5
    const/high16 v0, 0x43b20000    # 356.0f

    :try_start_b7
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_ba} :catch_ad

    move-result v0

    neg-int v0, v0

    goto :goto_a2
.end method

.method private static showLabelled(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 16

    .prologue
    const/4 v4, 0x2

    const/4 v12, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1329
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1360
    :goto_d
    return-void

    .line 1332
    :cond_e
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    .line 1333
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1334
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1335
    const/4 v0, 0x3

    new-array v6, v0, [I

    const v0, -0xd95966

    aput v0, v6, v1

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    aput v0, v6, v12

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    aput v0, v6, v4

    move v0, v1

    move v2, v1

    .line 1337
    :goto_2d
    array-length v3, p2

    if-ge v0, v3, :cond_c7

    .line 1338
    aget-object v3, p2, v0

    if-eqz v3, :cond_40

    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_43

    .line 1337
    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1341
    :cond_43
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 1342
    const/16 v3, 0x30

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1343
    array-length v3, v6

    rem-int v3, v0, v3

    aget v3, v6, v3

    .line 1344
    aget-object v8, p1, v0

    const/high16 v9, 0x41300000    # 11.0f

    invoke-static {v5, v8, v9, v3, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 1345
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1346
    const/16 v9, 0x22

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v3, v9, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1347
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42580000    # 54.0f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41b00000    # 22.0f

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1348
    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1349
    invoke-virtual {v7, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    aget-object v3, p2, v0

    const/high16 v8, 0x41600000    # 14.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v3, v8, v9, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1351
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1352
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1353
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1354
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v1, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1355
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    if-nez v2, :cond_c4

    move v3, v4

    :goto_b9
    invoke-static {v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1356
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_40

    .line 1355
    :cond_c4
    const/16 v3, 0xa

    goto :goto_b9

    .line 1358
    :cond_c7
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1359
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_d
.end method

.method private static showPhases(Lcom/isaigu/gymapp/ai/AutoEngine;Z)V
    .registers 16

    .prologue
    .line 1146
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    .line 1147
    :goto_6
    sget v1, Lcom/isaigu/gymapp/ai/AutoUi;->phasesShownFor:I

    if-ne v0, v1, :cond_d

    .line 1180
    :cond_a
    :goto_a
    return-void

    .line 1146
    :cond_b
    const/4 v0, -0x1

    goto :goto_6

    .line 1150
    :cond_d
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->phasesShownFor:I

    .line 1151
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1152
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_f1

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1153
    if-eqz p1, :cond_a

    .line 1156
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1157
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v7

    .line 1158
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 1159
    const/4 v0, 0x0

    move v1, v0

    :goto_2e
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_11c

    .line 1160
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1161
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v2

    if-ne v1, v2, :cond_f5

    const/4 v2, 0x1

    .line 1162
    :goto_45
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v3

    if-ge v1, v3, :cond_f8

    const/4 v3, 0x1

    .line 1163
    :goto_4c
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v4

    if-eqz v4, :cond_fb

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 1164
    :goto_57
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-eqz v5, :cond_105

    const-string v5, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v10, "Recovery"

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1165
    :goto_6a
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "  "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v10, v0

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u2032"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v9, 0x41500000    # 13.0f

    .line 1166
    if-eqz v2, :cond_10f

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1164
    :goto_92
    invoke-static {v6, v5, v9, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 1167
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v6, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v5, v0, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1168
    if-eqz v2, :cond_112

    const/16 v0, 0x30

    :goto_b5
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v10, v0

    .line 1169
    if-eqz v2, :cond_115

    :goto_c2
    if-eqz v2, :cond_117

    const v0, 0x3f99999a    # 1.2f

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 1168
    :goto_cb
    invoke-static {v9, v10, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1170
    if-eqz v3, :cond_119

    const v0, 0x3ee66666    # 0.45f

    :goto_d7
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1171
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1173
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1174
    invoke-virtual {v8, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2e

    .line 1152
    :cond_f1
    const/16 v0, 0x8

    goto/16 :goto_19

    .line 1161
    :cond_f5
    const/4 v2, 0x0

    goto/16 :goto_45

    .line 1162
    :cond_f8
    const/4 v3, 0x0

    goto/16 :goto_4c

    .line 1163
    :cond_fb
    if-eqz v2, :cond_101

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto/16 :goto_57

    :cond_101
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_57

    .line 1165
    :cond_105
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6a

    .line 1166
    :cond_10f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_92

    .line 1168
    :cond_112
    const/16 v0, 0x14

    goto :goto_b5

    .line 1169
    :cond_115
    const/4 v4, 0x0

    goto :goto_c2

    :cond_117
    const/4 v0, 0x0

    goto :goto_cb

    .line 1170
    :cond_119
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_d7

    .line 1176
    :cond_11c
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, v6}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 1177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1178
    invoke-virtual {v0, v8}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1179
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_a
.end method

.method static startLabel(Lcom/isaigu/gymapp/ai/AutoEngine;J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 1574
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 1575
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_82

    .line 1576
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "recovery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1578
    :goto_16
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v1

    .line 1579
    if-lez v1, :cond_44

    .line 1580
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

    .line 1591
    :goto_3a
    return-object v0

    .line 1577
    :cond_3b
    const-string v0, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430 \u0441\u0435\u0440\u0438\u044f"

    const-string v1, "next set"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1582
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

    .line 1583
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

    .line 1585
    :cond_82
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_a4

    .line 1586
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

    .line 1588
    :cond_a4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1589
    const-string v0, "\u25b6 \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v1, "\u25b6 Resume"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 1591
    :cond_b3
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_c1

    const-string v0, "\u2026 \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u0430"

    const-string v1, "\u2026 HR coming down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    .line 1592
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
    .line 1855
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 1856
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 1857
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_45

    if-eqz v1, :cond_45

    .line 1858
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 1859
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

    .line 1864
    :goto_41
    return-object v0

    .line 1859
    :cond_42
    const-string v0, ""

    goto :goto_27

    .line 1861
    :cond_45
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_52

    .line 1862
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v1, "Ready programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 1864
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

    .line 330
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTipText(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_10

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    if-nez v1, :cond_11

    .line 340
    :cond_10
    :goto_10
    return-void

    .line 334
    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 335
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v3, 0x3e23d70a    # 0.16f

    invoke-static {v2, v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 336
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 335
    invoke-static {v2, v3, v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v6, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x25

    invoke-direct {v0, v2, v5}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
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
    .line 343
    packed-switch p0, :pswitch_data_2a

    .line 365
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 345
    :pswitch_5
    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u0432\u0430\u0442 \u0441\u0435 \u0441\u0430\u043c\u043e \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435, \u043f\u043e\u0437\u0432\u043e\u043b\u0435\u043d\u0438 \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442. \u201e\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0430\u043d\u0430\u201c \u0435 \u043f\u043e \u043f\u0440\u043e\u0444\u0438\u043b\u0430."

    const-string v1, "Only the programs allowed for this client are shown. \u201cRecommended\u201d follows the profile."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 348
    :pswitch_e
    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044a\u0442 \u0435 \u043e\u0442 \u043a\u043b\u0438\u0435\u043d\u0442\u0441\u043a\u0438\u044f \u0437\u0430\u043f\u0438\u0441, \u043f\u043b\u0430\u043d\u044a\u0442 \u0441\u0435 \u0441\u043c\u044f\u0442\u0430 \u043e\u0442 \u043d\u0435\u0433\u043e. \u041c\u043e\u0436\u0435 \u0434\u0430 \u0441\u043a\u044a\u0441\u0438\u0448 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u0438 \u0434\u0430 \u0441\u043c\u0435\u043d\u0438\u0448 \u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442\u0430, \u043d\u0435 \u0438 \u0434\u0430 \u043c\u0438\u043d\u0435\u0448 \u043b\u0438\u043c\u0438\u0442\u0438\u0442\u0435. \u201e\u0414\u043d\u0435\u0441\u201c \u2014 \u043a\u0430\u043a \u0435 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0441\u0435\u0433\u0430 (\u043d\u0435\u0434\u043e\u0441\u043f\u0430\u043b, \u0441\u0442\u0440\u0435\u0441, \u0446\u0438\u043a\u044a\u043b\u2026): \u043d\u0435 \u0441\u043f\u0438\u0440\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430, \u043f\u043b\u0430\u043d\u044a\u0442 \u0441\u0435 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u0441\u0430\u043c."

    const-string v1, "The profile comes from the client record and the plan from the profile. You may shorten the time and change the intensity, not pass the limits. \u201cToday\u201d \u2014 how the client is now (short on sleep, stress, period\u2026): it never stops the session, the plan adapts by itself."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 355
    :pswitch_17
    const-string v0, "\u041a\u0430\u0447\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442 \u0434\u043e \u0446\u0435\u043b\u0435\u0432\u043e\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435. \u0421\u044a\u043e\u0442\u043d\u043e\u0448\u0435\u043d\u0438\u0435\u0442\u043e \u043c\u0435\u0436\u0434\u0443 \u0437\u043e\u043d\u0438\u0442\u0435 \u2014 \u0441 \u043f\u043b\u044a\u0437\u0433\u0430\u0447\u0438\u0442\u0435 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b\u0438\u0442\u0435 \u043d\u0430 \u0440\u0435\u0434\u0430; \u043f\u0430\u0437\u0438 \u0441\u0435 \u0434\u043e \u043a\u0440\u0430\u044f. \u201e\u0421\u0442\u0430\u0440\u0442\u201c \u0437\u0430\u043f\u043e\u0447\u0432\u0430 \u043e\u0442 \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430\u0442\u0430 \u0441 60 % \u043e\u0442 \u043d\u0435\u044f."

    const-string v1, "Raise each client\'s strength to the target feeling. The balance between zones \u2014 with the row\'s channel sliders; it holds to the end. Start begins with the warm-up at 60 % of it."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 358
    :pswitch_20
    const-string v0, "\u0423\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0435 \u0441 \u0433\u043b\u0430\u0432\u043d\u0438\u0442\u0435 \u25b6 / \u275a\u275a \u0438 \u25a0. \u25a0 \u0434\u0435\u0439\u0441\u0442\u0432\u0430 \u043e\u0442 \u043f\u0430\u0443\u0437\u0430: \u043f\u044a\u0440\u0432\u0438\u044f\u0442 \u2014 \u043a\u044a\u043c 10 \u043c\u0438\u043d \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435, \u0432\u0442\u043e\u0440\u0438\u044f\u0442 \u2014 \u043a\u0440\u0430\u0439. \u0418\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0441\u0430 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e 20 \u043c\u0438\u043d. \u2715 \u0441\u043a\u0440\u0438\u0432\u0430 \u0442\u0430\u0431\u043b\u043e\u0442\u043e \u2014 \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430. \u24d8 \u043d\u0430 \u0432\u0441\u044f\u043a\u0430 \u0447\u0430\u0441\u0442 \u043a\u0430\u0437\u0432\u0430 \u043a\u0430\u043a\u0432\u043e \u043f\u043e\u043a\u0430\u0437\u0432\u0430."

    const-string v1, "Driven by the main \u25b6 / \u275a\u275a and \u25a0. \u25a0 works from a pause: the first \u2014 to the 10 min recovery, the second \u2014 the end. Impulses at most 20 min. \u2715 hides the board \u2014 the session goes on. Each part\'s \u24d8 says what it shows."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 343
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_e
        :pswitch_17
        :pswitch_20
    .end packed-switch
.end method

.method private static subtitle(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1782
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1783
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1784
    return-void

    .line 1783
    :cond_18
    const/16 v0, 0x8

    goto :goto_14
.end method

.method private static tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 1815
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1816
    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1817
    const/high16 v1, 0x41c00000    # 24.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x1

    invoke-static {p0, p3, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1818
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1819
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1820
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p4, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1821
    return-void
.end method

.method private static tipsToggle(Landroid/content/Context;)Landroid/view/View;
    .registers 7

    .prologue
    .line 370
    const-string v0, "\u041f\u043e\u0434\u0441\u043a\u0430\u0437\u043a\u0438"

    const-string v1, "Tips"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041f\u0440\u0438 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u043f\u043e\u043b\u0437\u0432\u0430\u043d\u0435 \u043d\u0430 \u0431\u0443\u0442\u043e\u043d\u0438\u0442\u0435 \u0438 \u043c\u0435\u043d\u044e\u0442\u0430\u0442\u0430. \u041b\u0438\u043c\u0438\u0442\u0438\u0442\u0435 \u0438 \u0437\u0430\u0449\u0438\u0442\u0438\u0442\u0435 \u0441\u0435 \u043f\u043e\u043a\u0430\u0437\u0432\u0430\u0442 \u0432\u0438\u043d\u0430\u0433\u0438."

    const-string v2, "On the first use of buttons and menus. Limits and safety always show."

    .line 371
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn()Z

    move-result v2

    new-instance v3, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 370
    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1848
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 1851
    :goto_8
    return-void

    .line 1849
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private static toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;
    .registers 7

    .prologue
    .line 1799
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
    .line 833
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 834
    const/16 v0, 0x50

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 835
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneNames()[Ljava/lang/String;

    move-result-object v3

    .line 836
    const/4 v0, 0x0

    :goto_e
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel;->DISPLAY_ORDER:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d5

    .line 837
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel;->DISPLAY_ORDER:[I

    aget v4, v1, v0

    .line 838
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 839
    const/16 v1, 0x51

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 840
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v6, v1, v4

    .line 841
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

    .line 842
    const/16 v7, 0x11

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 843
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 844
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 845
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 846
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

    .line 847
    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 848
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 849
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

    .line 850
    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 851
    invoke-virtual {v5, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    aget-object v1, v3, v4

    const/high16 v4, 0x41300000    # 11.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {p0, v1, v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 853
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 854
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 855
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 841
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

    .line 857
    :cond_d5
    return-object v2
.end method

.method static zoneNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 861
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 862
    const/4 v1, 0x3

    const-string v2, "\u041f\u0440\u0430\u0441\u0435\u0446"

    const-string v3, "Calf"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 863
    const/4 v1, 0x2

    const-string v2, "\u041f\u0440. \u0431\u0435\u0434\u0440\u043e"

    const-string v3, "Quads"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 864
    const/16 v1, 0x9

    const-string v2, "\u0417\u0430\u0434. \u0431\u0435\u0434\u0440\u043e"

    const-string v3, "Hamstr."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 865
    const/16 v1, 0x8

    const-string v2, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v3, "Glutes"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 866
    const/4 v1, 0x1

    const-string v2, "\u041a\u043e\u0440\u0435\u043c"

    const-string v3, "Abs"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 867
    const/4 v1, 0x7

    const-string v2, "\u041a\u0440\u044a\u0441\u0442"

    const-string v3, "Low back"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 868
    const/4 v1, 0x6

    const-string v2, "\u0413\u0440\u044a\u0431"

    const-string v3, "Back"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 869
    const/4 v1, 0x5

    const-string v2, "\u0422\u0440\u0430\u043f\u0435\u0446"

    const-string v3, "Traps"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 870
    const/4 v1, 0x0

    const-string v2, "\u0413\u044a\u0440\u0434\u0438"

    const-string v3, "Chest"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 871
    const/4 v1, 0x4

    const-string v2, "\u0420\u044a\u0446\u0435"

    const-string v3, "Arms"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 872
    return-object v0
.end method
