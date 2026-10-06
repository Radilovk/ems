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

.field private static final A_KIND:I = 0x5

.field private static final A_MOD:I = 0x2d

.field private static final A_NEXT:I = 0x2

.field private static final A_OPERATOR:I = 0x6

.field private static final A_PROGRAM:I = 0x7

.field private static final A_SETUP_BACK:I = 0x2c

.field private static final A_SETUP_GO:I = 0x2b

.field private static final A_SEX:I = 0x1c

.field private static final A_STATE:I = 0x26

.field private static final A_TIPS:I = 0x24

.field private static final A_TODAY:I = 0xd

.field private static final A_VARIANT:I = 0x12

.field private static final A_WEEKS:I = 0xf

.field private static final A_WEIGHT:I = 0xa

.field private static final A_WORKOUT:I = 0x2a

.field private static final INFO_BOARD:I = 0x3

.field private static final INFO_BODY:I = 0x1

.field private static final INFO_SET:I = 0x0

.field private static final INFO_TIMELINE:I = 0x2

.field private static final NEXT_SOON_S:D = 10.0

.field private static final SETUP_STEPS:I = 0x2

.field static final STEP_CLIENT:I = 0x1

.field static final STEP_PROGRAM:I = 0x0

.field static final STEP_RUN:I = 0x3

.field private static boardSub:Landroid/widget/TextView;

.field private static details:Z

.field private static healthOk:Z

.field private static healthOpen:Z

.field private static heightTouched:Z

.field private static host:Landroid/app/Activity;

.field private static howShownFor:Ljava/lang/String;

.field private static infoOpen:Z

.field private static infoPop:Landroid/widget/PopupWindow;

.field private static modId:Ljava/lang/String;

.field private static phasesShownFor:I

.field private static pickList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;"
        }
    .end annotation
.end field

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

.field private static setupGo:Landroid/widget/TextView;

.field private static final setupLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static setupNote:Landroid/widget/TextView;

.field private static shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private static step:I

.field private static stripX:I

.field private static workoutId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    const/4 v0, -0x2

    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->phasesShownFor:I

    .line 114
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    .line 1269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupLabels:Ljava/util/List;

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
    .line 30
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/View;I)V
    .registers 2

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoUi;->showInfo(Landroid/view/View;I)V

    return-void
.end method

.method static action(III)V
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1849
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v2

    .line 1850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1851
    packed-switch p0, :pswitch_data_24a

    .line 1992
    :goto_d
    :pswitch_d
    return-void

    .line 1853
    :pswitch_e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_1a

    .line 1854
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_d

    .line 1856
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 1857
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_d

    .line 1860
    :pswitch_21
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->next()V

    goto :goto_d

    .line 1861
    :pswitch_25
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->back()V

    goto :goto_d

    .line 1862
    :pswitch_29
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_d

    .line 1864
    :pswitch_2d
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1865
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v0

    aget-object v0, v0, p2

    .line 1866
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-eq v0, v3, :cond_53

    .line 1867
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 1868
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1869
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v3, :cond_60

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_4f
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 1871
    :cond_51
    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 1988
    :cond_53
    :goto_53
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-ne v0, v1, :cond_5a

    .line 1989
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 1991
    :cond_5a
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_d

    .line 1869
    :cond_60
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_4f

    .line 1876
    :pswitch_63
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1877
    if-ne p2, v1, :cond_68

    move v0, v1

    :cond_68
    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    goto :goto_53

    .line 1880
    :pswitch_6b
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1881
    if-nez p2, :cond_76

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_71
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 1882
    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_53

    .line 1881
    :cond_76
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_71

    .line 1885
    :pswitch_79
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v0

    if-eqz v0, :cond_84

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    :goto_81
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    goto :goto_53

    :cond_84
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    goto :goto_81

    .line 1887
    :pswitch_87
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->profileOpen:Z

    goto :goto_53

    .line 1888
    :pswitch_8a
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->healthOpen:Z

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->healthOk:Z

    goto :goto_53

    .line 1889
    :pswitch_8f
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    if-nez v2, :cond_94

    move v0, v1

    :cond_94
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    goto :goto_53

    .line 1891
    :pswitch_97
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_a1

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    :cond_a1
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1892
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    .line 1893
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_53

    .line 1894
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 1895
    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    goto :goto_53

    .line 1900
    :pswitch_be
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_c8

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    :cond_c8
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1901
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    array-length v0, v0

    if-ge p1, v0, :cond_53

    .line 1902
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->id:Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 1903
    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto/16 :goto_53

    .line 1906
    :pswitch_db
    if-nez p2, :cond_e3

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_df
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_53

    :cond_e3
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_df

    .line 1907
    :pswitch_e6
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->values()[Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v0

    aget-object v0, v0, p2

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto/16 :goto_53

    .line 1908
    :pswitch_f0
    const/16 v0, 0xe

    const/16 v3, 0x5f

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    add-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    goto/16 :goto_53

    .line 1909
    :pswitch_103
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

    goto/16 :goto_53

    .line 1911
    :pswitch_11c
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_128

    const/16 v0, 0xaa

    :goto_122
    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 1912
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->heightTouched:Z

    goto/16 :goto_53

    .line 1911
    :cond_128
    const/16 v0, 0x78

    const/16 v3, 0xdc

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    add-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_122

    .line 1915
    :pswitch_138
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-ne p2, v1, :cond_143

    move v0, v1

    :cond_143
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_53

    .line 1918
    :pswitch_14c
    sget-object v3, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-object v0, v3, v0

    .line 1919
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 1920
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_53

    .line 1925
    :pswitch_16c
    if-ne p2, v1, :cond_16f

    move v0, v1

    .line 1926
    :cond_16f
    packed-switch p1, :pswitch_data_2a8

    .line 1931
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hydrated:Z

    goto/16 :goto_53

    .line 1927
    :pswitch_178
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->feverOrIllness:Z

    goto/16 :goto_53

    .line 1928
    :pswitch_17e
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->alcoholOrStress48h:Z

    goto/16 :goto_53

    .line 1929
    :pswitch_184
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    goto/16 :goto_53

    .line 1930
    :pswitch_18a
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->ateLast2h:Z

    goto/16 :goto_53

    .line 1935
    :pswitch_190
    if-ne p2, v1, :cond_193

    move v0, v1

    .line 1936
    :cond_193
    packed-switch p1, :pswitch_data_2b4

    .line 1945
    :pswitch_196
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backBladder:Z

    goto/16 :goto_53

    .line 1937
    :pswitch_19c
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    goto/16 :goto_53

    .line 1938
    :pswitch_1a2
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    goto/16 :goto_53

    .line 1939
    :pswitch_1a8
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    goto/16 :goto_53

    .line 1940
    :pswitch_1ae
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backAcute:Z

    goto/16 :goto_53

    .line 1941
    :pswitch_1b4
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backRadiating:Z

    goto/16 :goto_53

    .line 1942
    :pswitch_1ba
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backTrauma:Z

    goto/16 :goto_53

    .line 1943
    :pswitch_1c0
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backSurgery:Z

    goto/16 :goto_53

    .line 1944
    :pswitch_1c6
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backNightPainFever:Z

    goto/16 :goto_53

    .line 1949
    :pswitch_1cc
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

    goto/16 :goto_53

    .line 1951
    :pswitch_1e1
    iput p2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    .line 1952
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_53

    .line 1955
    :pswitch_1e8
    if-ne p2, v1, :cond_1f1

    :goto_1ea
    iput-boolean v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 1956
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_d

    :cond_1f1
    move v1, v0

    .line 1955
    goto :goto_1ea

    .line 1959
    :pswitch_1f3
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    if-nez v2, :cond_1f8

    move v0, v1

    :cond_1f8
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    goto/16 :goto_53

    .line 1962
    :pswitch_1fc
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    if-ne p2, v1, :cond_205

    :goto_200
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->setTips(Landroid/content/Context;Z)V

    goto/16 :goto_d

    :cond_205
    move v1, v0

    goto :goto_200

    .line 1965
    :pswitch_207
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo()V

    goto/16 :goto_d

    .line 1968
    :pswitch_20c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->setupBack()V

    goto/16 :goto_d

    .line 1971
    :pswitch_211
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_21b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    :cond_21b
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1972
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_53

    .line 1973
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    goto/16 :goto_53

    .line 1978
    :pswitch_233
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 1979
    if-eqz v0, :cond_244

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_244

    .line 1980
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->next()Z

    .line 1982
    :cond_244
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V

    goto/16 :goto_d

    .line 1851
    nop

    :pswitch_data_24a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_21
        :pswitch_25
        :pswitch_2d
        :pswitch_6b
        :pswitch_79
        :pswitch_97
        :pswitch_e6
        :pswitch_f0
        :pswitch_103
        :pswitch_11c
        :pswitch_138
        :pswitch_16c
        :pswitch_190
        :pswitch_1cc
        :pswitch_d
        :pswitch_d
        :pswitch_1e1
        :pswitch_1e8
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_db
        :pswitch_87
        :pswitch_d
        :pswitch_8a
        :pswitch_8f
        :pswitch_29
        :pswitch_d
        :pswitch_d
        :pswitch_1fc
        :pswitch_1f3
        :pswitch_14c
        :pswitch_d
        :pswitch_233
        :pswitch_63
        :pswitch_211
        :pswitch_207
        :pswitch_20c
        :pswitch_be
    .end packed-switch

    .line 1926
    :pswitch_data_2a8
    .packed-switch 0x0
        :pswitch_178
        :pswitch_17e
        :pswitch_184
        :pswitch_18a
    .end packed-switch

    .line 1936
    :pswitch_data_2b4
    .packed-switch 0x1
        :pswitch_19c
        :pswitch_1a2
        :pswitch_1a8
        :pswitch_196
        :pswitch_196
        :pswitch_196
        :pswitch_196
        :pswitch_196
        :pswitch_196
        :pswitch_1ae
        :pswitch_1b4
        :pswitch_1ba
        :pswitch_1c0
        :pswitch_1c6
    .end packed-switch
.end method

.method private static addPick(Lcom/isaigu/gymapp/ai/Workout;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V
    .registers 5

    .prologue
    .line 708
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/ai/Workout;->fits(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 719
    :cond_12
    :goto_12
    return-void

    .line 711
    :cond_13
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->presetProgram(Lcom/isaigu/gymapp/ai/Workout;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 712
    if-eqz v0, :cond_22

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 715
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_3c

    const-string v0, "m"

    :goto_30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 718
    :cond_36
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 715
    :cond_3c
    const-string v0, "f"

    goto :goto_30
.end method

.method private static back()V
    .registers 2

    .prologue
    .line 459
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-lez v0, :cond_10

    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_10

    .line 460
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    .line 462
    :cond_10
    return-void
.end method

.method private static banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .registers 8

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v3, 0x41600000    # 14.0f

    .line 2083
    const/4 v0, 0x1

    invoke-static {p0, p2, v3, p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 2084
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2085
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

    .line 2086
    return-object v0
.end method

.method static buildBoard(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 15

    .prologue
    .line 1130
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 1131
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_404

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    :goto_a
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 1132
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    .line 1133
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    .line 1134
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1137
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->boardSub:Landroid/widget/TextView;

    .line 1140
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1141
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1142
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1143
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1144
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoUi;->goalColor(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)I

    move-result v7

    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    .line 1145
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const v10, 0x800013

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1147
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 1148
    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1149
    const-string v7, ""

    const/high16 v8, 0x42200000    # 40.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v10, 0x1

    invoke-static {p0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    sput-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    .line 1150
    sget-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    const-string v8, "sans-serif-condensed"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1151
    sget-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1152
    sget-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1153
    new-instance v7, Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/ai/AutoViews$Dots;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    .line 1154
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41b00000    # 22.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1155
    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1156
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    invoke-virtual {v6, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1157
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const v10, 0x800015

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    new-instance v6, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;

    const/high16 v7, 0x43960000    # 300.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, p0, v7, v8}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;-><init>(Landroid/content/Context;II)V

    .line 1162
    new-instance v7, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    const v8, 0x3d4ccccd    # 0.05f

    const/high16 v9, 0x44fa0000    # 2000.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, p0, v8, v9}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;-><init>(Landroid/content/Context;FI)V

    .line 1163
    new-instance v8, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v8, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 1164
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v9, 0x2

    const/4 v12, 0x2

    invoke-virtual {v8, v10, v11, v9, v12}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 1165
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v7, v8}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1166
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const/4 v9, 0x0

    if-eqz v1, :cond_408

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_ea
    invoke-static {v8, v9, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->ringKey(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ProgramArt;->ring(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    .line 1167
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1168
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    .line 1169
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1170
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v1, 0x28

    const/4 v8, 0x0

    invoke-direct {v0, v1, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1171
    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->addView(Landroid/view/View;)V

    .line 1172
    const-string v0, "\u2192"

    const/high16 v1, 0x41b00000    # 22.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v8, 0x0

    invoke-static {p0, v0, v1, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    .line 1173
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1174
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->addView(Landroid/view/View;)V

    .line 1175
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    const v1, 0x3d75c28f    # 0.06f

    const/high16 v7, 0x44fa0000    # 2000.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v0, p0, v1, v7}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;-><init>(Landroid/content/Context;FI)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    .line 1176
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    .line 1177
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 1178
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v1, 0x2

    const/4 v7, 0x2

    invoke-virtual {v0, v8, v9, v1, v7}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 1179
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1180
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runNextRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1181
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    invoke-virtual {v6, v0}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->addView(Landroid/view/View;)V

    .line 1182
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v7, -0x1

    invoke-direct {v0, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1185
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1186
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    const-string v1, ""

    const/high16 v5, 0x41900000    # 18.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    .line 1188
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1189
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1190
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v6, 0x28

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1191
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    .line 1194
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    const/4 v5, 0x6

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    .line 1196
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1197
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1198
    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1199
    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1200
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1201
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v5, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    const-string v0, "-"

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    .line 1203
    const/4 v0, -0x2

    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->phasesShownFor:I

    .line 1204
    const/4 v0, 0x0

    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->infoCorner(Landroid/content/Context;Landroid/widget/LinearLayout;I)Landroid/view/View;

    move-result-object v1

    .line 1205
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    .line 1206
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/high16 v6, 0x40400000    # 3.0f

    .line 1207
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 1206
    invoke-static {v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1208
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1209
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    move-object v0, v1

    .line 1210
    check-cast v0, Landroid/widget/FrameLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1212
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0x40133333    # 2.3f

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1214
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1215
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1216
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 1217
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1218
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1219
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1220
    const-string v4, ""

    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    .line 1221
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    const v5, 0x800005

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1222
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1223
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1224
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1226
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    .line 1227
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42780000    # 62.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    const-string v4, "\u041d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435"

    const-string v5, "Load"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1229
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1230
    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1231
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    .line 1232
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1233
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1234
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1235
    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1236
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1237
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1238
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1239
    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->infoCorner(Landroid/content/Context;Landroid/widget/LinearLayout;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1240
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1243
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1244
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    .line 1245
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42b80000    # 92.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1246
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1247
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1248
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    .line 1249
    new-instance v2, Lcom/isaigu/gymapp/ai/ImpulseGlyph;

    const/4 v3, 0x1

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const v5, 0x3fe66666    # 1.8f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;-><init>(IIF)V

    .line 1250
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->setBounds(IIII)V

    .line 1251
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1252
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1253
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1254
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    .line 1255
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    const v3, 0x800005

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1256
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1257
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1258
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1259
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1260
    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1261
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1262
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->infoCorner(Landroid/content/Context;Landroid/widget/LinearLayout;I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1264
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V

    .line 1265
    return-void

    .line 1131
    :cond_404
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    goto/16 :goto_a

    .line 1166
    :cond_408
    const/4 v0, 0x0

    goto/16 :goto_ea
.end method

.method static buildSetupBoard(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 14

    .prologue
    .line 1279
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 1280
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_298

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    :goto_a
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 1281
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    .line 1282
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 1283
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->setupLabels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1284
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1285
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1286
    const/16 v2, 0x10

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1288
    if-eqz v0, :cond_29c

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 1289
    :goto_2a
    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v2

    if-eqz v2, :cond_29f

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ProgramArt;->templateKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v0

    .line 1290
    :goto_36
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ProgramArt;->ring(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43480000    # 200.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x43480000    # 200.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1292
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1293
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1294
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1295
    const-string v5, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u0432\u0430\u043d\u0435"

    const-string v6, "Setting up"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41d00000    # 26.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x1

    invoke-static {p0, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1296
    iget-object v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoUi;->levelName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AutoUi;->levelColor(I)I

    move-result v6

    invoke-static {p0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    .line 1297
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1299
    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1300
    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1301
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u00b7 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x1

    invoke-static {p0, v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v5, 0x2

    .line 1303
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 1302
    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1304
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1305
    iget-object v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v7, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v5

    .line 1306
    const-string v6, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v7, "Warm-up"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget v8, v5, v8

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u043c\u0438\u043d"

    const-string v9, " min"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v0, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1307
    const-string v6, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430"

    const-string v7, "Main"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    aget v8, v5, v8

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u043c\u0438\u043d"

    const-string v9, " min"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {p0, v0, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1308
    const-string v6, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v7, "Recovery"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    aget v5, v5, v8

    div-int/lit8 v5, v5, 0x3c

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " \u043c\u0438\u043d"

    const-string v8, " min"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xa

    invoke-static {p0, v0, v6, v5, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1309
    const/16 v5, 0x8

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1310
    const-string v0, "\u2460 \u041e\u0431\u0449\u0430 \u0441\u0438\u043b\u0430 \u2014 \u043f\u043b\u044a\u0437\u0433\u0430\u0447\u044a\u0442 \u043d\u0430 \u0440\u0435\u0434\u0430   \u2461 \u0421\u0438\u043b\u0430 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u0430\u043d\u0430\u043b \u2014 \u043a\u0430\u043d\u0430\u043b\u0438\u0442\u0435 \u043d\u0430 \u0440\u0435\u0434\u0430   \u2462 \u25b6 \u0421\u0442\u0430\u0440\u0442"

    const-string v5, "\u2460 Total strength \u2014 the row\'s slider   \u2461 Each channel \u2014 the row\'s channels   \u2462 \u25b6 Start"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x0

    invoke-static {p0, v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v5, 0xa

    .line 1312
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 1310
    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0414\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435 "

    const-string v6, "Up to a feeling of "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1314
    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    iget v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    if-le v0, v6, :cond_2a5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2013"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u043e\u0442 10 \u00b7 "

    const-string v6, " of 10 \u00b7 "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    .line 1315
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoUi;->cr10Text(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x1

    .line 1313
    invoke-static {p0, v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v5, 0x8

    .line 1315
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 1313
    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1316
    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->cr10Scale(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1317
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1318
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1319
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1320
    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1322
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1323
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1324
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v6

    .line 1325
    const/4 v0, 0x0

    move v1, v0

    :goto_21e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c8

    .line 1326
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1327
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 1328
    const/16 v2, 0x10

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1329
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2a9

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    :goto_23d
    const/high16 v8, 0x41700000    # 15.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v10, 0x1

    invoke-static {p0, v2, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1331
    const-string v2, ""

    const/high16 v8, 0x41c00000    # 24.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v10, 0x1

    invoke-static {p0, v2, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1332
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->setupLabels:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1334
    if-nez v1, :cond_2c6

    const/4 v2, 0x0

    :goto_268
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1335
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v2, :cond_294

    .line 1336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u2298 "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41400000    # 12.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/4 v8, 0x1

    invoke-static {p0, v0, v2, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1325
    :cond_294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21e

    .line 1280
    :cond_298
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    goto/16 :goto_a

    .line 1288
    :cond_29c
    const/4 v0, 0x0

    goto/16 :goto_2a

    .line 1289
    :cond_29f
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ProgramArt;->passiveKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_36

    .line 1314
    :cond_2a5
    const-string v0, ""

    goto/16 :goto_1b3

    .line 1329
    :cond_2a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0423\u0447\u0430\u0441\u0442\u043d\u0438\u043a "

    const-string v9, "Participant "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_23d

    .line 1334
    :cond_2c6
    const/4 v2, 0x4

    goto :goto_268

    .line 1339
    :cond_2c8
    const-string v0, ""

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v6, 0x1

    invoke-static {p0, v0, v1, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    .line 1340
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1341
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1342
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1343
    const-string v0, "\u25b6  \u0421\u0442\u0430\u0440\u0442"

    const-string v1, "\u25b6  Start"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo:Landroid/widget/TextView;

    .line 1344
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x2b

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1345
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v6, 0x42840000    # 66.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1346
    const-string v0, "\u2039  \u041d\u0430\u0437\u0430\u0434"

    const-string v1, "\u2039  Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 1347
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x2c

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1348
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1349
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43820000    # 260.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1351
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1352
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshSetup()V

    .line 1353
    return-void
.end method

.method private static cardParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 722
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 723
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 724
    return-object v0
.end method

.method private static choiceCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 2042
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 2043
    if-eqz p3, :cond_4d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v1, 0x3e6147ae    # 0.22f

    invoke-static {v0, p4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    :goto_10
    const/high16 v1, 0x41800000    # 16.0f

    .line 2044
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

    .line 2043
    invoke-static {v0, v4, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2045
    const/high16 v0, 0x41900000    # 18.0f

    if-eqz p3, :cond_57

    :goto_2d
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2046
    const/high16 v0, 0x41500000    # 13.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 2047
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2048
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2049
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 2050
    return-object v3

    .line 2043
    :cond_4d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    goto :goto_10

    .line 2044
    :cond_50
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    move v2, v1

    goto :goto_1a

    :cond_54
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1e

    .line 2045
    :cond_57
    sget p4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_2d
.end method

.method private static clientBlocker()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1028
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 1029
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlocker()Ljava/lang/String;

    move-result-object v0

    .line 1030
    if-eqz v0, :cond_a

    .line 1033
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

    .line 1083
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 1084
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    move v6, v5

    .line 1085
    :goto_f
    const/16 v0, 0xa

    if-gt v6, v0, :cond_95

    .line 1086
    if-lt v6, p1, :cond_75

    if-gt v6, p2, :cond_75

    move v4, v5

    .line 1087
    :goto_18
    const/4 v0, 0x3

    if-gt v6, v0, :cond_77

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 1088
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

    .line 1089
    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1090
    if-eqz v4, :cond_87

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_37
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v10, v1

    .line 1091
    if-eqz v4, :cond_8e

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move v3, v1

    :goto_43
    if-eqz v4, :cond_90

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 1090
    :goto_4b
    invoke-static {v0, v10, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_92

    const/high16 v0, 0x42380000    # 46.0f

    :goto_58
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1093
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1094
    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1095
    invoke-virtual {v8, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1085
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_f

    :cond_75
    move v4, v2

    .line 1086
    goto :goto_18

    .line 1087
    :cond_77
    const/4 v0, 0x6

    if-gt v6, v0, :cond_7d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_1d

    :cond_7d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    goto :goto_1d

    .line 1088
    :cond_80
    const/high16 v1, 0x41600000    # 14.0f

    move v3, v1

    goto :goto_26

    :cond_84
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_2a

    .line 1090
    :cond_87
    const/16 v1, 0x22

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_37

    :cond_8e
    move v3, v2

    .line 1091
    goto :goto_43

    :cond_90
    move v1, v2

    goto :goto_4b

    .line 1092
    :cond_92
    const/high16 v0, 0x42180000    # 38.0f

    goto :goto_58

    .line 1097
    :cond_95
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1098
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    return-object v7
.end method

.method private static cr10Text(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1103
    const/4 v0, 0x3

    if-gt p0, v0, :cond_c

    .line 1104
    const-string v0, "\u044f\u0441\u043d\u043e, \u043b\u0435\u043a\u043e"

    const-string v1, "clear, light"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    :goto_b
    return-object v0

    .line 1106
    :cond_c
    const/4 v0, 0x5

    if-gt p0, v0, :cond_18

    .line 1107
    const-string v0, "\u0441\u0438\u043b\u043d\u043e, \u043d\u043e \u043f\u0440\u0438\u044f\u0442\u043d\u043e"

    const-string v1, "strong but pleasant"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1109
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
    .line 194
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_b

    .line 196
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_f

    .line 200
    :cond_b
    :goto_b
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 201
    return-void

    .line 197
    :catch_f
    move-exception v0

    goto :goto_b
.end method

.method private static enable(Z)V
    .registers 3

    .prologue
    .line 385
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 386
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    if-eqz p0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 388
    :cond_d
    return-void

    .line 386
    :cond_e
    const v0, 0x3ee66666    # 0.45f

    goto :goto_a
.end method

.method static flashSetEnd()V
    .registers 4

    .prologue
    .line 215
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    .line 216
    if-nez v0, :cond_5

    .line 226
    :goto_4
    return-void

    .line 220
    :cond_5
    :try_start_5
    const-string v1, "alpha"

    const/4 v2, 0x5

    new-array v2, v2, [F

    fill-array-data v2, :array_22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 221
    const-wide/16 v2, 0x578

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 222
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_19} :catch_1a

    goto :goto_4

    .line 223
    :catch_1a
    move-exception v0

    .line 224
    const-string v1, "AutoUi.flash"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 220
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

    .line 373
    if-eqz p2, :cond_1f

    .line 374
    const-string v0, "\u041d\u0430\u0437\u0430\u0434"

    const-string v1, "Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 375
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 378
    :cond_1f
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    invoke-static {p0, p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    .line 380
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    return-void
.end method

.method private static go(I)V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 260
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    if-eqz v0, :cond_99

    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-ne p0, v0, :cond_99

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 261
    :goto_16
    sget v2, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-eq p0, v2, :cond_1c

    .line 262
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    .line 264
    :cond_1c
    sput p0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    .line 265
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 266
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 267
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 268
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 270
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    .line 271
    packed-switch p0, :pswitch_data_ae

    .line 276
    :goto_46
    invoke-static {v2, p0}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTip(Landroid/content/Context;I)V

    .line 277
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTipText(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a4

    move v2, v1

    :goto_54
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    if-ge p0, v5, :cond_a6

    .line 279
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
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

    .line 284
    :goto_82
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v3, 0x3f70a3d7    # 0.94f

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 285
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$ScrollTo;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/AutoUi$ScrollTo;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 286
    return-void

    :cond_99
    move v0, v1

    .line 260
    goto/16 :goto_16

    .line 272
    :pswitch_9c
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->screenProgram(Landroid/content/Context;)V

    goto :goto_46

    .line 273
    :pswitch_a0
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->screenClient(Landroid/content/Context;)V

    goto :goto_46

    :cond_a4
    move v2, v3

    .line 277
    goto :goto_54

    .line 282
    :cond_a6
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_82

    .line 271
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_a0
    .end packed-switch
.end method

.method static goalColor(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)I
    .registers 3

    .prologue
    .line 2098
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 2101
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_d
    return v0

    .line 2099
    :pswitch_e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    goto :goto_d

    .line 2100
    :pswitch_11
    const v0, -0xd95966

    goto :goto_d

    .line 2098
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method static goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 2090
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 2093
    const-string v0, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v1, "Toning"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 2091
    :pswitch_14
    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v1, "Weight loss"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 2092
    :pswitch_1d
    const-string v0, "\u0417\u0434\u0440\u0430\u0432\u0435"

    const-string v1, "Health"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 2090
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

    .line 788
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

    .line 789
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 793
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
    .line 2058
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

    .line 1610
    :try_start_1
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v0

    .line 1611
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howText()Ljava/lang/String;

    move-result-object v0

    .line 1612
    :goto_b
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    .line 1613
    :cond_17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1631
    :goto_1a
    return-object v0

    .line 1611
    :cond_1b
    const/4 v0, 0x0

    goto :goto_b

    .line 1615
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?<=[.!?])\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1616
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1617
    array-length v5, v3

    move v1, v2

    :goto_2e
    if-ge v1, v5, :cond_56

    aget-object v0, v3, v1

    .line 1618
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1619
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1620
    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1622
    :cond_49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_52

    .line 1623
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    :cond_52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    .line 1626
    :cond_56
    :goto_56
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_8b

    .line 1627
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

    .line 1630
    :catch_87
    move-exception v0

    .line 1631
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_1a

    .line 1629
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

    .line 1432
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1433
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    const-string v2, "i"

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {p0, v2, v4, v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1436
    const/16 v2, 0x11

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1437
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

    .line 1438
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 1437
    invoke-static {v2, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1439
    const-string v2, "\u041a\u0430\u043a \u0440\u0430\u0431\u043e\u0442\u0438"

    const-string v5, "How it works"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1440
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$InfoTap;

    invoke-direct {v2, p2}, Lcom/isaigu/gymapp/ai/AutoUi$InfoTap;-><init>(I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1441
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1443
    if-ne p2, v0, :cond_86

    .line 1444
    :goto_5e
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 1445
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    if-eqz v0, :cond_88

    const v2, 0x800003

    :goto_6d
    or-int/lit8 v2, v2, 0x30

    invoke-direct {v5, v6, v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1446
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

    .line 1447
    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1448
    return-object v3

    :cond_86
    move v0, v1

    .line 1443
    goto :goto_5e

    .line 1445
    :cond_88
    const v2, 0x800005

    goto :goto_6d

    :cond_8c
    move v2, v1

    .line 1446
    goto :goto_78

    :cond_8e
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    goto :goto_7f
.end method

.method static infoText(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1452
    packed-switch p0, :pswitch_data_24

    .line 1486
    :pswitch_3
    const-string v0, "\u0426\u044f\u043b\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u043f\u043e \u0440\u0435\u0430\u043b\u043d\u0438\u044f \u0447\u0430\u0441\u043e\u0432\u043d\u0438\u043a: \u0432\u0438\u0441\u043e\u0447\u0438\u043d\u0430 \u0438 \u0446\u0432\u044f\u0442 \u2014 \u043e\u0431\u0449\u043e\u0442\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 (\u0433\u043e\u0440\u0435 = 100 %, \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u0438\u044f\u0442 \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430).\n\u0421\u0435\u0440\u0438\u044f\u0442\u0430 (\u0415\u041c\u0421 + \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e) \u0441\u0442\u043e\u0438 \u0432\u0438\u0441\u043e\u043a\u043e, \u043f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0438 \u0432\u0441\u044f\u043a\u0430 \u043f\u0430\u0443\u0437\u0430 \u043f\u0430\u0434\u0430\u0442 \u0441 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e, \u0434\u043e\u043a\u0430\u0442\u043e \u0442\u0440\u0430\u044f\u0442. \u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435\u0442\u043e \u043d\u0430\u043a\u0440\u0430\u044f \u0435 \u043e\u0442\u0434\u0435\u043b\u043d\u0430, \u043d\u0438\u0441\u043a\u0430 \u0447\u0430\u0441\u0442.\n\u041c\u0438\u043d\u0430\u043b\u043e\u0442\u043e \u0435 \u044f\u0440\u043a\u043e, \u043f\u0440\u0435\u0434\u0441\u0442\u043e\u044f\u0449\u043e\u0442\u043e \u2014 \u043f\u0440\u043e\u0433\u043d\u043e\u0437\u0430 \u043e\u0442 \u0441\u0435\u0433\u0430\u0448\u043d\u043e\u0442\u043e \u0441\u044a\u0441\u0442\u043e\u044f\u043d\u0438\u0435.\n\u0427\u0435\u0440\u0432\u0435\u043d\u0430 \u043b\u0438\u043d\u0438\u044f \u2014 \u043f\u0443\u043b\u0441\u044a\u0442, \u043f\u0443\u043d\u043a\u0442\u0438\u0440 \u2014 \u0442\u0430\u0432\u0430\u043d\u044a\u0442. \u0427\u0430\u0441\u043e\u0432\u043d\u0438\u043a\u044a\u0442 \u0431\u0440\u043e\u0438 \u0438 \u043f\u0430\u0443\u0437\u0438\u0442\u0435."

    const-string v1, "The whole session on the real clock: height and colour \u2014 the total load (top = 100 %, the client\'s healthy maximum).\nA set (EMS + the exercise) stands high, the rest and any pause fall with the load as long as they last. The recovery at the end is its own low part.\nThe past is bright, what comes is forecast from the state now.\nRed line \u2014 the HR, dashed \u2014 the ceiling. The clock counts the pauses too."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 1454
    :pswitch_c
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTipText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1456
    :pswitch_12
    const-string v0, "\u041f\u0440\u044a\u0441\u0442\u0435\u043d\u044a\u0442 \u0435 \u0441\u0435\u0440\u0438\u044f\u0442\u0430: 30\u201340 s, \u0442\u043e\u0447\u043a\u0438\u0442\u0435 \u0441\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435.\n\u0421\u043b\u0435\u0434 \u0441\u0435\u0440\u0438\u044f\u0442\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0441\u043f\u0438\u0440\u0430\u0442 \u0441\u0430\u043c\u0438. \u041f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0435 \u043a\u043e\u043b\u043a\u043e\u0442\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438\u0441\u043a\u0430\u0442, \u0437\u0430 \u0434\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0442 \u0435\u043d\u0435\u0440\u0433\u0438\u044f\u0442\u0430 \u0441\u0438 (\u043f\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0438 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f\u0442\u0430), \u0438 \u043f\u0443\u043b\u0441\u044a\u0442 \u0434\u0430 \u0441\u043f\u0430\u0434\u043d\u0435. \u0422\u043e\u0433\u0430\u0432\u0430 \u25b6 \u0441\u0432\u0435\u0442\u0432\u0430.\n\u0412\u0441\u0435\u043a\u0438 \u0441\u0442\u0430\u0440\u0442 \u0431\u0440\u043e\u0438 3 s: \u0442\u0440\u0438 \u043a\u044a\u0441\u0438 \u0441\u0438\u0433\u043d\u0430\u043b\u0430 \u0438 \u0434\u044a\u043b\u044a\u0433 \u0441 \u043f\u044a\u0440\u0432\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441.\n\u0421\u0438\u0432\u043e\u0442\u043e \u0432\u0434\u044f\u0441\u043d\u043e \u0435 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e; \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 10 s \u0441\u0435 \u043e\u0446\u0432\u0435\u0442\u044f\u0432\u0430. \u23ed \u0432 \u043f\u0430\u043d\u0435\u043b\u0430 \u0432\u0434\u044f\u0441\u043d\u043e (\u043c\u0435\u0436\u0434\u0443 \u25b6 \u0438 +) \u2014 \u043f\u0440\u043e\u043f\u0443\u0441\u043a\u0430: \u0441\u0435\u0440\u0438\u044f\u0442\u0430 (\u0438\u043b\u0438 \u0438\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u0441\u0435\u0440\u0438\u044f) \u043e\u0442\u043f\u0430\u0434\u0430 \u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0441\u0442\u0430\u0432\u0430 \u0442\u043e\u043b\u043a\u043e\u0432\u0430 \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u0430; \u0441\u043b\u0435\u0434\u0432\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e \u043f\u043e \u0440\u0435\u0434.\n\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u2014 \u0441 \u0433\u043b\u0430\u0432\u043d\u0438\u0442\u0435 \u25b6 / \u275a\u275a \u0438 \u25a0: \u25a0 \u0440\u0430\u0431\u043e\u0442\u0438 \u043e\u0442 \u043f\u0430\u0443\u0437\u0430; \u043f\u044a\u0440\u0432\u0438\u044f\u0442 \u2014 \u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435, \u0432\u0442\u043e\u0440\u0438\u044f\u0442 \u2014 \u043a\u0440\u0430\u0439."

    const-string v1, "The ring is the set: 30\u201340 s, the dots are the impulses.\nAfter the set the impulses stop by themselves. The rest lasts as long as the muscles need to refill (by the load and fitness) and the HR to come down; then \u25b6 lights up.\nEvery start counts 3 s: three short beeps and a long one with the first impulse.\nThe grey one on the right is the next; it lights up in the last 10 s. \u23ed on the right panel (between \u25b6 and +) skips: the set (or the coming one) is dropped and the session is that much shorter; the next in order follows.\nControl \u2014 the main \u25b6 / \u275a\u275a and \u25a0: \u25a0 works from a pause; the first goes to the recovery, the second ends."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1473
    :pswitch_1b
    const-string v0, "\u0412\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0441\u0435 \u043e\u0446\u0432\u0435\u0442\u044f\u0432\u0430 \u0441 \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430, \u043a\u043e\u044f\u0442\u043e \u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u0430 \u0434\u043e\u0441\u0435\u0433\u0430, \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u0430\u0439-\u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0435\u043d\u0430\u0442\u0430 \u0437\u043e\u043d\u0430 \u043d\u0430 \u0442\u0430\u0437\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430: \u0442\u044f \u0441\u0442\u0438\u0433\u0430 \u043f\u044a\u043b\u043d\u0438\u044f \u0446\u0432\u044f\u0442 (\u0436\u0435\u043d\u0430 \u2014 magenta, \u043c\u044a\u0436 \u2014 cyan) \u0432 \u043a\u0440\u0430\u044f \u043d\u0430 \u043f\u043b\u0430\u043d\u0430; \u0434\u0440\u0443\u0433\u0438\u0442\u0435 \u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u0442\u043e\u043b\u043a\u043e\u0432\u0430 \u043f\u043e-\u0431\u043b\u0435\u0434\u0438, \u043a\u043e\u043b\u043a\u043e\u0442\u043e \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430\u0442. \u041a\u0430\u043d\u0430\u043b \u043d\u0430 0 \u2014 \u0441\u0430\u043c\u043e \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430 \u043e\u0442 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e. \u041d\u0430\u0434 \u0446\u0435\u043b\u0442\u0430 \u0446\u0432\u0435\u0442\u044a\u0442 \u0441\u0442\u0430\u0432\u0430 \u043e\u0440\u0430\u043d\u0436\u0435\u0432, \u043f\u043e\u0441\u043b\u0435 \u0447\u0435\u0440\u0432\u0435\u043d. \u0417\u043e\u043d\u0430, \u043a\u043e\u044f\u0442\u043e \u0440\u0430\u0431\u043e\u0442\u0438 \u0432 \u043c\u043e\u043c\u0435\u043d\u0442\u0430, \u0441\u0432\u0435\u0442\u0432\u0430 \u043f\u043e-\u044f\u0440\u043a\u043e.\n\u0421\u043c\u0435\u0442\u043a\u0430: \u0441\u0438\u043b\u0430 \u00d7 \u0448\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u00d7 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u00d7 % \u043d\u0430 \u0437\u043e\u043d\u0430\u0442\u0430 + \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430 \u043d\u0430 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e.\n\u0427\u0435\u0440\u0432\u0435\u043d\u043e\u0442\u043e \u0441\u044a\u0440\u0446\u0435 \u0431\u0438\u0435 \u0441 \u043f\u0443\u043b\u0441\u0430; \u0447\u0438\u0441\u043b\u043e\u0442\u043e \u0435 \u0432 \u0446\u0432\u0435\u0442\u0430 \u043d\u0430 \u043f\u0443\u043b\u0441\u043e\u0432\u0430\u0442\u0430 \u0437\u043e\u043d\u0430.\n\u041d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 \u2014 \u0446\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e: \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e, \u043a\u0438\u0441\u043b\u043e\u0440\u043e\u0434\u044a\u0442 \u0438 \u043f\u0443\u043b\u0441\u044a\u0442, \u0441\u0432\u044a\u0440\u0448\u0435\u043d\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u0430; \u043f\u043e \u0434\u0430\u043d\u043d\u0438\u0442\u0435 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v1, "Each zone is coloured by the work it has had so far against the most worked zone of this session: that one reaches full colour (woman \u2014 magenta, man \u2014 cyan) at the end of the plan; the others stay as much paler as they get less. A channel at 0 \u2014 the exercise\'s work only. Past the target the colour turns orange, then red. A zone working now glows brighter.\nSum: strength \u00d7 pulse width \u00d7 frequency \u00d7 zone % + the exercise\'s work.\nThe red heart beats with the HR; the number is in the HR zone\'s colour.\nLoad \u2014 the whole body: the muscles by impulse and exercise, oxygen and HR, the work done; by the client\'s data."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1452
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
    .line 240
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
    .line 2062
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2063
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2064
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 2065
    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2066
    return-object v0
.end method

.method static levelColor(I)I
    .registers 2

    .prologue
    .line 2111
    const/4 v0, 0x1

    if-gt p0, v0, :cond_6

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_5

    :cond_c
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    goto :goto_5
.end method

.method static levelName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 2107
    const/4 v0, 0x1

    if-gt p0, v0, :cond_c

    const-string v0, "\u041b\u0435\u0441\u043d\u0430"

    const-string v1, "Easy"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x2

    if-ne p0, v0, :cond_18

    const-string v0, "\u0421\u0440\u0435\u0434\u043d\u0430"

    const-string v1, "Medium"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_18
    const-string v0, "\u0422\u0440\u0443\u0434\u043d\u0430"

    const-string v1, "Hard"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static modCards(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I
    .registers 14

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 661
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->modRow()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-nez v0, :cond_b

    .line 662
    sput-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 672
    :goto_a
    return v2

    .line 665
    :cond_b
    sget-object v10, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    move v9, v2

    .line 666
    :goto_e
    array-length v0, v10

    if-ge v9, v0, :cond_7c

    .line 667
    aget-object v0, v10, v9

    .line 668
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->id:Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/ProgramArt;->passiveKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041c\u043e\u0434\u0443\u043b\u0430\u0446\u0438\u044f \u00b7 "

    const-string v7, "Modulation \u00b7 "

    .line 669
    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u0441\u0430\u043c\u043e bodytech"

    const-string v7, "bodytech only"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u2248 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->minutes:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " \u043c\u0438\u043d"

    const-string v8, " min"

    .line 670
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v0, 0x2d

    invoke-direct {v8, v0, v9}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    move-object v0, p0

    .line 668
    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/ai/AutoUi;->programCard(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Lcom/isaigu/gymapp/ai/AutoUi$Act;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 670
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->cardParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 668
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_e

    .line 672
    :cond_7c
    array-length v2, v10

    goto :goto_a
.end method

.method private static modRow()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 3

    .prologue
    .line 647
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 649
    :try_start_14
    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 650
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_25} :catch_2b

    move-result v2

    if-eqz v2, :cond_8

    .line 656
    :goto_28
    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28

    .line 653
    :catch_2b
    move-exception v0

    goto :goto_8
.end method

.method static nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 1376
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1378
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ui_card_background"

    const-string v3, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1379
    if-eqz v1, :cond_19

    .line 1380
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_19} :catch_23

    .line 1384
    :cond_19
    :goto_19
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 1385
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1386
    return-object v0

    .line 1382
    :catch_23
    move-exception v1

    goto :goto_19
.end method

.method private static next()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 391
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 392
    sget v1, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    packed-switch v1, :pswitch_data_6c

    .line 427
    :cond_a
    :goto_a
    return-void

    .line 394
    :pswitch_b
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v1, v2, :cond_19

    iget-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    if-eqz v1, :cond_19

    .line 395
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->setupWorkout()V

    goto :goto_a

    .line 396
    :cond_19
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 397
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->startMod()V

    goto :goto_a

    .line 398
    :cond_21
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 399
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_a

    .line 403
    :pswitch_29
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlocker()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 406
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->healthOpen:Z

    if-nez v1, :cond_35

    .line 407
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AutoUi;->healthOk:Z

    .line 409
    :cond_35
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->clientBlocker()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_68

    .line 410
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->heightTouched:Z

    if-eqz v1, :cond_46

    .line 411
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveHeight(Landroid/app/Activity;I)V

    .line 413
    :cond_46
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 416
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->beginCalibration()V

    .line 417
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 418
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    :goto_59
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    goto :goto_a

    .line 419
    :cond_5d
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_59

    .line 421
    :cond_68
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_a

    .line 392
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_29
    .end packed-switch
.end method

.method static onBoardDetached()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 205
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo:Landroid/widget/TextView;

    .line 207
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    .line 208
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    .line 209
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    .line 210
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->boardSub:Landroid/widget/TextView;

    .line 211
    return-void
.end method

.method static onFinished()V
    .registers 2

    .prologue
    .line 230
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 232
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->finishAssisted()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_a

    .line 236
    :goto_6
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 237
    return-void

    .line 233
    :catch_a
    move-exception v0

    .line 234
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

    .line 157
    :cond_a
    :goto_a
    return-void

    .line 133
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 134
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v3, :cond_48

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
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v3

    .line 143
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-lez v0, :cond_44

    move v0, v1

    :goto_2c
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->heightTouched:Z

    .line 144
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_46

    move v0, v1

    :goto_33
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

    :cond_44
    move v0, v2

    .line 143
    goto :goto_2c

    :cond_46
    move v0, v2

    .line 144
    goto :goto_33

    .line 152
    :cond_48
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_50

    .line 153
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->onFinished()V

    goto :goto_a

    .line 156
    :cond_50
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_58

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_59

    :cond_58
    const/4 v2, 0x3

    :cond_59
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->show(Landroid/app/Activity;I)V

    goto :goto_a
.end method

.method private static planBlock(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 12

    .prologue
    .line 920
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v6

    .line 921
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v7

    .line 922
    if-nez v6, :cond_b

    .line 1011
    :cond_a
    :goto_a
    return-void

    .line 925
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 927
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v0, v2, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v8

    .line 928
    const-string v0, "\u0422\u0440\u0443\u0434\u043d\u043e\u0441\u0442"

    const-string v2, "Level"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->levelName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->levelColor(I)I

    move-result v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;II)V

    .line 929
    const-string v0, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v2, "Warm-up"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget v3, v8, v3

    div-int/lit8 v3, v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043c\u0438\u043d"

    const-string v4, " min"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {p0, v1, v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 930
    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430"

    const-string v2, "Main"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget v3, v8, v3

    div-int/lit8 v3, v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043c\u0438\u043d"

    const-string v4, " min"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {p0, v1, v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 931
    const-string v0, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v2, "Recovery"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    aget v3, v8, v3

    div-int/lit8 v3, v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043c\u0438\u043d"

    const-string v4, " min"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {p0, v1, v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 932
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v2

    .line 933
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v0, v3, :cond_e5

    if-eqz v2, :cond_e5

    .line 934
    const-string v0, "\u041f\u0443\u043b\u0441 \u0434\u043e"

    const-string v3, "HR up to"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {p0, v1, v0, v3, v4}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 936
    :cond_e5
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 938
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 939
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    if-eqz v0, :cond_12e

    .line 940
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    .line 941
    const/4 v0, 0x0

    :goto_ff
    array-length v4, v3

    if-ge v0, v4, :cond_117

    .line 942
    iget-object v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsEn:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 941
    add-int/lit8 v0, v0, 0x1

    goto :goto_ff

    .line 944
    :cond_117
    iget v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    new-instance v4, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v5, 0x12

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-static {p0, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 946
    :cond_12e
    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_159

    .line 947
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v3, "Double impulse"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u043b\u0435\u043a \u0438\u043c\u043f\u0443\u043b\u0441 \u0438 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430"

    const-string v4, "a light pulse in the pause too"

    .line 948
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    new-instance v5, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v7, 0x13

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 947
    invoke-static {p0, v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v3, 0x8

    .line 949
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 947
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    :cond_159
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_168

    .line 952
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    :cond_168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v0, v1, :cond_18c

    if-nez v2, :cond_18c

    .line 958
    const-string v0, "\u2022 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430 \u2014 \u043f\u0443\u043b\u0441\u044a\u0442 \u043d\u0435 \u0441\u0435 \u0441\u043b\u0435\u0434\u0438."

    const-string v2, "No band \u2014 heart rate is not watched."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 960
    :cond_18c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_194
    :goto_194
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 961
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v1, :cond_194

    .line 962
    const-string v1, "\u2022 "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d6

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    :goto_1b4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2014 \u043d\u044f\u043c\u0430 \u0434\u0430 \u043f\u043e\u043b\u0443\u0447\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438"

    const-string v4, " \u2014 gets no pulses"

    .line 963
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_194

    .line 962
    :cond_1d6
    const-string v1, "?"

    goto :goto_1b4

    .line 966
    :cond_1d9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1f6

    .line 967
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    :cond_1f6
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    if-eqz v0, :cond_304

    const-string v0, "\u25b4  \u0421\u043a\u0440\u0438\u0439 \u0444\u0430\u0437\u0438\u0442\u0435"

    const-string v1, "\u25b4  Hide the phases"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    :goto_202
    const/4 v1, 0x3

    .line 970
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 972
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 973
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    if-eqz v0, :cond_a

    .line 975
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 976
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_228
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_352

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 977
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 978
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 979
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

    .line 980
    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-eqz v2, :cond_30e

    .line 981
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

    .line 988
    :cond_276
    const-string v1, " \u00b7 "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 989
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    sub-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v2, v8

    if-lez v1, :cond_2b8

    .line 990
    const-string v1, "\u2192"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 992
    :cond_2b8
    const-string v1, " %"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 994
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

    .line 995
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v8, -0x2

    invoke-direct {v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 994
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
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

    .line 998
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_228

    .line 971
    :cond_304
    const-string v0, "\u25be  \u0424\u0430\u0437\u0438 \u0438 \u0437\u043e\u043d\u0438"

    const-string v1, "\u25be  Phases and zones"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_202

    .line 983
    :cond_30e
    const/4 v1, 0x0

    move v2, v1

    :goto_310
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_276

    .line 984
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 985
    if-lez v2, :cond_34f

    const-string v3, " \u2194 "

    :goto_324
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

    .line 983
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_310

    .line 985
    :cond_34f
    const-string v3, ""

    goto :goto_324

    .line 1000
    :cond_352
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneBars(Landroid/content/Context;Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1002
    const-string v0, "x"

    const-string v2, "y"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_396

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->notesBg:Ljava/util/List;

    .line 1003
    :goto_376
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_399

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1004
    const-string v3, "\u2022 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37a

    .line 1002
    :cond_396
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->notesEn:Ljava/util/List;

    goto :goto_376

    .line 1006
    :cond_399
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3b4

    .line 1007
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->hint(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    :cond_3b4
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a
.end method

.method private static planBlocker()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1015
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 1016
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v1, :cond_11

    .line 1017
    const-string v0, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0440\u044a\u0441\u0442\u0430 \u2014 \u043e\u0442 \u043d\u0435\u0433\u043e \u0441\u0435 \u0441\u043c\u044f\u0442\u0430 \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v1, "Enter the height \u2014 the plan depends on it."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    :goto_10
    return-object v0

    .line 1019
    :cond_11
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_20

    .line 1020
    const-string v0, "\u041f\u043e\u0434 18 \u0433. \u2014 \u043d\u0435."

    const-string v1, "Under 18 \u2014 no."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 1022
    :cond_20
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    .line 1023
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

.method private static presetProgram(Lcom/isaigu/gymapp/ai/Workout;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    .registers 3

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    const-string v1, "preset:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private static programCard(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Lcom/isaigu/gymapp/ai/AutoUi$Act;)Landroid/widget/LinearLayout;
    .registers 20

    .prologue
    .line 734
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AutoUi;->levelColor(I)I

    move-result v2

    .line 735
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 736
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 737
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v5, v1, v1, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 738
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    if-eqz p1, :cond_18c

    const v1, 0x3e851eb8    # 0.26f

    :goto_1e
    invoke-static {v3, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v4

    const/high16 v1, 0x41900000    # 18.0f

    .line 739
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v6, v1

    if-eqz p1, :cond_191

    move v3, v2

    :goto_2c
    if-eqz p1, :cond_19a

    const/high16 v1, 0x40400000    # 3.0f

    :goto_30
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 738
    invoke-static {v4, v6, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 740
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 741
    const/16 v3, 0xd2

    const/16 v4, 0x96

    invoke-static {p0, p3, v3, v4}, Lcom/isaigu/gymapp/ai/ProgramArt;->tileKey(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AutoUi;->levelName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 744
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const v8, 0x800033

    invoke-direct {v4, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 746
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 747
    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    if-eqz p1, :cond_c2

    .line 749
    const-string v3, "\u2713"

    const/high16 v4, 0x41800000    # 16.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v7, 0x1

    invoke-static {p0, v3, v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 750
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 751
    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 752
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v6, 0x41e00000    # 28.0f

    .line 753
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const v8, 0x800035

    invoke-direct {v4, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 754
    const/4 v6, 0x0

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 755
    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    :cond_c2
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 758
    const/high16 v1, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {p0, p4, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 759
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 760
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    if-eqz p5, :cond_f0

    .line 762
    const/high16 v1, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {p0, v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    :cond_f0
    if-eqz p7, :cond_106

    .line 765
    const/high16 v3, 0x41700000    # 15.0f

    if-eqz p1, :cond_19e

    move v1, v2

    :goto_f7
    const/4 v4, 0x1

    move-object/from16 v0, p7

    invoke-static {p0, v0, v3, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    :cond_106
    if-eqz p6, :cond_1b1

    .line 768
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 769
    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v4, "Warm-up"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    const/4 v1, 0x1

    const-string v3, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430"

    const-string v4, "Main"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    const/4 v1, 0x2

    const-string v3, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432."

    const-string v4, "Recovery"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    .line 770
    const/4 v1, 0x0

    move v4, v1

    :goto_132
    const/4 v1, 0x3

    if-ge v4, v1, :cond_1a9

    .line 771
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 772
    aget v1, p6, v4

    if-lez v1, :cond_1a2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, p6, v4

    int-to-float v3, v3

    const/high16 v9, 0x42700000    # 60.0f

    div-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u043c\u0438\u043d"

    const-string v9, " min"

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_161
    const/high16 v9, 0x41700000    # 15.0f

    .line 773
    if-eqz p1, :cond_1a6

    move v1, v2

    :goto_166
    const/4 v10, 0x1

    .line 772
    invoke-static {p0, v3, v9, v1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 774
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 775
    aget-object v1, v7, v4

    const/high16 v3, 0x41300000    # 11.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v10, 0x0

    invoke-static {p0, v1, v3, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 776
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_132

    .line 738
    :cond_18c
    const v1, 0x3df5c28f    # 0.12f

    goto/16 :goto_1e

    .line 739
    :cond_191
    const/16 v1, 0x99

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    move v3, v1

    goto/16 :goto_2c

    :cond_19a
    const/high16 v1, 0x3fc00000    # 1.5f

    goto/16 :goto_30

    .line 765
    :cond_19e
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_f7

    .line 772
    :cond_1a2
    const-string v1, "\u2014"

    move-object v3, v1

    goto :goto_161

    .line 773
    :cond_1a6
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_166

    .line 778
    :cond_1a9
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    :cond_1b1
    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 782
    return-object v5
.end method

.method static refresh()V
    .registers 2

    .prologue
    .line 245
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 246
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_12

    .line 247
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshSetup()V

    .line 255
    :cond_11
    :goto_11
    return-void

    .line 249
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_11

    .line 252
    :catch_16
    move-exception v0

    .line 253
    const-string v1, "AutoUi.refreshRun"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method private static refreshRun()V
    .registers 28

    .prologue
    .line 1642
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v14

    .line 1643
    if-eqz v14, :cond_a

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    if-nez v2, :cond_b

    .line 1821
    :cond_a
    :goto_a
    return-void

    .line 1646
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1647
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v15

    .line 1648
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v12

    .line 1649
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v18

    .line 1650
    if-eqz v12, :cond_25a

    invoke-virtual {v12}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_25a

    const/4 v2, 0x1

    move v11, v2

    .line 1651
    :goto_25
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v19

    .line 1652
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v20

    .line 1653
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_25e

    const/4 v2, 0x1

    move v3, v2

    .line 1654
    :goto_35
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_262

    const/4 v2, 0x1

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCountdownLeftS(J)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v2

    .line 1657
    :goto_47
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v7

    .line 1658
    if-eqz v7, :cond_266

    if-nez v19, :cond_266

    const/4 v2, 0x1

    move v13, v2

    .line 1659
    :goto_51
    if-eqz v20, :cond_26a

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_57
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v6

    .line 1660
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v13, :cond_26d

    const/4 v2, 0x0

    :goto_60
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setVisibility(I)V

    .line 1661
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    if-eqz v13, :cond_270

    const/16 v2, 0x8

    :goto_69
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1662
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_273

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_76
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1663
    if-nez v13, :cond_92

    .line 1665
    if-nez v11, :cond_7f

    if-eqz v19, :cond_278

    :cond_7f
    const/4 v2, 0x1

    move v5, v2

    .line 1666
    :goto_81
    if-eqz v20, :cond_27c

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 1667
    :goto_87
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    iget-object v9, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v9, v5, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->ringKey(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/ai/ProgramArt;->showRing(Landroid/view/View;Ljava/lang/String;)V

    .line 1669
    :cond_92
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getNextExercise()Ljava/lang/String;

    move-result-object v8

    .line 1670
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_27f

    if-eqz v8, :cond_27f

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetLeftS()D

    move-result-wide v22

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    cmpg-double v2, v22, v24

    if-gtz v2, :cond_27f

    const/4 v2, 0x1

    move v9, v2

    .line 1672
    :goto_aa
    if-eqz v13, :cond_283

    if-eqz v8, :cond_283

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_283

    const/4 v2, 0x1

    .line 1673
    :goto_b5
    sget-object v10, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    if-eqz v2, :cond_286

    const/4 v5, 0x0

    :goto_ba
    invoke-virtual {v10, v5}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->setVisibility(I)V

    .line 1674
    sget-object v10, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    if-eqz v2, :cond_28a

    const/4 v5, 0x0

    :goto_c2
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1675
    if-eqz v2, :cond_f1

    .line 1676
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2, v8}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1677
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v9, :cond_28e

    move v2, v6

    :goto_d1
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 1678
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v9, :cond_298

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_da
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setAlpha(F)V

    .line 1679
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNextRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v5, v10, v0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->set(FII)V

    .line 1680
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    if-eqz v9, :cond_29c

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_ee
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1682
    :cond_f1
    if-eqz v13, :cond_2da

    .line 1683
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 1684
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2, v7}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1686
    if-nez v3, :cond_101

    if-lez v4, :cond_2a6

    :cond_101
    const/4 v2, 0x1

    .line 1687
    :goto_102
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-eq v0, v5, :cond_10c

    if-eqz v2, :cond_2a9

    :cond_10c
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_10e
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setAlpha(F)V

    .line 1690
    if-eqz v9, :cond_2ad

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2ad

    .line 1691
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

    .line 1695
    :goto_141
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    if-eqz v2, :cond_2d6

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_147
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1696
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->howSteps(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->showHow(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1716
    :goto_157
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_430

    const/4 v2, 0x1

    .line 1718
    :goto_15e
    const/4 v5, 0x2

    new-array v7, v5, [I

    fill-array-data v7, :array_6a4

    .line 1720
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1721
    if-eqz v3, :cond_46f

    .line 1722
    const/4 v2, 0x1

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1723
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v3

    .line 1724
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startReady()Z

    move-result v5

    .line 1725
    if-eqz v19, :cond_433

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1726
    :goto_17f
    if-nez v19, :cond_187

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v10, v6

    if-ltz v6, :cond_449

    :cond_187
    const/4 v9, 0x0

    .line 1727
    :goto_188
    if-eqz v5, :cond_450

    const/4 v8, 0x2

    .line 1728
    :goto_18b
    if-eqz v19, :cond_453

    .line 1729
    iget v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    .line 1730
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_196
    move v5, v2

    move-object v6, v3

    .line 1758
    :goto_198
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_1a4

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_1b5

    .line 1759
    :cond_1a4
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1760
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_539

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v2

    if-nez v2, :cond_539

    const-string v2, "\u2665"

    :goto_1b4
    move-object v6, v2

    .line 1762
    :cond_1b5
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    if-lez v4, :cond_1ba

    const/4 v9, 0x0

    :cond_1ba
    invoke-virtual {v2, v10, v8, v4, v9}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->set(FIIF)V

    .line 1763
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    invoke-virtual {v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->set(II)V

    .line 1764
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    const/4 v2, 0x1

    aget v2, v7, v2

    if-lez v2, :cond_53d

    const/4 v2, 0x0

    :goto_1d0
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->setVisibility(I)V

    .line 1765
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1766
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1771
    const/16 v2, 0xa

    new-array v6, v2, [Z

    .line 1774
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    if-eqz v20, :cond_540

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_1e9
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneProgress(J)[D

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneLive(J)[D

    move-result-object v5

    .line 1775
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneActive(J)[Z

    move-result-object v7

    .line 1774
    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z[Z)V

    .line 1776
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->set(D)V

    .line 1777
    iget-object v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v2, v3, :cond_544

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_544

    const/4 v2, 0x1

    move v3, v2

    .line 1778
    :goto_219
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    if-eqz v3, :cond_548

    const/4 v2, 0x0

    :goto_21e
    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->setVisibility(I)V

    .line 1779
    if-eqz v3, :cond_234

    .line 1780
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v2

    .line 1781
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    iget v5, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/HrGuard;->zoneColor(II)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->set(II)V

    .line 1783
    :cond_234
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v2

    .line 1784
    const-string v5, ""

    .line 1785
    const/4 v4, 0x0

    .line 1786
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_23f
    :goto_23f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_550

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1787
    iget-object v7, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v7, :cond_23f

    .line 1790
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_54c

    .line 1791
    iget-object v5, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    move v2, v4

    :goto_258
    move v4, v2

    .line 1795
    goto :goto_23f

    .line 1650
    :cond_25a
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_25

    .line 1653
    :cond_25e
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_35

    .line 1654
    :cond_262
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_47

    .line 1658
    :cond_266
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_51

    .line 1659
    :cond_26a
    const/4 v2, 0x0

    goto/16 :goto_57

    .line 1660
    :cond_26d
    const/4 v2, 0x4

    goto/16 :goto_60

    .line 1661
    :cond_270
    const/4 v2, 0x0

    goto/16 :goto_69

    .line 1662
    :cond_273
    const v2, 0x3f19999a    # 0.6f

    goto/16 :goto_76

    .line 1665
    :cond_278
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_81

    .line 1666
    :cond_27c
    const/4 v2, 0x0

    goto/16 :goto_87

    .line 1670
    :cond_27f
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_aa

    .line 1672
    :cond_283
    const/4 v2, 0x0

    goto/16 :goto_b5

    .line 1673
    :cond_286
    const/16 v5, 0x8

    goto/16 :goto_ba

    .line 1674
    :cond_28a
    const/16 v5, 0x8

    goto/16 :goto_c2

    .line 1677
    :cond_28e
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v10, 0x99

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto/16 :goto_d1

    .line 1678
    :cond_298
    const/high16 v2, 0x3f400000    # 0.75f

    goto/16 :goto_da

    .line 1680
    :cond_29c
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v10, 0x99

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto/16 :goto_ee

    .line 1686
    :cond_2a6
    const/4 v2, 0x0

    goto/16 :goto_102

    .line 1687
    :cond_2a9
    const/high16 v5, 0x3f000000    # 0.5f

    goto/16 :goto_10e

    .line 1693
    :cond_2ad
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_2d3

    const-string v5, "\u0421\u043b\u0435\u0434\u0432\u0430:  "

    const-string v10, "Next:  "

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2be
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_141

    :cond_2d3
    const-string v5, ""

    goto :goto_2be

    .line 1695
    :cond_2d6
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_147

    .line 1698
    :cond_2da
    if-eqz v19, :cond_3c2

    iget-object v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    iget-object v5, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1699
    :goto_2ec
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    if-eqz v19, :cond_3c5

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

    :goto_30b
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1702
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1704
    if-eqz v19, :cond_416

    const/4 v5, 0x0

    .line 1705
    :goto_318
    invoke-static {v15, v2}, Lcom/isaigu/gymapp/ai/AutoCues;->phaseGoal(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;

    move-result-object v8

    .line 1706
    if-eqz v5, :cond_41c

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseOn()Z

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCues;->effect(Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 1707
    :goto_327
    if-eqz v2, :cond_421

    invoke-static {v15, v2}, Lcom/isaigu/gymapp/ai/AutoCues;->phaseHint(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;

    move-result-object v6

    .line 1708
    :goto_32d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "phase:"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v2, :cond_425

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    :goto_33e
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v5, :cond_42c

    .line 1709
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

    if-lez v2, :cond_429

    const/4 v2, 0x1

    :goto_36c
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

    :goto_384
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

    .line 1710
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

    .line 1708
    invoke-static {v2, v5, v10}, Lcom/isaigu/gymapp/ai/AutoUi;->showLabelled(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_157

    :cond_3c2
    move-object v2, v12

    .line 1698
    goto/16 :goto_2ec

    .line 1700
    :cond_3c5
    if-eqz v11, :cond_406

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

    if-lez v5, :cond_403

    .line 1701
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

    :goto_3f9
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_30b

    :cond_403
    const-string v5, ""

    goto :goto_3f9

    :cond_406
    if-eqz v12, :cond_412

    iget-object v5, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v7, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_30b

    :cond_412
    const-string v5, ""

    goto/16 :goto_30b

    .line 1704
    :cond_416
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getWritten()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v5

    goto/16 :goto_318

    .line 1706
    :cond_41c
    const-string v6, ""

    move-object v7, v6

    goto/16 :goto_327

    .line 1707
    :cond_421
    const-string v6, ""

    goto/16 :goto_32d

    .line 1708
    :cond_425
    const-string v2, ""

    goto/16 :goto_33e

    .line 1709
    :cond_429
    const/4 v2, 0x0

    goto/16 :goto_36c

    :cond_42c
    const-string v2, "-"

    goto/16 :goto_384

    .line 1716
    :cond_430
    const/4 v2, 0x0

    goto/16 :goto_15e

    .line 1725
    :cond_433
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

    goto/16 :goto_17f

    .line 1726
    :cond_449
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v2, v2

    div-float v9, v6, v2

    goto/16 :goto_188

    .line 1727
    :cond_450
    const/4 v8, 0x1

    goto/16 :goto_18b

    .line 1731
    :cond_453
    if-lez v3, :cond_45e

    .line 1732
    int-to-double v2, v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    .line 1733
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_196

    .line 1735
    :cond_45e
    if-eqz v5, :cond_468

    const-string v3, "\u25b6"

    .line 1736
    :goto_462
    if-eqz v5, :cond_46b

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_196

    .line 1735
    :cond_468
    const-string v3, "\u2665"

    goto :goto_462

    .line 1736
    :cond_46b
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_196

    .line 1738
    :cond_46f
    if-eqz v11, :cond_4a2

    .line 1739
    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v3, :cond_49e

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v8

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v0, v3

    move-wide/from16 v22, v0

    div-double v8, v8, v22

    double-to-float v10, v8

    .line 1740
    :goto_481
    const/4 v8, 0x3

    .line 1741
    if-eqz v2, :cond_4a0

    iget v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v2, :cond_4a0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v0, v6

    move-wide/from16 v22, v0

    div-double v2, v2, v22

    double-to-float v2, v2

    .line 1742
    :goto_492
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move v9, v2

    goto/16 :goto_198

    .line 1739
    :cond_49e
    const/4 v10, 0x0

    goto :goto_481

    .line 1741
    :cond_4a0
    const/4 v2, 0x0

    goto :goto_492

    .line 1743
    :cond_4a2
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v3

    if-eqz v3, :cond_4fa

    .line 1744
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getStationS()D

    move-result-wide v6

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    div-double v6, v6, v22

    double-to-float v10, v6

    .line 1745
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_4f6

    const/4 v8, 0x0

    .line 1746
    :goto_4c4
    if-eqz v2, :cond_4f8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-float v2, v2

    .line 1747
    :goto_4d6
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetImpulses()[I

    move-result-object v7

    .line 1748
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

    .line 1749
    if-eqz v9, :cond_6a0

    .line 1750
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move v5, v3

    move v9, v2

    goto/16 :goto_198

    .line 1745
    :cond_4f6
    const/4 v8, 0x4

    goto :goto_4c4

    .line 1746
    :cond_4f8
    const/4 v2, 0x0

    goto :goto_4d6

    .line 1753
    :cond_4fa
    if-eqz v12, :cond_533

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v3, :cond_533

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v8

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v0, v3

    move-wide/from16 v22, v0

    div-double v8, v8, v22

    double-to-float v3, v8

    .line 1754
    :goto_50c
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v6, :cond_535

    const/4 v8, 0x0

    .line 1755
    :goto_513
    if-eqz v2, :cond_537

    if-eqz v12, :cond_537

    iget v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v2, :cond_537

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    iget v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v0, v2

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v2, v0

    .line 1756
    :goto_527
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v6

    move v9, v2

    move v10, v3

    goto/16 :goto_198

    .line 1753
    :cond_533
    const/4 v3, 0x0

    goto :goto_50c

    .line 1754
    :cond_535
    const/4 v8, 0x4

    goto :goto_513

    .line 1755
    :cond_537
    const/4 v2, 0x0

    goto :goto_527

    .line 1760
    :cond_539
    const-string v2, "\u275a\u275a"

    goto/16 :goto_1b4

    .line 1764
    :cond_53d
    const/4 v2, 0x4

    goto/16 :goto_1d0

    .line 1774
    :cond_540
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_1e9

    .line 1777
    :cond_544
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_219

    .line 1778
    :cond_548
    const/16 v2, 0x8

    goto/16 :goto_21e

    .line 1793
    :cond_54c
    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_258

    .line 1796
    :cond_550
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-lez v4, :cond_5a4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  +"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_570
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1799
    iget-object v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v10, v2, [Ljava/lang/String;

    .line 1800
    const/4 v2, 0x0

    move v4, v2

    :goto_585
    array-length v2, v10

    if-ge v4, v2, :cond_5b0

    .line 1801
    iget-object v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1802
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-eqz v5, :cond_5a7

    const-string v2, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v5, "Recovery"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_59e
    aput-object v2, v10, v4

    .line 1800
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_585

    .line 1796
    :cond_5a4
    const-string v2, ""

    goto :goto_570

    .line 1802
    :cond_5a7
    iget-object v5, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_59e

    .line 1804
    :cond_5b0
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v8

    .line 1805
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getForecast()Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v5

    .line 1806
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    iget v6, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    if-eqz v3, :cond_67e

    iget v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    :goto_5c2
    invoke-virtual {v4, v6, v2}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->setHrScale(II)V

    .line 1807
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTrace()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v6

    invoke-virtual/range {v3 .. v10}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->set(Ljava/util/List;Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;DD[Ljava/lang/String;)V

    .line 1808
    if-eqz v5, :cond_681

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v2

    invoke-virtual {v5, v8, v9, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->leftS(DD)D

    move-result-wide v2

    .line 1809
    :goto_5dc
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

    .line 1810
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->boardSub:Landroid/widget/TextView;

    if-eqz v2, :cond_644

    .line 1811
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getImpulseName()Ljava/lang/String;

    move-result-object v3

    .line 1812
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->boardSub:Landroid/widget/TextView;

    if-eqz v12, :cond_693

    .line 1813
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1812
    if-eqz v11, :cond_687

    const-string v2, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Recovery"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_61c
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1813
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_690

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  \u00b7  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_639
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1812
    :goto_641
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1815
    :cond_644
    if-nez v13, :cond_696

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v2

    if-nez v2, :cond_696

    const/4 v2, 0x1

    :goto_651
    invoke-static {v14, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->showPhases(Lcom/isaigu/gymapp/ai/AutoEngine;Z)V

    .line 1817
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v3

    .line 1818
    if-eqz v3, :cond_698

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_698

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeMs()J

    move-result-wide v4

    sub-long v4, v16, v4

    const-wide/16 v6, 0x2ee0

    cmp-long v2, v4, v6

    if-gez v2, :cond_698

    const/4 v2, 0x1

    .line 1819
    :goto_66d
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    if-eqz v2, :cond_69a

    :goto_671
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1820
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    if-eqz v2, :cond_69d

    const/4 v2, 0x0

    :goto_679
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 1806
    :cond_67e
    const/4 v2, 0x0

    goto/16 :goto_5c2

    .line 1808
    :cond_681
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRemainingS()D

    move-result-wide v2

    goto/16 :goto_5dc

    .line 1812
    :cond_687
    iget-object v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_61c

    .line 1813
    :cond_690
    const-string v2, ""

    goto :goto_639

    :cond_693
    const-string v2, ""

    goto :goto_641

    .line 1815
    :cond_696
    const/4 v2, 0x0

    goto :goto_651

    .line 1818
    :cond_698
    const/4 v2, 0x0

    goto :goto_66d

    .line 1819
    :cond_69a
    const-string v3, ""

    goto :goto_671

    .line 1820
    :cond_69d
    const/16 v2, 0x8

    goto :goto_679

    :cond_6a0
    move v9, v2

    goto/16 :goto_198

    .line 1718
    nop

    :array_6a4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static refreshSetup()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1357
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v4

    move v2, v3

    .line 1358
    :goto_6
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3a

    .line 1359
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1360
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->setupLabels:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v5, :cond_2f

    const-string v0, "\u2014"

    :goto_28
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1358
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 1360
    :cond_2f
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 1362
    :cond_3a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canStart()Z

    move-result v1

    .line 1363
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo:Landroid/widget/TextView;

    if-eqz v0, :cond_4b

    .line 1364
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo:Landroid/widget/TextView;

    if-eqz v1, :cond_61

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_48
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1366
    :cond_4b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    if-eqz v0, :cond_60

    .line 1367
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v0

    .line 1368
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_65

    :goto_5d
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    :cond_60
    return-void

    .line 1364
    :cond_61
    const v0, 0x3ee66666    # 0.45f

    goto :goto_48

    .line 1369
    :cond_65
    if-eqz v1, :cond_6a

    const-string v0, ""

    goto :goto_5d

    :cond_6a
    const-string v0, "\u041a\u0430\u0447\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u043e\u0442 \u0433\u043b\u0430\u0432\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d \u2014 \u0421\u0442\u0430\u0440\u0442 \u0441\u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0432\u0430."

    const-string v1, "Raise the strength on the main screen \u2014 Start unlocks."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5d
.end method

.method private static ringKey(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1638
    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_8
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/ProgramArt;->passiveKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/ProgramArt;->templateKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private static screenClient(Landroid/content/Context;)V
    .registers 15

    .prologue
    .line 797
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v4

    .line 798
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v2

    .line 799
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

    .line 800
    :cond_2b
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v3, "Client"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    :goto_33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    if-eqz v2, :cond_363

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->subtitle(Ljava/lang/String;)V

    .line 803
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 804
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 805
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 806
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const v8, 0x3f933333    # 1.15f

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 808
    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 809
    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlocker()Ljava/lang/String;

    move-result-object v6

    .line 812
    if-nez v6, :cond_81

    .line 813
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 817
    :cond_81
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->profileOpen:Z

    if-eqz v0, :cond_36d

    .line 818
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 819
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

    .line 820
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v8, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v8, :cond_366

    const/4 v0, 0x0

    :goto_a9
    new-instance v8, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v9, 0x1c

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 819
    invoke-static {p0, v7, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 821
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 822
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

    .line 823
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

    .line 822
    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 823
    invoke-static {v8, v9, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 822
    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
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

    .line 825
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

    .line 824
    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0xa

    .line 825
    invoke-static {v8, v9, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 824
    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    const-string v0, "\u0420\u044a\u0441\u0442"

    const-string v8, "Height"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 827
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

    .line 826
    invoke-static {p0, v8, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0xa

    .line 828
    invoke-static {v8, v9, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 826
    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
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

    .line 831
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

    .line 830
    invoke-static {p0, v0, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v7, 0xa

    .line 832
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 830
    invoke-virtual {v1, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    :goto_1d3
    if-eqz v2, :cond_263

    iget-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksPostpartum:Z

    if-eqz v0, :cond_263

    .line 852
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 853
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

    .line 854
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

    .line 853
    invoke-static {p0, v1, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 855
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

    .line 856
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

    .line 857
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

    .line 858
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    :cond_263
    if-eqz v2, :cond_309

    iget-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    if-eqz v0, :cond_309

    .line 861
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 862
    const-string v1, "\u0413\u0440\u044a\u0431: \u0438\u043c\u0430 \u043b\u0438 \u043d\u044f\u043a\u043e\u0435 \u043e\u0442 \u0442\u0435\u0437\u0438?"

    const-string v2, "Back: any of these?"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 863
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

    .line 864
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

    .line 865
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

    .line 866
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

    .line 867
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

    .line 868
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

    .line 869
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    :cond_309
    if-nez v6, :cond_44e

    .line 874
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlock(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 880
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

    .line 881
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 882
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 883
    const/4 v1, 0x0

    .line 884
    const/4 v0, 0x0

    .line 885
    const/4 v2, 0x0

    :goto_32f
    sget-object v3, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_4cf

    .line 886
    sget-object v3, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    aget-object v8, v3, v2

    .line 887
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

    .line 888
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 885
    :goto_351
    add-int/lit8 v2, v2, 0x1

    goto :goto_32f

    .line 800
    :cond_354
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    goto/16 :goto_33

    .line 801
    :cond_363
    const/4 v0, 0x0

    goto/16 :goto_3c

    .line 820
    :cond_366
    const/4 v0, 0x1

    goto/16 :goto_a9

    .line 827
    :cond_369
    const-string v0, "\u2014"

    goto/16 :goto_162

    .line 835
    :cond_36d
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 836
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 837
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_42a

    const-string v0, "\u043d\u0438\u0441\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "low fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
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

    .line 841
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

    .line 840
    invoke-static {p0, v0, v1, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
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

    .line 845
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v8, 0x1d

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 847
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1d3

    .line 838
    :cond_42a
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_43a

    const-string v0, "\u0432\u0438\u0441\u043e\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "high fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_384

    .line 839
    :cond_43a
    const-string v0, "\u0441\u0440\u0435\u0434\u043d\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "medium fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_384

    .line 840
    :cond_444
    const-string v1, "\u041c\u044a\u0436"

    const-string v9, "Male"

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_397

    .line 876
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

    .line 891
    :cond_465
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 892
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

    .line 893
    new-instance v8, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v9, 0x26

    invoke-direct {v8, v9, v2}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 895
    if-eqz v1, :cond_49e

    const/4 v8, 0x3

    if-ne v0, v8, :cond_4b1

    .line 896
    :cond_49e
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 897
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_4cc

    const/4 v0, 0x0

    :goto_4a9
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    const/4 v0, 0x0

    .line 900
    :cond_4b1
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 901
    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 902
    invoke-virtual {v1, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_351

    .line 892
    :cond_4c9
    const-string v3, ""

    goto :goto_474

    .line 897
    :cond_4cc
    const/16 v0, 0x8

    goto :goto_4a9

    .line 905
    :cond_4cf
    if-eqz v1, :cond_4e9

    .line 906
    :goto_4d1
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_4e9

    .line 907
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

    .line 910
    :cond_4e9
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    if-nez v6, :cond_504

    const/4 v0, 0x1

    .line 913
    :goto_4f4
    const-string v1, "\u041a\u044a\u043c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u0432\u0430\u043d\u0435  \u203a"

    const-string v2, "To setup  \u203a"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->footer(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 914
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->enable(Z)V

    .line 915
    return-void

    .line 912
    :cond_504
    const/4 v0, 0x0

    goto :goto_4f4
.end method

.method private static screenProgram(Landroid/content/Context;)V
    .registers 24

    .prologue
    .line 487
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v18

    .line 488
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    const-string v4, "\u041a\u0430\u043a\u0432\u043e \u043f\u0440\u0430\u0432\u0438\u043c \u0434\u043d\u0435\u0441?"

    const-string v5, "What are we doing today?"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->subtitle(Ljava/lang/String;)V

    .line 490
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    .line 491
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v5

    .line 492
    array-length v3, v5

    new-array v6, v3, [Ljava/lang/String;

    .line 493
    const/4 v4, 0x0

    .line 494
    const/4 v3, 0x0

    :goto_26
    array-length v7, v5

    if-ge v3, v7, :cond_3d

    .line 495
    aget-object v7, v5, v3

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 496
    aget-object v7, v5, v3

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne v7, v8, :cond_3a

    move v4, v3

    .line 494
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 501
    :cond_3d
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 502
    const/16 v3, 0x10

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 503
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    move-object/from16 v0, p0

    invoke-static {v0, v6, v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const v8, 0x3fcccccd    # 1.6f

    invoke-direct {v4, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_167

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_167

    const/4 v3, 0x1

    .line 507
    :goto_81
    if-eqz v3, :cond_bf

    .line 508
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v7, "Active"

    .line 509
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v7, "Passive"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 510
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v3, v6, :cond_16a

    const/4 v3, 0x0

    :goto_a5
    new-instance v6, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 508
    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v6, 0xe

    .line 510
    move-object/from16 v0, p0

    invoke-static {v4, v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 508
    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    :cond_bf
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v3, v4, :cond_16d

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    if-eqz v3, :cond_16d

    const/4 v3, 0x1

    move v13, v3

    .line 516
    :goto_db
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v3, v4, :cond_11e

    .line 517
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "\u0428\u0430\u0431\u043b\u043e\u043d"

    const-string v6, "Template"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "\u0421 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v6, "With exercises"

    .line 518
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    if-eqz v3, :cond_171

    const/4 v3, 0x1

    :goto_103
    new-instance v5, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v6, 0x29

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 517
    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0xc

    .line 519
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 517
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    :cond_11e
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v20

    .line 523
    const/4 v3, 0x0

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

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 524
    const/16 v16, 0x0

    .line 525
    const/4 v5, 0x0

    .line 526
    const/4 v14, 0x0

    .line 527
    if-eqz v13, :cond_3d7

    .line 529
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    .line 530
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_155
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_173

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/Workout;

    .line 531
    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->addPick(Lcom/isaigu/gymapp/ai/Workout;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    goto :goto_155

    .line 506
    :cond_167
    const/4 v3, 0x0

    goto/16 :goto_81

    .line 510
    :cond_16a
    const/4 v3, 0x1

    goto/16 :goto_a5

    .line 515
    :cond_16d
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_db

    .line 518
    :cond_171
    const/4 v3, 0x0

    goto :goto_103

    .line 533
    :cond_173
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->presets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/Workout;

    .line 534
    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->addPick(Lcom/isaigu/gymapp/ai/Workout;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    goto :goto_17b

    .line 536
    :cond_18d
    const/4 v3, 0x0

    .line 537
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    :goto_195
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ac

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/Workout;

    .line 538
    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v4

    move v4, v3

    .line 539
    goto :goto_195

    .line 540
    :cond_1ac
    if-nez v4, :cond_1b9

    .line 541
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_276

    const/4 v3, 0x0

    :goto_1b7
    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    .line 543
    :cond_1b9
    const/4 v3, 0x0

    move v15, v3

    move/from16 v16, v5

    :goto_1bd
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_2a8

    .line 544
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/isaigu/gymapp/ai/Workout;

    .line 545
    iget-object v3, v12, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 546
    const/4 v3, 0x1

    invoke-virtual {v12}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42700000    # 60.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/isaigu/gymapp/ai/Workout;->distinctExercises()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u0443\u043f\u0440. \u00b7 "

    const-string v6, " ex. \u00b7 "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u0441\u0435\u0440\u0438\u0438"

    const-string v6, " sets"

    .line 548
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 549
    invoke-static {v12}, Lcom/isaigu/gymapp/ai/AutoUi;->presetProgram(Lcom/isaigu/gymapp/ai/Workout;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v11

    .line 551
    invoke-virtual {v12}, Lcom/isaigu/gymapp/ai/Workout;->effectiveLevel()I

    move-result v5

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/ProgramArt;->templateKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    iget-boolean v3, v12, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-eqz v3, :cond_283

    const-string v3, ""

    :goto_235
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v11, :cond_286

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, v18

    invoke-static {v11, v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v9

    .line 553
    :goto_24d
    if-eqz v11, :cond_288

    const/4 v10, 0x0

    :goto_250
    new-instance v11, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v3, 0x2a

    invoke-direct {v11, v3, v15}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    move-object/from16 v3, p0

    .line 551
    invoke-static/range {v3 .. v11}, Lcom/isaigu/gymapp/ai/AutoUi;->programCard(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Lcom/isaigu/gymapp/ai/AutoUi$Act;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 554
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoUi;->cardParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 551
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    if-eqz v4, :cond_59b

    .line 556
    invoke-static {v12}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->focusLine(Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v3

    .line 558
    :goto_26c
    add-int/lit8 v5, v16, 0x1

    .line 543
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    move-object v14, v3

    move/from16 v16, v5

    goto/16 :goto_1bd

    .line 541
    :cond_276
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    goto/16 :goto_1b7

    .line 552
    :cond_283
    const-string v3, "\u2605 "

    goto :goto_235

    :cond_286
    const/4 v9, 0x0

    goto :goto_24d

    .line 553
    :cond_288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u2248 "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " \u043c\u0438\u043d"

    const-string v11, " min"

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_250

    .line 560
    :cond_2a8
    if-nez v16, :cond_2ec

    .line 561
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041d\u044f\u043c\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0437\u0430 \u201e"

    const-string v6, "No exercise programs for \u201c"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 562
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u201c. \u041d\u0430\u043f\u0440\u0430\u0432\u0438 \u0433\u0438 \u0432 \u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u2014 \u043e\u0442\u0431\u0435\u043b\u0435\u0436\u0438 \u0438\u043c \u0446\u0435\u043b \u0438 \u0442\u0440\u0443\u0434\u043d\u043e\u0441\u0442."

    const-string v6, "\u201d. Make them in Programs \u2014 mark their goal and level."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 561
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AutoUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0xe

    .line 563
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 561
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    :cond_2ec
    :goto_2ec
    if-lez v16, :cond_350

    .line 610
    new-instance v3, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    .line 611
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 612
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 613
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 614
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    const/16 v4, 0xe

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    new-instance v4, Lcom/isaigu/gymapp/ai/AutoUi$StripTo;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    sget v6, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/AutoUi$StripTo;-><init>(Landroid/widget/HorizontalScrollView;I)V

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 616
    if-eqz v14, :cond_350

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_350

    .line 617
    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 618
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 619
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 620
    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    :cond_350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0423\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430: "

    const-string v5, "Operated by: "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v3

    if-eqz v3, :cond_545

    .line 625
    const-string v3, "\u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0441\u0430\u043c \u00b7 \u0441\u043c\u0435\u043d\u0438"

    const-string v5, "the client alone \u00b7 change"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 626
    :goto_36f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    .line 624
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 627
    const/4 v4, 0x0

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 628
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    const/16 v4, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    const/4 v4, 0x0

    .line 631
    if-eqz v13, :cond_54f

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    :goto_3b3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3b7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_559

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/Workout;

    .line 632
    iget-object v6, v3, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_556

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->presetProgram(Lcom/isaigu/gymapp/ai/Workout;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    if-nez v3, :cond_556

    const/4 v3, 0x1

    :goto_3d4
    or-int/2addr v3, v4

    move v4, v3

    .line 633
    goto :goto_3b7

    .line 566
    :cond_3d7
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v21

    .line 567
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v22

    .line 568
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    .line 569
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v4, v6, :cond_407

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->modRow()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v4

    if-nez v4, :cond_40a

    .line 570
    :cond_407
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 572
    :cond_40a
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    if-eqz v4, :cond_444

    .line 573
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 578
    :cond_413
    :goto_413
    const/4 v3, 0x0

    move/from16 v17, v3

    move-object v6, v14

    move v15, v5

    :goto_418
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_4e6

    .line 579
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 580
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v5

    .line 581
    if-eqz v5, :cond_475

    .line 583
    if-nez v16, :cond_595

    move-object v3, v6

    move v4, v15

    .line 578
    :goto_43b
    add-int/lit8 v7, v17, 0x1

    move/from16 v17, v7

    move-object v6, v3

    move v15, v4

    move-object/from16 v16, v5

    goto :goto_418

    .line 574
    :cond_444
    if-eqz v3, :cond_45b

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45b

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_413

    .line 575
    :cond_45b
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_473

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    :goto_46e
    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_413

    :cond_473
    const/4 v3, 0x0

    goto :goto_46e

    .line 588
    :cond_475
    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 589
    if-eqz v4, :cond_592

    .line 590
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->desc()Ljava/lang/String;

    move-result-object v12

    .line 592
    :goto_485
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v5

    if-eqz v5, :cond_4da

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/ProgramArt;->templateKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v6

    .line 593
    :goto_493
    iget v5, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_4e3

    const-string v7, "\u2605 "

    :goto_4a0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 594
    move-object/from16 v0, v18

    invoke-static {v3, v9, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v3, 0x7

    move/from16 v0, v17

    invoke-direct {v11, v3, v0}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    move-object/from16 v3, p0

    .line 593
    invoke-static/range {v3 .. v11}, Lcom/isaigu/gymapp/ai/AutoUi;->programCard(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Lcom/isaigu/gymapp/ai/AutoUi$Act;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 594
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoUi;->cardParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 593
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    add-int/lit8 v4, v15, 0x1

    move-object v3, v12

    move-object/from16 v5, v16

    goto/16 :goto_43b

    .line 592
    :cond_4da
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/ProgramArt;->passiveKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v6

    goto :goto_493

    .line 593
    :cond_4e3
    const-string v7, ""

    goto :goto_4a0

    .line 597
    :cond_4e6
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v3, v4, :cond_58f

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->modCards(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v3

    add-int/2addr v3, v15

    .line 599
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtAus;->byId(Ljava/lang/String;)Lcom/isaigu/gymapp/bodytech/BtAus$T;

    move-result-object v4

    .line 600
    if-eqz v4, :cond_58d

    .line 601
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/isaigu/gymapp/bodytech/BtAus$T;->goal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/isaigu/gymapp/bodytech/BtAus$T;->feel:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    .line 604
    :goto_51d
    if-nez v3, :cond_538

    .line 605
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    if-eqz v16, :cond_53c

    :goto_523
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0xe

    .line 606
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 605
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_538
    move/from16 v16, v3

    goto/16 :goto_2ec

    .line 606
    :cond_53c
    const-string v5, "\u041d\u044f\u043c\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u0442\u043e\u0437\u0438 \u0438\u0437\u0431\u043e\u0440."

    const-string v6, "No program for this choice."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_523

    .line 626
    :cond_545
    const-string v3, "\u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u00b7 \u0441\u043c\u0435\u043d\u0438"

    const-string v5, "trainer \u00b7 change"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_36f

    .line 631
    :cond_54f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_3b3

    .line 632
    :cond_556
    const/4 v3, 0x0

    goto/16 :goto_3d4

    .line 634
    :cond_559
    if-eqz v4, :cond_574

    const-string v3, "\u041a\u044a\u043c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u0432\u0430\u043d\u0435  \u203a"

    const-string v4, "To setup  \u203a"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_563
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AutoUi;->footer(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 635
    if-eqz v13, :cond_57f

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    if-eqz v3, :cond_57d

    const/4 v3, 0x1

    :goto_570
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->enable(Z)V

    .line 636
    return-void

    .line 634
    :cond_574
    const-string v3, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v4, "Next"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_563

    .line 635
    :cond_57d
    const/4 v3, 0x0

    goto :goto_570

    :cond_57f
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    if-nez v3, :cond_589

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    if-eqz v3, :cond_58b

    :cond_589
    const/4 v3, 0x1

    goto :goto_570

    :cond_58b
    const/4 v3, 0x0

    goto :goto_570

    :cond_58d
    move-object v14, v6

    goto :goto_51d

    :cond_58f
    move-object v14, v6

    move v3, v15

    goto :goto_51d

    :cond_592
    move-object v12, v6

    goto/16 :goto_485

    :cond_595
    move-object v3, v6

    move v4, v15

    move-object/from16 v5, v16

    goto/16 :goto_43b

    :cond_59b
    move-object v3, v14

    goto/16 :goto_26c
.end method

.method private static setupBack()V
    .registers 2

    .prologue
    .line 466
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 467
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 468
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 469
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->show(Landroid/app/Activity;I)V

    .line 471
    :cond_10
    return-void
.end method

.method private static setupGo()V
    .registers 3

    .prologue
    .line 475
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canStart()Z

    move-result v0

    if-nez v0, :cond_14

    .line 476
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    const-string v1, "\u041f\u044a\u0440\u0432\u043e \u0437\u0430\u0434\u0430\u0439 \u0441\u0438\u043b\u0430 \u043d\u0430 \u0440\u0435\u0434\u0430."

    const-string v2, "Set a strength on the row first."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    :goto_13
    return-void

    .line 479
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->startRun(Landroid/content/Context;)V

    .line 480
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    :goto_23
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    goto :goto_13

    .line 481
    :cond_27
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_23
.end method

.method private static setupWorkout()V
    .registers 5

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 432
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 433
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    :goto_1d
    move-object v1, v0

    .line 436
    goto :goto_7

    .line 437
    :cond_1f
    if-nez v1, :cond_22

    .line 456
    :cond_21
    :goto_21
    return-void

    .line 440
    :cond_22
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoUi;->presetProgram(Lcom/isaigu/gymapp/ai/Workout;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_35

    .line 444
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 445
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_21

    .line 448
    :cond_35
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 449
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 450
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 451
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/MapRunner;->arm(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v1

    .line 452
    if-eqz v1, :cond_21

    .line 453
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 454
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->open(Landroid/app/Activity;)V

    goto :goto_21

    :cond_4a
    move-object v0, v1

    goto :goto_1d
.end method

.method static show()V
    .registers 1

    .prologue
    .line 162
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 171
    :cond_e
    :goto_e
    return-void

    .line 165
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_e

    .line 167
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->open(Landroid/app/Activity;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_e

    .line 169
    :catch_1d
    move-exception v0

    goto :goto_e
.end method

.method private static show(Landroid/app/Activity;I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 175
    const/4 v0, 0x3

    if-ne p1, v0, :cond_23

    .line 177
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 178
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 179
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    :goto_16
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    .line 191
    :goto_19
    return-void

    .line 179
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_16

    .line 182
    :cond_23
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_31

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_68

    .line 183
    :cond_31
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 184
    const-string v0, ""

    const-string v1, ""

    const/16 v2, 0x49c

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 185
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x25

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 188
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 190
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

    .line 1539
    if-eqz p0, :cond_12

    .line 1540
    :goto_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1567
    :goto_11
    return-void

    .line 1539
    :cond_12
    const-string p0, ""

    goto :goto_9

    .line 1543
    :cond_15
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    .line 1544
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1545
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1546
    if-nez p1, :cond_26

    .line 1547
    new-array p1, v1, [Ljava/lang/String;

    :cond_26
    move v0, v1

    .line 1549
    :goto_27
    array-length v2, p1

    if-ge v0, v2, :cond_a6

    .line 1550
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1551
    const/16 v2, 0x30

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1552
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v6, 0x1

    invoke-static {v3, v2, v9, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1553
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1554
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

    .line 1555
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1556
    invoke-static {v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1557
    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1558
    aget-object v2, p1, v0

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v2, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1559
    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1560
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1561
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1562
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1563
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a4

    move v2, v1

    :goto_9a
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1549
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1563
    :cond_a4
    const/4 v2, 0x5

    goto :goto_9a

    .line 1565
    :cond_a6
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1566
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

    .line 1516
    :try_start_2
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1517
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1518
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    .line 1535
    :goto_16
    return-void

    .line 1521
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1522
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoUi;->infoText(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1523
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1524
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

    .line 1525
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

    .line 1526
    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 1525
    invoke-static {v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1527
    new-instance v3, Landroid/widget/PopupWindow;

    const/high16 v4, 0x43be0000    # 380.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-direct {v3, v2, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    .line 1528
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1529
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1530
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 1531
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

    .line 1532
    :catch_ad
    move-exception v0

    .line 1533
    const-string v1, "AutoUi.info"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1531
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

    .line 1574
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1605
    :goto_d
    return-void

    .line 1577
    :cond_e
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    .line 1578
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1579
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1580
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

    .line 1582
    :goto_2d
    array-length v3, p2

    if-ge v0, v3, :cond_c7

    .line 1583
    aget-object v3, p2, v0

    if-eqz v3, :cond_40

    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_43

    .line 1582
    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1586
    :cond_43
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 1587
    const/16 v3, 0x30

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1588
    array-length v3, v6

    rem-int v3, v0, v3

    aget v3, v6, v3

    .line 1589
    aget-object v8, p1, v0

    const/high16 v9, 0x41300000    # 11.0f

    invoke-static {v5, v8, v9, v3, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 1590
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1591
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

    .line 1592
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42580000    # 54.0f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41b00000    # 22.0f

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1593
    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1594
    invoke-virtual {v7, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1595
    aget-object v3, p2, v0

    const/high16 v8, 0x41600000    # 14.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v3, v8, v9, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1596
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1597
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1598
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1599
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v1, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1600
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    if-nez v2, :cond_c4

    move v3, v4

    :goto_b9
    invoke-static {v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1601
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_40

    .line 1600
    :cond_c4
    const/16 v3, 0xa

    goto :goto_b9

    .line 1603
    :cond_c7
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1604
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
    .line 1391
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    .line 1392
    :goto_6
    sget v1, Lcom/isaigu/gymapp/ai/AutoUi;->phasesShownFor:I

    if-ne v0, v1, :cond_d

    .line 1425
    :cond_a
    :goto_a
    return-void

    .line 1391
    :cond_b
    const/4 v0, -0x1

    goto :goto_6

    .line 1395
    :cond_d
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->phasesShownFor:I

    .line 1396
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1397
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_f1

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1398
    if-eqz p1, :cond_a

    .line 1401
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1402
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v7

    .line 1403
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 1404
    const/4 v0, 0x0

    move v1, v0

    :goto_2e
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_11c

    .line 1405
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1406
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v2

    if-ne v1, v2, :cond_f5

    const/4 v2, 0x1

    .line 1407
    :goto_45
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v3

    if-ge v1, v3, :cond_f8

    const/4 v3, 0x1

    .line 1408
    :goto_4c
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v4

    if-eqz v4, :cond_fb

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 1409
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

    .line 1410
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

    .line 1411
    if-eqz v2, :cond_10f

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1409
    :goto_92
    invoke-static {v6, v5, v9, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 1412
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

    .line 1413
    if-eqz v2, :cond_112

    const/16 v0, 0x30

    :goto_b5
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v10, v0

    .line 1414
    if-eqz v2, :cond_115

    :goto_c2
    if-eqz v2, :cond_117

    const v0, 0x3f99999a    # 1.2f

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 1413
    :goto_cb
    invoke-static {v9, v10, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1415
    if-eqz v3, :cond_119

    const v0, 0x3ee66666    # 0.45f

    :goto_d7
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1416
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1418
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1419
    invoke-virtual {v8, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1404
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2e

    .line 1397
    :cond_f1
    const/16 v0, 0x8

    goto/16 :goto_19

    .line 1406
    :cond_f5
    const/4 v2, 0x0

    goto/16 :goto_45

    .line 1407
    :cond_f8
    const/4 v3, 0x0

    goto/16 :goto_4c

    .line 1408
    :cond_fb
    if-eqz v2, :cond_101

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto/16 :goto_57

    :cond_101
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_57

    .line 1410
    :cond_105
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6a

    .line 1411
    :cond_10f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_92

    .line 1413
    :cond_112
    const/16 v0, 0x14

    goto :goto_b5

    .line 1414
    :cond_115
    const/4 v4, 0x0

    goto :goto_c2

    :cond_117
    const/4 v0, 0x0

    goto :goto_cb

    .line 1415
    :cond_119
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_d7

    .line 1421
    :cond_11c
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, v6}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 1422
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1423
    invoke-virtual {v0, v8}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1424
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_a
.end method

.method static startLabel(Lcom/isaigu/gymapp/ai/AutoEngine;J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 1826
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_82

    .line 1827
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "recovery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1829
    :goto_16
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v1

    .line 1830
    if-lez v1, :cond_44

    .line 1831
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

    .line 1842
    :goto_3a
    return-object v0

    .line 1828
    :cond_3b
    const-string v0, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430 \u0441\u0435\u0440\u0438\u044f"

    const-string v1, "next set"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1833
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

    .line 1834
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

    .line 1836
    :cond_82
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_a4

    .line 1837
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

    .line 1839
    :cond_a4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1840
    const-string v0, "\u25b6 \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v1, "\u25b6 Resume"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 1842
    :cond_b3
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_c1

    const-string v0, "\u2026 \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u0430"

    const-string v1, "\u2026 HR coming down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    .line 1843
    :cond_c1
    const-string v0, "\u275a\u275a \u041f\u0430\u0443\u0437\u0430"

    const-string v1, "\u275a\u275a Pause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a
.end method

.method private static startMod()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 677
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->modRow()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 678
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 679
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 680
    if-eqz v1, :cond_d

    if-nez v2, :cond_14

    .line 681
    :cond_d
    sput-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 682
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    .line 695
    :goto_13
    return-void

    .line 685
    :cond_14
    const-string v0, ""

    .line 687
    :try_start_16
    iget-object v4, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v4, :cond_40

    iget-object v4, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_40

    .line 688
    iget-object v4, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v4, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_30} :catch_47

    .line 691
    :goto_30
    sput-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 692
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 693
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 694
    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v2, v1, v3, v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_13

    .line 688
    :cond_40
    :try_start_40
    iget-object v4, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v4, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_46} :catch_47

    goto :goto_30

    .line 689
    :catch_47
    move-exception v4

    goto :goto_30
.end method

.method public static status()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2123
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 2124
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 2125
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_45

    if-eqz v1, :cond_45

    .line 2126
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 2127
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

    .line 2132
    :goto_41
    return-object v0

    .line 2127
    :cond_42
    const-string v0, ""

    goto :goto_27

    .line 2129
    :cond_45
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_52

    .line 2130
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v1, "Ready programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 2132
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

    .line 324
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTipText(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_10

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    if-nez v1, :cond_11

    .line 334
    :cond_10
    :goto_10
    return-void

    .line 328
    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 329
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v3, 0x3e23d70a    # 0.16f

    invoke-static {v2, v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 330
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 329
    invoke-static {v2, v3, v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v6, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x25

    invoke-direct {v0, v2, v5}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
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
    .line 337
    packed-switch p0, :pswitch_data_20

    .line 361
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 339
    :pswitch_5
    const-string v0, "\u0426\u0432\u0435\u0442\u044a\u0442 \u0435 \u0442\u0440\u0443\u0434\u043d\u043e\u0441\u0442\u0442\u0430: \u0437\u0435\u043b\u0435\u043d\u043e \u2014 \u043b\u0435\u0441\u043d\u0430, \u0436\u044a\u043b\u0442\u043e \u2014 \u0441\u0440\u0435\u0434\u043d\u0430, \u0447\u0435\u0440\u0432\u0435\u043d\u043e \u2014 \u0442\u0440\u0443\u0434\u043d\u0430. \u041f\u043e\u0434 \u0438\u043c\u0435\u0442\u043e \u0441\u0430 \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430 \u00b7 \u043e\u0441\u043d\u043e\u0432\u043d\u0430 \u0447\u0430\u0441\u0442 \u00b7 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435. \u201e\u0421 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u201c \u043f\u043e\u043a\u0430\u0437\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u043e\u0442 \u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438, \u0441\u0432\u044a\u0440\u0437\u0430\u043d\u0438 \u0441 \u0446\u0435\u043b\u0442\u0430. \u2605 \u2014 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0430\u043d\u0430 \u043f\u043e \u043f\u0440\u043e\u0444\u0438\u043b\u0430."

    const-string v1, "The colour is the difficulty: green easy, amber medium, red hard. Under the name: warm-up \u00b7 main part \u00b7 recovery. \u201cWith exercises\u201d shows the programs from Programs linked to the goal. \u2605 \u2014 recommended by the profile."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 346
    :pswitch_e
    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044a\u0442 \u0435 \u043e\u0442 \u043a\u043b\u0438\u0435\u043d\u0442\u0441\u043a\u0438\u044f \u0437\u0430\u043f\u0438\u0441, \u043f\u043b\u0430\u043d\u044a\u0442 \u0441\u0435 \u0441\u043c\u044f\u0442\u0430 \u043e\u0442 \u043d\u0435\u0433\u043e \u2014 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u0438 \u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442\u044a\u0442 \u0441\u0430 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430, \u043d\u0435 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442. \u201e\u0414\u043d\u0435\u0441\u201c \u2014 \u043a\u0430\u043a \u0435 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0441\u0435\u0433\u0430 (\u043d\u0435\u0434\u043e\u0441\u043f\u0430\u043b, \u0441\u0442\u0440\u0435\u0441, \u0446\u0438\u043a\u044a\u043b\u2026): \u043d\u0435 \u0441\u043f\u0438\u0440\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430, \u043f\u043b\u0430\u043d\u044a\u0442 \u0441\u0435 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u0441\u0430\u043c. \u0421\u0438\u043b\u0430\u0442\u0430 \u0441\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u0432\u0430 \u043d\u0430 \u0433\u043b\u0430\u0432\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d."

    const-string v1, "The profile comes from the client record and the plan from the profile \u2014 the time and the intensity are the program\'s, not changed. \u201cToday\u201d \u2014 how the client is now (short on sleep, stress, period\u2026): it never stops the session, the plan adapts by itself. The strength is set on the main screen."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 354
    :pswitch_17
    const-string v0, "\u0423\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0435 \u0441 \u0433\u043b\u0430\u0432\u043d\u0438\u0442\u0435 \u25b6 / \u275a\u275a \u0438 \u25a0. \u25a0 \u0434\u0435\u0439\u0441\u0442\u0432\u0430 \u043e\u0442 \u043f\u0430\u0443\u0437\u0430: \u043f\u044a\u0440\u0432\u0438\u044f\u0442 \u2014 \u043a\u044a\u043c 10 \u043c\u0438\u043d \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435, \u0432\u0442\u043e\u0440\u0438\u044f\u0442 \u2014 \u043a\u0440\u0430\u0439. \u0418\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0441\u0430 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e 20 \u043c\u0438\u043d. \u2715 \u0441\u043a\u0440\u0438\u0432\u0430 \u0442\u0430\u0431\u043b\u043e\u0442\u043e \u2014 \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430. \u24d8 \u043d\u0430 \u0432\u0441\u044f\u043a\u0430 \u0447\u0430\u0441\u0442 \u043a\u0430\u0437\u0432\u0430 \u043a\u0430\u043a\u0432\u043e \u043f\u043e\u043a\u0430\u0437\u0432\u0430."

    const-string v1, "Driven by the main \u25b6 / \u275a\u275a and \u25a0. \u25a0 works from a pause: the first \u2014 to the 10 min recovery, the second \u2014 the end. Impulses at most 20 min. \u2715 hides the board \u2014 the session goes on. Each part\'s \u24d8 says what it shows."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 337
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_5
        :pswitch_e
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method private static subtitle(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2037
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2038
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2039
    return-void

    .line 2038
    :cond_18
    const/16 v0, 0x8

    goto :goto_14
.end method

.method private static tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .prologue
    .line 2070
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2071
    return-void
.end method

.method private static tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 2074
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2075
    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2076
    const/high16 v1, 0x41c00000    # 24.0f

    const/4 v2, 0x1

    invoke-static {p0, p3, v1, p5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 2077
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2078
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2079
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p4, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2080
    return-void
.end method

.method private static tipsToggle(Landroid/content/Context;)Landroid/view/View;
    .registers 7

    .prologue
    .line 366
    const-string v0, "\u041f\u043e\u0434\u0441\u043a\u0430\u0437\u043a\u0438"

    const-string v1, "Tips"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041f\u0440\u0438 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u043f\u043e\u043b\u0437\u0432\u0430\u043d\u0435 \u043d\u0430 \u0431\u0443\u0442\u043e\u043d\u0438\u0442\u0435 \u0438 \u043c\u0435\u043d\u044e\u0442\u0430\u0442\u0430. \u041b\u0438\u043c\u0438\u0442\u0438\u0442\u0435 \u0438 \u0437\u0430\u0449\u0438\u0442\u0438\u0442\u0435 \u0441\u0435 \u043f\u043e\u043a\u0430\u0437\u0432\u0430\u0442 \u0432\u0438\u043d\u0430\u0433\u0438."

    const-string v2, "On the first use of buttons and menus. Limits and safety always show."

    .line 367
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn()Z

    move-result v2

    new-instance v3, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 366
    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2116
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 2119
    :goto_8
    return-void

    .line 2117
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private static toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;
    .registers 7

    .prologue
    .line 2054
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
    .line 1037
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1038
    const/16 v0, 0x50

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1039
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneNames()[Ljava/lang/String;

    move-result-object v3

    .line 1040
    const/4 v0, 0x0

    :goto_e
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel;->DISPLAY_ORDER:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d5

    .line 1041
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel;->DISPLAY_ORDER:[I

    aget v4, v1, v0

    .line 1042
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1043
    const/16 v1, 0x51

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1044
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v6, v1, v4

    .line 1045
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

    .line 1046
    const/16 v7, 0x11

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1047
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1048
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1049
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1050
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

    .line 1051
    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1052
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1053
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

    .line 1054
    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1055
    invoke-virtual {v5, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    aget-object v1, v3, v4

    const/high16 v4, 0x41300000    # 11.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {p0, v1, v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1057
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1058
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1059
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 1045
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

    .line 1061
    :cond_d5
    return-object v2
.end method

.method static zoneNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1065
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 1066
    const/4 v1, 0x3

    const-string v2, "\u041f\u0440\u0430\u0441\u0435\u0446"

    const-string v3, "Calf"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1067
    const/4 v1, 0x2

    const-string v2, "\u041f\u0440. \u0431\u0435\u0434\u0440\u043e"

    const-string v3, "Quads"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1068
    const/16 v1, 0x9

    const-string v2, "\u0417\u0430\u0434. \u0431\u0435\u0434\u0440\u043e"

    const-string v3, "Hamstr."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1069
    const/16 v1, 0x8

    const-string v2, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v3, "Glutes"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1070
    const/4 v1, 0x1

    const-string v2, "\u041a\u043e\u0440\u0435\u043c"

    const-string v3, "Abs"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1071
    const/4 v1, 0x7

    const-string v2, "\u041a\u0440\u044a\u0441\u0442"

    const-string v3, "Low back"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1072
    const/4 v1, 0x6

    const-string v2, "\u0413\u0440\u044a\u0431"

    const-string v3, "Back"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1073
    const/4 v1, 0x5

    const-string v2, "\u0422\u0440\u0430\u043f\u0435\u0446"

    const-string v3, "Traps"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1074
    const/4 v1, 0x0

    const-string v2, "\u0413\u044a\u0440\u0434\u0438"

    const-string v3, "Chest"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1075
    const/4 v1, 0x4

    const-string v2, "\u0420\u044a\u0446\u0435"

    const-string v3, "Arms"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1076
    return-object v0
.end method
