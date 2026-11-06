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

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    .line 1280
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

    .line 1861
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v2

    .line 1862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1863
    packed-switch p0, :pswitch_data_264

    .line 2011
    :goto_d
    :pswitch_d
    return-void

    .line 1865
    :pswitch_e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_1a

    .line 1866
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_d

    .line 1868
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 1869
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_d

    .line 1872
    :pswitch_21
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->next()V

    goto :goto_d

    .line 1873
    :pswitch_25
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->back()V

    goto :goto_d

    .line 1874
    :pswitch_29
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    goto :goto_d

    .line 1876
    :pswitch_2d
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1877
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v0

    aget-object v0, v0, p2

    .line 1878
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-eq v0, v3, :cond_53

    .line 1879
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 1880
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1881
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v3, :cond_60

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_4f
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 1883
    :cond_51
    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 2007
    :cond_53
    :goto_53
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-ne v0, v1, :cond_5a

    .line 2008
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 2010
    :cond_5a
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_d

    .line 1881
    :cond_60
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_4f

    .line 1888
    :pswitch_63
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1889
    if-ne p2, v1, :cond_68

    move v0, v1

    :cond_68
    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    goto :goto_53

    .line 1892
    :pswitch_6b
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1893
    if-nez p2, :cond_76

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_71
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 1894
    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_53

    .line 1893
    :cond_76
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_71

    .line 1897
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

    .line 1899
    :pswitch_87
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->profileOpen:Z

    goto :goto_53

    .line 1900
    :pswitch_8a
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->healthOpen:Z

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->healthOk:Z

    goto :goto_53

    .line 1901
    :pswitch_8f
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    if-nez v2, :cond_94

    move v0, v1

    :cond_94
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    goto :goto_53

    .line 1903
    :pswitch_97
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_a1

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    :cond_a1
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1904
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v3

    .line 1905
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_53

    .line 1906
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 1907
    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 1908
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    if-eqz v0, :cond_53

    .line 1910
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 1911
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 1912
    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->openAuto(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1919
    :pswitch_d9
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_e3

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    :cond_e3
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1920
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    array-length v0, v0

    if-ge p1, v0, :cond_53

    .line 1921
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->id:Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 1922
    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto/16 :goto_53

    .line 1925
    :pswitch_f6
    if-nez p2, :cond_fe

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_fa
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_53

    :cond_fe
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_fa

    .line 1926
    :pswitch_101
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->values()[Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v0

    aget-object v0, v0, p2

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto/16 :goto_53

    .line 1927
    :pswitch_10b
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

    .line 1928
    :pswitch_11e
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

    .line 1930
    :pswitch_137
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_143

    const/16 v0, 0xaa

    :goto_13d
    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 1931
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->heightTouched:Z

    goto/16 :goto_53

    .line 1930
    :cond_143
    const/16 v0, 0x78

    const/16 v3, 0xdc

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    add-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_13d

    .line 1934
    :pswitch_153
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-ne p2, v1, :cond_15e

    move v0, v1

    :cond_15e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_53

    .line 1937
    :pswitch_167
    sget-object v3, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-object v0, v3, v0

    .line 1938
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 1939
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_53

    .line 1944
    :pswitch_187
    if-ne p2, v1, :cond_18a

    move v0, v1

    .line 1945
    :cond_18a
    packed-switch p1, :pswitch_data_2c2

    .line 1950
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hydrated:Z

    goto/16 :goto_53

    .line 1946
    :pswitch_193
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->feverOrIllness:Z

    goto/16 :goto_53

    .line 1947
    :pswitch_199
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->alcoholOrStress48h:Z

    goto/16 :goto_53

    .line 1948
    :pswitch_19f
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    goto/16 :goto_53

    .line 1949
    :pswitch_1a5
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->ateLast2h:Z

    goto/16 :goto_53

    .line 1954
    :pswitch_1ab
    if-ne p2, v1, :cond_1ae

    move v0, v1

    .line 1955
    :cond_1ae
    packed-switch p1, :pswitch_data_2ce

    .line 1964
    :pswitch_1b1
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backBladder:Z

    goto/16 :goto_53

    .line 1956
    :pswitch_1b7
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    goto/16 :goto_53

    .line 1957
    :pswitch_1bd
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    goto/16 :goto_53

    .line 1958
    :pswitch_1c3
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    goto/16 :goto_53

    .line 1959
    :pswitch_1c9
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backAcute:Z

    goto/16 :goto_53

    .line 1960
    :pswitch_1cf
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backRadiating:Z

    goto/16 :goto_53

    .line 1961
    :pswitch_1d5
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backTrauma:Z

    goto/16 :goto_53

    .line 1962
    :pswitch_1db
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backSurgery:Z

    goto/16 :goto_53

    .line 1963
    :pswitch_1e1
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backNightPainFever:Z

    goto/16 :goto_53

    .line 1968
    :pswitch_1e7
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

    .line 1970
    :pswitch_1fc
    iput p2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    .line 1971
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_53

    .line 1974
    :pswitch_203
    if-ne p2, v1, :cond_20c

    :goto_205
    iput-boolean v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 1975
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    goto/16 :goto_d

    :cond_20c
    move v1, v0

    .line 1974
    goto :goto_205

    .line 1978
    :pswitch_20e
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    if-nez v2, :cond_213

    move v0, v1

    :cond_213
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    goto/16 :goto_53

    .line 1981
    :pswitch_217
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    if-ne p2, v1, :cond_220

    :goto_21b
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->setTips(Landroid/content/Context;Z)V

    goto/16 :goto_d

    :cond_220
    move v1, v0

    goto :goto_21b

    .line 1984
    :pswitch_222
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo()V

    goto/16 :goto_d

    .line 1987
    :pswitch_227
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->setupBack()V

    goto/16 :goto_d

    .line 1990
    :pswitch_22c
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_236

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    :cond_236
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    .line 1991
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_53

    .line 1992
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    goto/16 :goto_53

    .line 1997
    :pswitch_24e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 1998
    if-eqz v0, :cond_25f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_25f

    .line 1999
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->next()Z

    .line 2001
    :cond_25f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V

    goto/16 :goto_d

    .line 1863
    :pswitch_data_264
    .packed-switch 0x1
        :pswitch_e
        :pswitch_21
        :pswitch_25
        :pswitch_2d
        :pswitch_6b
        :pswitch_79
        :pswitch_97
        :pswitch_101
        :pswitch_10b
        :pswitch_11e
        :pswitch_137
        :pswitch_153
        :pswitch_187
        :pswitch_1ab
        :pswitch_1e7
        :pswitch_d
        :pswitch_d
        :pswitch_1fc
        :pswitch_203
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_f6
        :pswitch_87
        :pswitch_d
        :pswitch_8a
        :pswitch_8f
        :pswitch_29
        :pswitch_d
        :pswitch_d
        :pswitch_217
        :pswitch_20e
        :pswitch_167
        :pswitch_d
        :pswitch_24e
        :pswitch_63
        :pswitch_22c
        :pswitch_222
        :pswitch_227
        :pswitch_d9
    .end packed-switch

    .line 1945
    :pswitch_data_2c2
    .packed-switch 0x0
        :pswitch_193
        :pswitch_199
        :pswitch_19f
        :pswitch_1a5
    .end packed-switch

    .line 1955
    :pswitch_data_2ce
    .packed-switch 0x1
        :pswitch_1b7
        :pswitch_1bd
        :pswitch_1c3
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_1c9
        :pswitch_1cf
        :pswitch_1d5
        :pswitch_1db
        :pswitch_1e1
    .end packed-switch
.end method

.method private static addPick(Lcom/isaigu/gymapp/ai/Workout;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V
    .registers 5

    .prologue
    .line 719
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/ai/Workout;->fits(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 730
    :cond_12
    :goto_12
    return-void

    .line 722
    :cond_13
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->presetProgram(Lcom/isaigu/gymapp/ai/Workout;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_22

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 726
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

    .line 729
    :cond_36
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 726
    :cond_3c
    const-string v0, "f"

    goto :goto_30
.end method

.method private static back()V
    .registers 2

    .prologue
    .line 468
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-lez v0, :cond_10

    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_10

    .line 469
    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    .line 471
    :cond_10
    return-void
.end method

.method private static banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .registers 8

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v3, 0x41600000    # 14.0f

    .line 2102
    const/4 v0, 0x1

    invoke-static {p0, p2, v3, p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 2103
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2104
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

    .line 2105
    return-object v0
.end method

.method static buildBoard(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 15

    .prologue
    .line 1141
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 1142
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_404

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    :goto_a
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 1143
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    .line 1144
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    .line 1145
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1148
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->boardSub:Landroid/widget/TextView;

    .line 1151
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1152
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1153
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1154
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1155
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

    .line 1156
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const v10, 0x800013

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 1159
    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1160
    const-string v7, ""

    const/high16 v8, 0x42200000    # 40.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v10, 0x1

    invoke-static {p0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    sput-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    .line 1161
    sget-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    const-string v8, "sans-serif-condensed"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1162
    sget-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1163
    sget-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1164
    new-instance v7, Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/ai/AutoViews$Dots;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    .line 1165
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41b00000    # 22.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1166
    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1167
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    invoke-virtual {v6, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1168
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const v10, 0x800015

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1172
    new-instance v6, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;

    const/high16 v7, 0x43960000    # 300.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, p0, v7, v8}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;-><init>(Landroid/content/Context;II)V

    .line 1173
    new-instance v7, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    const v8, 0x3d4ccccd    # 0.05f

    const/high16 v9, 0x44fa0000    # 2000.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, p0, v8, v9}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;-><init>(Landroid/content/Context;FI)V

    .line 1174
    new-instance v8, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v8, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 1175
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v9, 0x2

    const/4 v12, 0x2

    invoke-virtual {v8, v10, v11, v9, v12}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 1176
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v7, v8}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1177
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

    .line 1178
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1179
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    .line 1180
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1181
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v1, 0x28

    const/4 v8, 0x0

    invoke-direct {v0, v1, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1182
    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->addView(Landroid/view/View;)V

    .line 1183
    const-string v0, "\u2192"

    const/high16 v1, 0x41b00000    # 22.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v8, 0x0

    invoke-static {p0, v0, v1, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    .line 1184
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1185
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->addView(Landroid/view/View;)V

    .line 1186
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    const v1, 0x3d75c28f    # 0.06f

    const/high16 v7, 0x44fa0000    # 2000.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v0, p0, v1, v7}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;-><init>(Landroid/content/Context;FI)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    .line 1187
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    .line 1188
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 1189
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v1, 0x2

    const/4 v7, 0x2

    invoke-virtual {v0, v8, v9, v1, v7}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 1190
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1191
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runNextRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->addView(Landroid/view/View;)V

    .line 1192
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    invoke-virtual {v6, v0}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->addView(Landroid/view/View;)V

    .line 1193
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v7, -0x1

    invoke-direct {v0, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1197
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    const-string v1, ""

    const/high16 v5, 0x41900000    # 18.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    .line 1199
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1200
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1201
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v6, 0x28

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1202
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    .line 1205
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    const/4 v5, 0x6

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    .line 1207
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1208
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1209
    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1210
    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1211
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1212
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v5, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1213
    const-string v0, "-"

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    .line 1214
    const/4 v0, -0x2

    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->phasesShownFor:I

    .line 1215
    const/4 v0, 0x0

    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->infoCorner(Landroid/content/Context;Landroid/widget/LinearLayout;I)Landroid/view/View;

    move-result-object v1

    .line 1216
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    .line 1217
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

    .line 1218
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 1217
    invoke-static {v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1219
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1220
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    move-object v0, v1

    .line 1221
    check-cast v0, Landroid/widget/FrameLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1223
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0x40133333    # 2.3f

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1225
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1226
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1227
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 1228
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1230
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1231
    const-string v4, ""

    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    .line 1232
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    const v5, 0x800005

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1233
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1234
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1235
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1237
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    .line 1238
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42780000    # 62.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    const-string v4, "\u041d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435"

    const-string v5, "Load"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1240
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1241
    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1242
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    .line 1243
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1244
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1245
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1246
    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1247
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1249
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1250
    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->infoCorner(Landroid/content/Context;Landroid/widget/LinearLayout;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1254
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1255
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    .line 1256
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42b80000    # 92.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1257
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1258
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1259
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    .line 1260
    new-instance v2, Lcom/isaigu/gymapp/ai/ImpulseGlyph;

    const/4 v3, 0x1

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const v5, 0x3fe66666    # 1.8f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;-><init>(IIF)V

    .line 1261
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->setBounds(IIII)V

    .line 1262
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1263
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1264
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runClock:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1265
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    .line 1266
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    const v3, 0x800005

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1267
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1268
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1269
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1270
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1271
    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1272
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1273
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1274
    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->infoCorner(Landroid/content/Context;Landroid/widget/LinearLayout;I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1275
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V

    .line 1276
    return-void

    .line 1142
    :cond_404
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    goto/16 :goto_a

    .line 1177
    :cond_408
    const/4 v0, 0x0

    goto/16 :goto_ea
.end method

.method static buildSetupBoard(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 14

    .prologue
    .line 1290
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 1291
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_298

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    :goto_a
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 1292
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    .line 1293
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 1294
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->setupLabels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1295
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1296
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1297
    const/16 v2, 0x10

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1299
    if-eqz v0, :cond_29c

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 1300
    :goto_2a
    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v2

    if-eqz v2, :cond_29f

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ProgramArt;->templateKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v0

    .line 1301
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

    .line 1303
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1304
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1305
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1306
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

    .line 1307
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

    .line 1308
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1310
    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1311
    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1312
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1313
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

    .line 1314
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 1313
    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1315
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1316
    iget-object v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v7, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v5

    .line 1317
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

    .line 1318
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

    .line 1319
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

    .line 1320
    const/16 v5, 0x8

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1321
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

    .line 1323
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 1321
    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1324
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

    .line 1325
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

    .line 1326
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoUi;->cr10Text(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x1

    .line 1324
    invoke-static {p0, v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v5, 0x8

    .line 1326
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 1324
    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1327
    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->cr10Scale(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1328
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1329
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1330
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1331
    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1333
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1334
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1335
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v6

    .line 1336
    const/4 v0, 0x0

    move v1, v0

    :goto_21e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c8

    .line 1337
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1338
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 1339
    const/16 v2, 0x10

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1340
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

    .line 1342
    const-string v2, ""

    const/high16 v8, 0x41c00000    # 24.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v10, 0x1

    invoke-static {p0, v2, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1343
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->setupLabels:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1345
    if-nez v1, :cond_2c6

    const/4 v2, 0x0

    :goto_268
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1346
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v2, :cond_294

    .line 1347
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

    .line 1336
    :cond_294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21e

    .line 1291
    :cond_298
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    goto/16 :goto_a

    .line 1299
    :cond_29c
    const/4 v0, 0x0

    goto/16 :goto_2a

    .line 1300
    :cond_29f
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ProgramArt;->passiveKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_36

    .line 1325
    :cond_2a5
    const-string v0, ""

    goto/16 :goto_1b3

    .line 1340
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

    .line 1345
    :cond_2c6
    const/4 v2, 0x4

    goto :goto_268

    .line 1350
    :cond_2c8
    const-string v0, ""

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v6, 0x1

    invoke-static {p0, v0, v1, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    .line 1351
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1352
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1353
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1354
    const-string v0, "\u25b6  \u0421\u0442\u0430\u0440\u0442"

    const-string v1, "\u25b6  Start"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo:Landroid/widget/TextView;

    .line 1355
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x2b

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1356
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v6, 0x42840000    # 66.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1357
    const-string v0, "\u2039  \u041d\u0430\u0437\u0430\u0434"

    const-string v1, "\u2039  Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 1358
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x2c

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1359
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1360
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43820000    # 260.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1362
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1363
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshSetup()V

    .line 1364
    return-void
.end method

.method private static cardParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 733
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 734
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 735
    return-object v0
.end method

.method private static choiceCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 2061
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 2062
    if-eqz p3, :cond_4d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v1, 0x3e6147ae    # 0.22f

    invoke-static {v0, p4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    :goto_10
    const/high16 v1, 0x41800000    # 16.0f

    .line 2063
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

    .line 2062
    invoke-static {v0, v4, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2064
    const/high16 v0, 0x41900000    # 18.0f

    if-eqz p3, :cond_57

    :goto_2d
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2065
    const/high16 v0, 0x41500000    # 13.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 2066
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2067
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2068
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 2069
    return-object v3

    .line 2062
    :cond_4d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    goto :goto_10

    .line 2063
    :cond_50
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    move v2, v1

    goto :goto_1a

    :cond_54
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1e

    .line 2064
    :cond_57
    sget p4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_2d
.end method

.method private static clientBlocker()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1039
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 1040
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlocker()Ljava/lang/String;

    move-result-object v0

    .line 1041
    if-eqz v0, :cond_a

    .line 1044
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

    .line 1094
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 1095
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    move v6, v5

    .line 1096
    :goto_f
    const/16 v0, 0xa

    if-gt v6, v0, :cond_95

    .line 1097
    if-lt v6, p1, :cond_75

    if-gt v6, p2, :cond_75

    move v4, v5

    .line 1098
    :goto_18
    const/4 v0, 0x3

    if-gt v6, v0, :cond_77

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 1099
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

    .line 1100
    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1101
    if-eqz v4, :cond_87

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_37
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v10, v1

    .line 1102
    if-eqz v4, :cond_8e

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move v3, v1

    :goto_43
    if-eqz v4, :cond_90

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 1101
    :goto_4b
    invoke-static {v0, v10, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1103
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_92

    const/high16 v0, 0x42380000    # 46.0f

    :goto_58
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1104
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1105
    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1106
    invoke-virtual {v8, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_f

    :cond_75
    move v4, v2

    .line 1097
    goto :goto_18

    .line 1098
    :cond_77
    const/4 v0, 0x6

    if-gt v6, v0, :cond_7d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_1d

    :cond_7d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    goto :goto_1d

    .line 1099
    :cond_80
    const/high16 v1, 0x41600000    # 14.0f

    move v3, v1

    goto :goto_26

    :cond_84
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_2a

    .line 1101
    :cond_87
    const/16 v1, 0x22

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_37

    :cond_8e
    move v3, v2

    .line 1102
    goto :goto_43

    :cond_90
    move v1, v2

    goto :goto_4b

    .line 1103
    :cond_92
    const/high16 v0, 0x42180000    # 38.0f

    goto :goto_58

    .line 1108
    :cond_95
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1109
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1110
    return-object v7
.end method

.method private static cr10Text(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1114
    const/4 v0, 0x3

    if-gt p0, v0, :cond_c

    .line 1115
    const-string v0, "\u044f\u0441\u043d\u043e, \u043b\u0435\u043a\u043e"

    const-string v1, "clear, light"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    :goto_b
    return-object v0

    .line 1117
    :cond_c
    const/4 v0, 0x5

    if-gt p0, v0, :cond_18

    .line 1118
    const-string v0, "\u0441\u0438\u043b\u043d\u043e, \u043d\u043e \u043f\u0440\u0438\u044f\u0442\u043d\u043e"

    const-string v1, "strong but pleasant"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1120
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
    .line 198
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_b

    .line 200
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_f

    .line 204
    :cond_b
    :goto_b
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 205
    return-void

    .line 201
    :catch_f
    move-exception v0

    goto :goto_b
.end method

.method private static enable(Z)V
    .registers 3

    .prologue
    .line 394
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 395
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    if-eqz p0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 397
    :cond_d
    return-void

    .line 395
    :cond_e
    const v0, 0x3ee66666    # 0.45f

    goto :goto_a
.end method

.method static flashSetEnd()V
    .registers 4

    .prologue
    .line 219
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    .line 220
    if-nez v0, :cond_5

    .line 230
    :goto_4
    return-void

    .line 224
    :cond_5
    :try_start_5
    const-string v1, "alpha"

    const/4 v2, 0x5

    new-array v2, v2, [F

    fill-array-data v2, :array_22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 225
    const-wide/16 v2, 0x578

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 226
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_19} :catch_1a

    goto :goto_4

    .line 227
    :catch_1a
    move-exception v0

    .line 228
    const-string v1, "AutoUi.flash"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 224
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

    .line 382
    if-eqz p2, :cond_1f

    .line 383
    const-string v0, "\u041d\u0430\u0437\u0430\u0434"

    const-string v1, "Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 384
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    :cond_1f
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    invoke-static {p0, p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    .line 389
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->primary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    return-void
.end method

.method private static go(I)V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 269
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    if-eqz v0, :cond_99

    sget v0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-ne p0, v0, :cond_99

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 270
    :goto_16
    sget v2, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    if-eq p0, v2, :cond_1c

    .line 271
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    .line 273
    :cond_1c
    sput p0, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    .line 274
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 275
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 276
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 277
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->rowLabels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 279
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    .line 280
    packed-switch p0, :pswitch_data_ae

    .line 285
    :goto_46
    invoke-static {v2, p0}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTip(Landroid/content/Context;I)V

    .line 286
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTipText(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a4

    move v2, v1

    :goto_54
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    if-ge p0, v5, :cond_a6

    .line 288
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
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

    .line 293
    :goto_82
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v3, 0x3f70a3d7    # 0.94f

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 294
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$ScrollTo;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/AutoUi$ScrollTo;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void

    :cond_99
    move v0, v1

    .line 269
    goto/16 :goto_16

    .line 281
    :pswitch_9c
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->screenProgram(Landroid/content/Context;)V

    goto :goto_46

    .line 282
    :pswitch_a0
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoUi;->screenClient(Landroid/content/Context;)V

    goto :goto_46

    :cond_a4
    move v2, v3

    .line 286
    goto :goto_54

    .line 291
    :cond_a6
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_82

    .line 280
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_a0
    .end packed-switch
.end method

.method static goalColor(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)I
    .registers 3

    .prologue
    .line 2117
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 2120
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_d
    return v0

    .line 2118
    :pswitch_e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    goto :goto_d

    .line 2119
    :pswitch_11
    const v0, -0xd95966

    goto :goto_d

    .line 2117
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
    .line 2109
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 2112
    const-string v0, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v1, "Toning"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 2110
    :pswitch_14
    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v1, "Weight loss"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 2111
    :pswitch_1d
    const-string v0, "\u0417\u0434\u0440\u0430\u0432\u0435"

    const-string v1, "Health"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 2109
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

    .line 799
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

    .line 800
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 804
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
    .line 2077
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

    .line 1621
    :try_start_1
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v0

    .line 1622
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howText()Ljava/lang/String;

    move-result-object v0

    .line 1623
    :goto_b
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    .line 1624
    :cond_17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1642
    :goto_1a
    return-object v0

    .line 1622
    :cond_1b
    const/4 v0, 0x0

    goto :goto_b

    .line 1626
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?<=[.!?])\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1627
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1628
    array-length v5, v3

    move v1, v2

    :goto_2e
    if-ge v1, v5, :cond_56

    aget-object v0, v3, v1

    .line 1629
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1630
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1631
    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1633
    :cond_49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_52

    .line 1634
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1628
    :cond_52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    .line 1637
    :cond_56
    :goto_56
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_8b

    .line 1638
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

    .line 1641
    :catch_87
    move-exception v0

    .line 1642
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_1a

    .line 1640
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

    .line 1443
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1444
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1446
    const-string v2, "i"

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {p0, v2, v4, v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1447
    const/16 v2, 0x11

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1448
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

    .line 1449
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 1448
    invoke-static {v2, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1450
    const-string v2, "\u041a\u0430\u043a \u0440\u0430\u0431\u043e\u0442\u0438"

    const-string v5, "How it works"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1451
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoUi$InfoTap;

    invoke-direct {v2, p2}, Lcom/isaigu/gymapp/ai/AutoUi$InfoTap;-><init>(I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1452
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1454
    if-ne p2, v0, :cond_86

    .line 1455
    :goto_5e
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 1456
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    if-eqz v0, :cond_88

    const v2, 0x800003

    :goto_6d
    or-int/lit8 v2, v2, 0x30

    invoke-direct {v5, v6, v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1457
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

    .line 1458
    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1459
    return-object v3

    :cond_86
    move v0, v1

    .line 1454
    goto :goto_5e

    .line 1456
    :cond_88
    const v2, 0x800005

    goto :goto_6d

    :cond_8c
    move v2, v1

    .line 1457
    goto :goto_78

    :cond_8e
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    goto :goto_7f
.end method

.method static infoText(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1463
    packed-switch p0, :pswitch_data_24

    .line 1497
    :pswitch_3
    const-string v0, "\u0426\u044f\u043b\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u043f\u043e \u0440\u0435\u0430\u043b\u043d\u0438\u044f \u0447\u0430\u0441\u043e\u0432\u043d\u0438\u043a: \u0432\u0438\u0441\u043e\u0447\u0438\u043d\u0430 \u0438 \u0446\u0432\u044f\u0442 \u2014 \u043e\u0431\u0449\u043e\u0442\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 (\u0433\u043e\u0440\u0435 = 100 %, \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u0438\u044f\u0442 \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430).\n\u0421\u0435\u0440\u0438\u044f\u0442\u0430 (\u0415\u041c\u0421 + \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e) \u0441\u0442\u043e\u0438 \u0432\u0438\u0441\u043e\u043a\u043e, \u043f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0438 \u0432\u0441\u044f\u043a\u0430 \u043f\u0430\u0443\u0437\u0430 \u043f\u0430\u0434\u0430\u0442 \u0441 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e, \u0434\u043e\u043a\u0430\u0442\u043e \u0442\u0440\u0430\u044f\u0442. \u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435\u0442\u043e \u043d\u0430\u043a\u0440\u0430\u044f \u0435 \u043e\u0442\u0434\u0435\u043b\u043d\u0430, \u043d\u0438\u0441\u043a\u0430 \u0447\u0430\u0441\u0442.\n\u041c\u0438\u043d\u0430\u043b\u043e\u0442\u043e \u0435 \u044f\u0440\u043a\u043e, \u043f\u0440\u0435\u0434\u0441\u0442\u043e\u044f\u0449\u043e\u0442\u043e \u2014 \u043f\u0440\u043e\u0433\u043d\u043e\u0437\u0430 \u043e\u0442 \u0441\u0435\u0433\u0430\u0448\u043d\u043e\u0442\u043e \u0441\u044a\u0441\u0442\u043e\u044f\u043d\u0438\u0435.\n\u0427\u0435\u0440\u0432\u0435\u043d\u0430 \u043b\u0438\u043d\u0438\u044f \u2014 \u043f\u0443\u043b\u0441\u044a\u0442, \u043f\u0443\u043d\u043a\u0442\u0438\u0440 \u2014 \u0442\u0430\u0432\u0430\u043d\u044a\u0442. \u0427\u0430\u0441\u043e\u0432\u043d\u0438\u043a\u044a\u0442 \u0431\u0440\u043e\u0438 \u0438 \u043f\u0430\u0443\u0437\u0438\u0442\u0435."

    const-string v1, "The whole session on the real clock: height and colour \u2014 the total load (top = 100 %, the client\'s healthy maximum).\nA set (EMS + the exercise) stands high, the rest and any pause fall with the load as long as they last. The recovery at the end is its own low part.\nThe past is bright, what comes is forecast from the state now.\nRed line \u2014 the HR, dashed \u2014 the ceiling. The clock counts the pauses too."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 1465
    :pswitch_c
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTipText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1467
    :pswitch_12
    const-string v0, "\u041f\u0440\u044a\u0441\u0442\u0435\u043d\u044a\u0442 \u0435 \u0441\u0435\u0440\u0438\u044f\u0442\u0430: 30\u201340 s, \u0442\u043e\u0447\u043a\u0438\u0442\u0435 \u0441\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435.\n\u0421\u043b\u0435\u0434 \u0441\u0435\u0440\u0438\u044f\u0442\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0441\u043f\u0438\u0440\u0430\u0442 \u0441\u0430\u043c\u0438. \u041f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0435 \u043a\u043e\u043b\u043a\u043e\u0442\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438\u0441\u043a\u0430\u0442, \u0437\u0430 \u0434\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0442 \u0435\u043d\u0435\u0440\u0433\u0438\u044f\u0442\u0430 \u0441\u0438 (\u043f\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0438 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f\u0442\u0430), \u0438 \u043f\u0443\u043b\u0441\u044a\u0442 \u0434\u0430 \u0441\u043f\u0430\u0434\u043d\u0435. \u0422\u043e\u0433\u0430\u0432\u0430 \u25b6 \u0441\u0432\u0435\u0442\u0432\u0430.\n\u0412\u0441\u0435\u043a\u0438 \u0441\u0442\u0430\u0440\u0442 \u0431\u0440\u043e\u0438 3 s: \u0442\u0440\u0438 \u043a\u044a\u0441\u0438 \u0441\u0438\u0433\u043d\u0430\u043b\u0430 \u0438 \u0434\u044a\u043b\u044a\u0433 \u0441 \u043f\u044a\u0440\u0432\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441.\n\u0421\u0438\u0432\u043e\u0442\u043e \u0432\u0434\u044f\u0441\u043d\u043e \u0435 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e; \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 10 s \u0441\u0435 \u043e\u0446\u0432\u0435\u0442\u044f\u0432\u0430. \u23ed \u0432 \u043f\u0430\u043d\u0435\u043b\u0430 \u0432\u0434\u044f\u0441\u043d\u043e (\u043c\u0435\u0436\u0434\u0443 \u25b6 \u0438 +) \u2014 \u043f\u0440\u043e\u043f\u0443\u0441\u043a\u0430: \u0441\u0435\u0440\u0438\u044f\u0442\u0430 (\u0438\u043b\u0438 \u0438\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u0441\u0435\u0440\u0438\u044f) \u043e\u0442\u043f\u0430\u0434\u0430 \u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0441\u0442\u0430\u0432\u0430 \u0442\u043e\u043b\u043a\u043e\u0432\u0430 \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u0430; \u0441\u043b\u0435\u0434\u0432\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e \u043f\u043e \u0440\u0435\u0434.\n\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u2014 \u0441 \u0433\u043b\u0430\u0432\u043d\u0438\u0442\u0435 \u25b6 / \u275a\u275a \u0438 \u25a0: \u25a0 \u0440\u0430\u0431\u043e\u0442\u0438 \u043e\u0442 \u043f\u0430\u0443\u0437\u0430; \u043f\u044a\u0440\u0432\u0438\u044f\u0442 \u2014 \u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435, \u0432\u0442\u043e\u0440\u0438\u044f\u0442 \u2014 \u043a\u0440\u0430\u0439."

    const-string v1, "The ring is the set: 30\u201340 s, the dots are the impulses.\nAfter the set the impulses stop by themselves. The rest lasts as long as the muscles need to refill (by the load and fitness) and the HR to come down; then \u25b6 lights up.\nEvery start counts 3 s: three short beeps and a long one with the first impulse.\nThe grey one on the right is the next; it lights up in the last 10 s. \u23ed on the right panel (between \u25b6 and +) skips: the set (or the coming one) is dropped and the session is that much shorter; the next in order follows.\nControl \u2014 the main \u25b6 / \u275a\u275a and \u25a0: \u25a0 works from a pause; the first goes to the recovery, the second ends."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1484
    :pswitch_1b
    const-string v0, "\u0412\u0441\u044f\u043a\u0430 \u0437\u043e\u043d\u0430 \u0441\u0435 \u043e\u0446\u0432\u0435\u0442\u044f\u0432\u0430 \u0441 \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430, \u043a\u043e\u044f\u0442\u043e \u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u0430 \u0434\u043e\u0441\u0435\u0433\u0430, \u0441\u043f\u0440\u044f\u043c\u043e \u043d\u0430\u0439-\u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0435\u043d\u0430\u0442\u0430 \u0437\u043e\u043d\u0430 \u043d\u0430 \u0442\u0430\u0437\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430: \u0442\u044f \u0441\u0442\u0438\u0433\u0430 \u043f\u044a\u043b\u043d\u0438\u044f \u0446\u0432\u044f\u0442 (\u0436\u0435\u043d\u0430 \u2014 magenta, \u043c\u044a\u0436 \u2014 cyan) \u0432 \u043a\u0440\u0430\u044f \u043d\u0430 \u043f\u043b\u0430\u043d\u0430; \u0434\u0440\u0443\u0433\u0438\u0442\u0435 \u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u0442\u043e\u043b\u043a\u043e\u0432\u0430 \u043f\u043e-\u0431\u043b\u0435\u0434\u0438, \u043a\u043e\u043b\u043a\u043e\u0442\u043e \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430\u0442. \u041a\u0430\u043d\u0430\u043b \u043d\u0430 0 \u2014 \u0441\u0430\u043c\u043e \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430 \u043e\u0442 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e. \u041d\u0430\u0434 \u0446\u0435\u043b\u0442\u0430 \u0446\u0432\u0435\u0442\u044a\u0442 \u0441\u0442\u0430\u0432\u0430 \u043e\u0440\u0430\u043d\u0436\u0435\u0432, \u043f\u043e\u0441\u043b\u0435 \u0447\u0435\u0440\u0432\u0435\u043d. \u0417\u043e\u043d\u0430, \u043a\u043e\u044f\u0442\u043e \u0440\u0430\u0431\u043e\u0442\u0438 \u0432 \u043c\u043e\u043c\u0435\u043d\u0442\u0430, \u0441\u0432\u0435\u0442\u0432\u0430 \u043f\u043e-\u044f\u0440\u043a\u043e.\n\u0421\u043c\u0435\u0442\u043a\u0430: \u0441\u0438\u043b\u0430 \u00d7 \u0448\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u00d7 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u00d7 % \u043d\u0430 \u0437\u043e\u043d\u0430\u0442\u0430 + \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430 \u043d\u0430 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e.\n\u0427\u0435\u0440\u0432\u0435\u043d\u043e\u0442\u043e \u0441\u044a\u0440\u0446\u0435 \u0431\u0438\u0435 \u0441 \u043f\u0443\u043b\u0441\u0430; \u0447\u0438\u0441\u043b\u043e\u0442\u043e \u0435 \u0432 \u0446\u0432\u0435\u0442\u0430 \u043d\u0430 \u043f\u0443\u043b\u0441\u043e\u0432\u0430\u0442\u0430 \u0437\u043e\u043d\u0430.\n\u041d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 \u2014 \u0446\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e: \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e, \u043a\u0438\u0441\u043b\u043e\u0440\u043e\u0434\u044a\u0442 \u0438 \u043f\u0443\u043b\u0441\u044a\u0442, \u0441\u0432\u044a\u0440\u0448\u0435\u043d\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u0430; \u043f\u043e \u0434\u0430\u043d\u043d\u0438\u0442\u0435 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v1, "Each zone is coloured by the work it has had so far against the most worked zone of this session: that one reaches full colour (woman \u2014 magenta, man \u2014 cyan) at the end of the plan; the others stay as much paler as they get less. A channel at 0 \u2014 the exercise\'s work only. Past the target the colour turns orange, then red. A zone working now glows brighter.\nSum: strength \u00d7 pulse width \u00d7 frequency \u00d7 zone % + the exercise\'s work.\nThe red heart beats with the HR; the number is in the HR zone\'s colour.\nLoad \u2014 the whole body: the muscles by impulse and exercise, oxygen and HR, the work done; by the client\'s data."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1463
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
    .line 249
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
    .line 2081
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2082
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2083
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 2084
    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2085
    return-object v0
.end method

.method static levelColor(I)I
    .registers 2

    .prologue
    .line 2130
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
    .line 2126
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

    const/4 v0, 0x0

    .line 670
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->modRow()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    if-nez v1, :cond_b

    .line 671
    sput-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 683
    :goto_a
    return v0

    .line 674
    :cond_b
    sget-object v10, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    move v9, v0

    .line 675
    :goto_e
    array-length v0, v10

    if-ge v9, v0, :cond_b2

    .line 676
    aget-object v7, v10, v9

    .line 678
    iget-object v0, v7, Lcom/isaigu/gymapp/bodytech/BtAus$T;->id:Ljava/lang/String;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v0, v7, Lcom/isaigu/gymapp/bodytech/BtAus$T;->advanced:Z

    if-eqz v0, :cond_a6

    const/4 v2, 0x2

    :goto_20
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ProgramArt;->passiveKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041c\u043e\u0434\u0443\u043b\u0430\u0446\u0438\u044f \u00b7 "

    const-string v5, "Modulation \u00b7 "

    .line 679
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v7, Lcom/isaigu/gymapp/bodytech/BtAus$T;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ph:[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u0444\u0430\u0437\u0438 \u00b7 "

    const-string v8, " phases \u00b7 "

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 680
    iget-boolean v0, v7, Lcom/isaigu/gymapp/bodytech/BtAus$T;->advanced:Z

    if-eqz v0, :cond_a9

    const-string v0, "\u0441\u043b\u0435\u0434 \u0430\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f"

    const-string v8, "after adaptation"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_65
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u2248 "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v7, Lcom/isaigu/gymapp/bodytech/BtAus$T;->minutes:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " \u043c\u0438\u043d"

    const-string v8, " min"

    .line 681
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

    .line 678
    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/ai/AutoUi;->programCard(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Lcom/isaigu/gymapp/ai/AutoUi$Act;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 681
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->cardParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 678
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_e

    .line 678
    :cond_a6
    const/4 v2, 0x1

    goto/16 :goto_20

    .line 680
    :cond_a9
    const-string v0, "bodytech"

    const-string v8, "bodytech"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    .line 683
    :cond_b2
    array-length v0, v10

    goto/16 :goto_a
.end method

.method private static modRow()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 3

    .prologue
    .line 656
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

    .line 658
    :try_start_14
    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 659
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_25} :catch_2b

    move-result v2

    if-eqz v2, :cond_8

    .line 665
    :goto_28
    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28

    .line 662
    :catch_2b
    move-exception v0

    goto :goto_8
.end method

.method static nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 1387
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1389
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ui_card_background"

    const-string v3, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1390
    if-eqz v1, :cond_19

    .line 1391
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_19} :catch_23

    .line 1395
    :cond_19
    :goto_19
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 1396
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1397
    return-object v0

    .line 1393
    :catch_23
    move-exception v1

    goto :goto_19
.end method

.method private static next()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 400
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 401
    sget v1, Lcom/isaigu/gymapp/ai/AutoUi;->step:I

    packed-switch v1, :pswitch_data_6c

    .line 436
    :cond_a
    :goto_a
    return-void

    .line 403
    :pswitch_b
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v1, v2, :cond_19

    iget-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    if-eqz v1, :cond_19

    .line 404
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->setupWorkout()V

    goto :goto_a

    .line 405
    :cond_19
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 406
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->startMod()V

    goto :goto_a

    .line 407
    :cond_21
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 408
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_a

    .line 412
    :pswitch_29
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlocker()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 415
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->healthOpen:Z

    if-nez v1, :cond_35

    .line 416
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AutoUi;->healthOk:Z

    .line 418
    :cond_35
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->clientBlocker()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_68

    .line 419
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->heightTouched:Z

    if-eqz v1, :cond_46

    .line 420
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveHeight(Landroid/app/Activity;I)V

    .line 422
    :cond_46
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 425
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->beginCalibration()V

    .line 426
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 427
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    :goto_59
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    goto :goto_a

    .line 428
    :cond_5d
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_59

    .line 430
    :cond_68
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_a

    .line 401
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

    .line 209
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo:Landroid/widget/TextView;

    .line 211
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    .line 212
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    .line 213
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runFlash:Landroid/view/View;

    .line 214
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->boardSub:Landroid/widget/TextView;

    .line 215
    return-void
.end method

.method static onFinished()V
    .registers 2

    .prologue
    .line 234
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 235
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->ownsAuto()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 237
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->onAutoFinished()V

    .line 246
    :goto_c
    return-void

    .line 241
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->finishAssisted()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_14

    .line 245
    :goto_10
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    goto :goto_c

    .line 242
    :catch_14
    move-exception v0

    .line 243
    const-string v1, "AutoUi.onFinished"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
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

    .line 161
    :cond_a
    :goto_a
    return-void

    .line 133
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->ownsAuto()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 134
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bringBack(Landroid/app/Activity;)V

    goto :goto_a

    .line 137
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 138
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v3, :cond_52

    .line 139
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->conflict()Ljava/lang/String;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_27

    .line 141
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    .line 144
    :cond_27
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->beginSetup(Landroid/content/Context;)V

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v3

    .line 147
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-lez v0, :cond_4e

    move v0, v1

    :goto_36
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->heightTouched:Z

    .line 148
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_50

    move v0, v1

    :goto_3d
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->profileOpen:Z

    .line 149
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->healthOk:Z

    .line 150
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->healthOpen:Z

    .line 151
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 152
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    .line 153
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->show(Landroid/app/Activity;I)V

    goto :goto_a

    :cond_4e
    move v0, v2

    .line 147
    goto :goto_36

    :cond_50
    move v0, v2

    .line 148
    goto :goto_3d

    .line 156
    :cond_52
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_5a

    .line 157
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->onFinished()V

    goto :goto_a

    .line 160
    :cond_5a
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_62

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_63

    :cond_62
    const/4 v2, 0x3

    :cond_63
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->show(Landroid/app/Activity;I)V

    goto :goto_a
.end method

.method private static planBlock(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 12

    .prologue
    .line 931
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v6

    .line 932
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v7

    .line 933
    if-nez v6, :cond_b

    .line 1022
    :cond_a
    :goto_a
    return-void

    .line 936
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 938
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v0, v2, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v8

    .line 939
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

    .line 940
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

    .line 941
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

    .line 942
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

    .line 943
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v2

    .line 944
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v0, v3, :cond_e5

    if-eqz v2, :cond_e5

    .line 945
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

    .line 947
    :cond_e5
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 950
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    if-eqz v0, :cond_12e

    .line 951
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    .line 952
    const/4 v0, 0x0

    :goto_ff
    array-length v4, v3

    if-ge v0, v4, :cond_117

    .line 953
    iget-object v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsEn:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 952
    add-int/lit8 v0, v0, 0x1

    goto :goto_ff

    .line 955
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

    .line 957
    :cond_12e
    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_159

    .line 958
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v3, "Double impulse"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u043b\u0435\u043a \u0438\u043c\u043f\u0443\u043b\u0441 \u0438 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430"

    const-string v4, "a light pulse in the pause too"

    .line 959
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    new-instance v5, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v7, 0x13

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 958
    invoke-static {p0, v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v3, 0x8

    .line 960
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 958
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    :cond_159
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_168

    .line 963
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    :cond_168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v0, v1, :cond_18c

    if-nez v2, :cond_18c

    .line 969
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

    .line 971
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

    .line 972
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v1, :cond_194

    .line 973
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

    .line 974
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_194

    .line 973
    :cond_1d6
    const-string v1, "?"

    goto :goto_1b4

    .line 977
    :cond_1d9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1f6

    .line 978
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

    .line 981
    :cond_1f6
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    if-eqz v0, :cond_304

    const-string v0, "\u25b4  \u0421\u043a\u0440\u0438\u0439 \u0444\u0430\u0437\u0438\u0442\u0435"

    const-string v1, "\u25b4  Hide the phases"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 982
    :goto_202
    const/4 v1, 0x3

    .line 981
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 983
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 984
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 985
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->details:Z

    if-eqz v0, :cond_a

    .line 986
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 987
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

    .line 988
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 989
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 990
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

    .line 991
    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-eqz v2, :cond_30e

    .line 992
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

    .line 999
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

    .line 1000
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    sub-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v2, v8

    if-lez v1, :cond_2b8

    .line 1001
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

    .line 1003
    :cond_2b8
    const-string v1, " %"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1005
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

    .line 1006
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v8, -0x2

    invoke-direct {v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1005
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1007
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

    .line 1009
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_228

    .line 982
    :cond_304
    const-string v0, "\u25be  \u0424\u0430\u0437\u0438 \u0438 \u0437\u043e\u043d\u0438"

    const-string v1, "\u25be  Phases and zones"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_202

    .line 994
    :cond_30e
    const/4 v1, 0x0

    move v2, v1

    :goto_310
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_276

    .line 995
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 996
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

    .line 994
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_310

    .line 996
    :cond_34f
    const-string v3, ""

    goto :goto_324

    .line 1011
    :cond_352
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneBars(Landroid/content/Context;Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1013
    const-string v0, "x"

    const-string v2, "y"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_396

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->notesBg:Ljava/util/List;

    .line 1014
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

    .line 1015
    const-string v3, "\u2022 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37a

    .line 1013
    :cond_396
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->notesEn:Ljava/util/List;

    goto :goto_376

    .line 1017
    :cond_399
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3b4

    .line 1018
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

    .line 1020
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
    .line 1026
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 1027
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v1, :cond_11

    .line 1028
    const-string v0, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0440\u044a\u0441\u0442\u0430 \u2014 \u043e\u0442 \u043d\u0435\u0433\u043e \u0441\u0435 \u0441\u043c\u044f\u0442\u0430 \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v1, "Enter the height \u2014 the plan depends on it."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    :goto_10
    return-object v0

    .line 1030
    :cond_11
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_20

    .line 1031
    const-string v0, "\u041f\u043e\u0434 18 \u0433. \u2014 \u043d\u0435."

    const-string v1, "Under 18 \u2014 no."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 1033
    :cond_20
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    .line 1034
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
    .line 714
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
    .line 745
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AutoUi;->levelColor(I)I

    move-result v2

    .line 746
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 747
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 748
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v5, v1, v1, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 749
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    if-eqz p1, :cond_18c

    const v1, 0x3e851eb8    # 0.26f

    :goto_1e
    invoke-static {v3, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v4

    const/high16 v1, 0x41900000    # 18.0f

    .line 750
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

    .line 749
    invoke-static {v4, v6, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 751
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 752
    const/16 v3, 0xd2

    const/16 v4, 0x96

    invoke-static {p0, p3, v3, v4}, Lcom/isaigu/gymapp/ai/ProgramArt;->tileKey(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 754
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AutoUi;->levelName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 755
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const v8, 0x800033

    invoke-direct {v4, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 757
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 758
    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    if-eqz p1, :cond_c2

    .line 760
    const-string v3, "\u2713"

    const/high16 v4, 0x41800000    # 16.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v7, 0x1

    invoke-static {p0, v3, v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 761
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 762
    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 763
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v6, 0x41e00000    # 28.0f

    .line 764
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const v8, 0x800035

    invoke-direct {v4, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 765
    const/4 v6, 0x0

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 766
    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    :cond_c2
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 769
    const/high16 v1, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {p0, p4, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 770
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 771
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    if-eqz p5, :cond_f0

    .line 773
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

    .line 775
    :cond_f0
    if-eqz p7, :cond_106

    .line 776
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

    .line 778
    :cond_106
    if-eqz p6, :cond_1b1

    .line 779
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 780
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

    .line 781
    const/4 v1, 0x0

    move v4, v1

    :goto_132
    const/4 v1, 0x3

    if-ge v4, v1, :cond_1a9

    .line 782
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 783
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

    .line 784
    if-eqz p1, :cond_1a6

    move v1, v2

    :goto_166
    const/4 v10, 0x1

    .line 783
    invoke-static {p0, v3, v9, v1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 785
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 786
    aget-object v1, v7, v4

    const/high16 v3, 0x41300000    # 11.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v10, 0x0

    invoke-static {p0, v1, v3, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 787
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_132

    .line 749
    :cond_18c
    const v1, 0x3df5c28f    # 0.12f

    goto/16 :goto_1e

    .line 750
    :cond_191
    const/16 v1, 0x99

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    move v3, v1

    goto/16 :goto_2c

    :cond_19a
    const/high16 v1, 0x3fc00000    # 1.5f

    goto/16 :goto_30

    .line 776
    :cond_19e
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_f7

    .line 783
    :cond_1a2
    const-string v1, "\u2014"

    move-object v3, v1

    goto :goto_161

    .line 784
    :cond_1a6
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_166

    .line 789
    :cond_1a9
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    :cond_1b1
    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 793
    return-object v5
.end method

.method static refresh()V
    .registers 2

    .prologue
    .line 254
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 255
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_12

    .line 256
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshSetup()V

    .line 264
    :cond_11
    :goto_11
    return-void

    .line 258
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refreshRun()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_11

    .line 261
    :catch_16
    move-exception v0

    .line 262
    const-string v1, "AutoUi.refreshRun"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method private static refreshRun()V
    .registers 28

    .prologue
    .line 1653
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v14

    .line 1654
    if-eqz v14, :cond_a

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    if-nez v2, :cond_b

    .line 1833
    :cond_a
    :goto_a
    return-void

    .line 1657
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1658
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v15

    .line 1659
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v12

    .line 1660
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v18

    .line 1661
    if-eqz v12, :cond_25d

    invoke-virtual {v12}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_25d

    const/4 v2, 0x1

    move v11, v2

    .line 1662
    :goto_25
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v19

    .line 1663
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v20

    .line 1664
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_261

    const/4 v2, 0x1

    move v3, v2

    .line 1665
    :goto_35
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_265

    const/4 v2, 0x1

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCountdownLeftS(J)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v2

    .line 1668
    :goto_47
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v7

    .line 1669
    if-eqz v7, :cond_269

    if-nez v19, :cond_269

    const/4 v2, 0x1

    move v13, v2

    .line 1670
    :goto_51
    if-eqz v20, :cond_26d

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_57
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v6

    .line 1671
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v13, :cond_270

    const/4 v2, 0x0

    :goto_60
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setVisibility(I)V

    .line 1672
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    if-eqz v13, :cond_273

    const/16 v2, 0x8

    :goto_69
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1673
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_276

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_76
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1674
    if-nez v13, :cond_92

    .line 1676
    if-nez v11, :cond_7f

    if-eqz v19, :cond_27b

    :cond_7f
    const/4 v2, 0x1

    move v5, v2

    .line 1677
    :goto_81
    if-eqz v20, :cond_27f

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 1678
    :goto_87
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runArt:Landroid/view/View;

    iget-object v9, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v9, v5, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->ringKey(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/ai/ProgramArt;->showRing(Landroid/view/View;Ljava/lang/String;)V

    .line 1680
    :cond_92
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getNextExercise()Ljava/lang/String;

    move-result-object v8

    .line 1681
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_282

    if-eqz v8, :cond_282

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetLeftS()D

    move-result-wide v22

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    cmpg-double v2, v22, v24

    if-gtz v2, :cond_282

    const/4 v2, 0x1

    move v9, v2

    .line 1683
    :goto_aa
    if-eqz v13, :cond_286

    if-eqz v8, :cond_286

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_286

    const/4 v2, 0x1

    .line 1684
    :goto_b5
    sget-object v10, Lcom/isaigu/gymapp/ai/AutoUi;->runNextStage:Lcom/isaigu/gymapp/ai/AutoViews$RingStage;

    if-eqz v2, :cond_289

    const/4 v5, 0x0

    :goto_ba
    invoke-virtual {v10, v5}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->setVisibility(I)V

    .line 1685
    sget-object v10, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    if-eqz v2, :cond_28d

    const/4 v5, 0x0

    :goto_c2
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1686
    if-eqz v2, :cond_f1

    .line 1687
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2, v8}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1688
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v9, :cond_291

    move v2, v6

    :goto_d1
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 1689
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runNextFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v9, :cond_29b

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_da
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setAlpha(F)V

    .line 1690
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runNextRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v5, v10, v0}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->set(FII)V

    .line 1691
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runArrow:Landroid/widget/TextView;

    if-eqz v9, :cond_29f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_ee
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1693
    :cond_f1
    if-eqz v13, :cond_2dd

    .line 1694
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 1695
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2, v7}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1697
    if-nez v3, :cond_101

    if-lez v4, :cond_2a9

    :cond_101
    const/4 v2, 0x1

    .line 1698
    :goto_102
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runFigure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-eq v0, v5, :cond_10c

    if-eqz v2, :cond_2ac

    :cond_10c
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_10e
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setAlpha(F)V

    .line 1701
    if-eqz v9, :cond_2b0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2b0

    .line 1702
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

    .line 1706
    :goto_141
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    if-eqz v2, :cond_2d9

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_147
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1707
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->howSteps(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->showHow(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1727
    :goto_157
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_433

    const/4 v2, 0x1

    .line 1729
    :goto_15e
    const/4 v5, 0x2

    new-array v7, v5, [I

    fill-array-data v7, :array_6ac

    .line 1731
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1732
    if-eqz v3, :cond_477

    .line 1733
    const/4 v2, 0x1

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1734
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v5

    .line 1735
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startReady()Z

    move-result v6

    .line 1736
    if-eqz v19, :cond_436

    if-nez v5, :cond_436

    const/4 v2, 0x1

    .line 1737
    :goto_180
    if-eqz v2, :cond_439

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1738
    :goto_184
    if-nez v2, :cond_18c

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v10, v2

    if-ltz v2, :cond_44f

    :cond_18c
    const/4 v9, 0x0

    .line 1739
    :goto_18d
    if-eqz v6, :cond_456

    const/4 v8, 0x2

    .line 1740
    :goto_190
    if-lez v5, :cond_459

    .line 1741
    int-to-double v2, v5

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    .line 1742
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_199
    move v5, v2

    move-object v6, v3

    .line 1770
    :goto_19b
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_1a7

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_1b8

    .line 1771
    :cond_1a7
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1772
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_541

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v2

    if-nez v2, :cond_541

    const-string v2, "\u2665"

    :goto_1b7
    move-object v6, v2

    .line 1774
    :cond_1b8
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runRing:Lcom/isaigu/gymapp/ai/AutoViews$SetRing;

    if-lez v4, :cond_1bd

    const/4 v9, 0x0

    :cond_1bd
    invoke-virtual {v2, v10, v8, v4, v9}, Lcom/isaigu/gymapp/ai/AutoViews$SetRing;->set(FIIF)V

    .line 1775
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    invoke-virtual {v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->set(II)V

    .line 1776
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runDots:Lcom/isaigu/gymapp/ai/AutoViews$Dots;

    const/4 v2, 0x1

    aget v2, v7, v2

    if-lez v2, :cond_545

    const/4 v2, 0x0

    :goto_1d3
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/ai/AutoViews$Dots;->setVisibility(I)V

    .line 1777
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1783
    const/16 v2, 0xa

    new-array v6, v2, [Z

    .line 1786
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runBody:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    if-eqz v20, :cond_548

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_1ec
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneProgress(J)[D

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneLive(J)[D

    move-result-object v5

    .line 1787
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneActive(J)[Z

    move-result-object v7

    .line 1786
    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z[Z)V

    .line 1788
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->runPeak:Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;->set(D)V

    .line 1789
    iget-object v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v2, v3, :cond_54c

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_54c

    const/4 v2, 0x1

    move v3, v2

    .line 1790
    :goto_21c
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    if-eqz v3, :cond_550

    const/4 v2, 0x0

    :goto_221
    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->setVisibility(I)V

    .line 1791
    if-eqz v3, :cond_237

    .line 1792
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v2

    .line 1793
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runVital:Lcom/isaigu/gymapp/ai/AutoViews$Vital;

    iget v5, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/HrGuard;->zoneColor(II)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->set(II)V

    .line 1795
    :cond_237
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v2

    .line 1796
    const-string v5, ""

    .line 1797
    const/4 v4, 0x0

    .line 1798
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_242
    :goto_242
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_558

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1799
    iget-object v7, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v7, :cond_242

    .line 1802
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_554

    .line 1803
    iget-object v5, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    move v2, v4

    :goto_25b
    move v4, v2

    .line 1807
    goto :goto_242

    .line 1661
    :cond_25d
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_25

    .line 1664
    :cond_261
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_35

    .line 1665
    :cond_265
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_47

    .line 1669
    :cond_269
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_51

    .line 1670
    :cond_26d
    const/4 v2, 0x0

    goto/16 :goto_57

    .line 1671
    :cond_270
    const/4 v2, 0x4

    goto/16 :goto_60

    .line 1672
    :cond_273
    const/4 v2, 0x0

    goto/16 :goto_69

    .line 1673
    :cond_276
    const v2, 0x3f19999a    # 0.6f

    goto/16 :goto_76

    .line 1676
    :cond_27b
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_81

    .line 1677
    :cond_27f
    const/4 v2, 0x0

    goto/16 :goto_87

    .line 1681
    :cond_282
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_aa

    .line 1683
    :cond_286
    const/4 v2, 0x0

    goto/16 :goto_b5

    .line 1684
    :cond_289
    const/16 v5, 0x8

    goto/16 :goto_ba

    .line 1685
    :cond_28d
    const/16 v5, 0x8

    goto/16 :goto_c2

    .line 1688
    :cond_291
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v10, 0x99

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto/16 :goto_d1

    .line 1689
    :cond_29b
    const/high16 v2, 0x3f400000    # 0.75f

    goto/16 :goto_da

    .line 1691
    :cond_29f
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v10, 0x99

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto/16 :goto_ee

    .line 1697
    :cond_2a9
    const/4 v2, 0x0

    goto/16 :goto_102

    .line 1698
    :cond_2ac
    const/high16 v5, 0x3f000000    # 0.5f

    goto/16 :goto_10e

    .line 1704
    :cond_2b0
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_2d6

    const-string v5, "\u0421\u043b\u0435\u0434\u0432\u0430:  "

    const-string v10, "Next:  "

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2c1
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

    :cond_2d6
    const-string v5, ""

    goto :goto_2c1

    .line 1706
    :cond_2d9
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_147

    .line 1709
    :cond_2dd
    if-eqz v19, :cond_3c5

    iget-object v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    iget-object v5, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1710
    :goto_2ef
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    if-eqz v19, :cond_3c8

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

    :goto_30e
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1713
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runPhase:Landroid/widget/TextView;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1715
    if-eqz v19, :cond_419

    const/4 v5, 0x0

    .line 1716
    :goto_31b
    invoke-static {v15, v2}, Lcom/isaigu/gymapp/ai/AutoCues;->phaseGoal(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;

    move-result-object v8

    .line 1717
    if-eqz v5, :cond_41f

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseOn()Z

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCues;->effect(Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 1718
    :goto_32a
    if-eqz v2, :cond_424

    invoke-static {v15, v2}, Lcom/isaigu/gymapp/ai/AutoCues;->phaseHint(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;

    move-result-object v6

    .line 1719
    :goto_330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "phase:"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v2, :cond_428

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    :goto_341
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v5, :cond_42f

    .line 1720
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

    if-lez v2, :cond_42c

    const/4 v2, 0x1

    :goto_36f
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

    :goto_387
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

    .line 1721
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

    .line 1719
    invoke-static {v2, v5, v10}, Lcom/isaigu/gymapp/ai/AutoUi;->showLabelled(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_157

    :cond_3c5
    move-object v2, v12

    .line 1709
    goto/16 :goto_2ef

    .line 1711
    :cond_3c8
    if-eqz v11, :cond_409

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

    if-lez v5, :cond_406

    .line 1712
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

    :goto_3fc
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_30e

    :cond_406
    const-string v5, ""

    goto :goto_3fc

    :cond_409
    if-eqz v12, :cond_415

    iget-object v5, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v7, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_30e

    :cond_415
    const-string v5, ""

    goto/16 :goto_30e

    .line 1715
    :cond_419
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getWritten()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v5

    goto/16 :goto_31b

    .line 1717
    :cond_41f
    const-string v6, ""

    move-object v7, v6

    goto/16 :goto_32a

    .line 1718
    :cond_424
    const-string v6, ""

    goto/16 :goto_330

    .line 1719
    :cond_428
    const-string v2, ""

    goto/16 :goto_341

    .line 1720
    :cond_42c
    const/4 v2, 0x0

    goto/16 :goto_36f

    :cond_42f
    const-string v2, "-"

    goto/16 :goto_387

    .line 1727
    :cond_433
    const/4 v2, 0x0

    goto/16 :goto_15e

    .line 1736
    :cond_436
    const/4 v2, 0x0

    goto/16 :goto_180

    .line 1737
    :cond_439
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestS(J)D

    move-result-wide v22

    int-to-double v0, v3

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-float v10, v8

    goto/16 :goto_184

    .line 1738
    :cond_44f
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v3

    div-float v9, v2, v3

    goto/16 :goto_18d

    .line 1739
    :cond_456
    const/4 v8, 0x1

    goto/16 :goto_190

    .line 1743
    :cond_459
    if-eqz v19, :cond_466

    .line 1744
    iget v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    .line 1745
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_199

    .line 1747
    :cond_466
    if-eqz v6, :cond_470

    const-string v3, "\u25b6"

    .line 1748
    :goto_46a
    if-eqz v6, :cond_473

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_199

    .line 1747
    :cond_470
    const-string v3, "\u2665"

    goto :goto_46a

    .line 1748
    :cond_473
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_199

    .line 1750
    :cond_477
    if-eqz v11, :cond_4aa

    .line 1751
    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v3, :cond_4a6

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v8

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v0, v3

    move-wide/from16 v22, v0

    div-double v8, v8, v22

    double-to-float v10, v8

    .line 1752
    :goto_489
    const/4 v8, 0x3

    .line 1753
    if-eqz v2, :cond_4a8

    iget v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v2, :cond_4a8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v0, v6

    move-wide/from16 v22, v0

    div-double v2, v2, v22

    double-to-float v2, v2

    .line 1754
    :goto_49a
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move v9, v2

    goto/16 :goto_19b

    .line 1751
    :cond_4a6
    const/4 v10, 0x0

    goto :goto_489

    .line 1753
    :cond_4a8
    const/4 v2, 0x0

    goto :goto_49a

    .line 1755
    :cond_4aa
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v3

    if-eqz v3, :cond_502

    .line 1756
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getStationS()D

    move-result-wide v6

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    div-double v6, v6, v22

    double-to-float v10, v6

    .line 1757
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_4fe

    const/4 v8, 0x0

    .line 1758
    :goto_4cc
    if-eqz v2, :cond_500

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-float v2, v2

    .line 1759
    :goto_4de
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetImpulses()[I

    move-result-object v7

    .line 1760
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

    .line 1761
    if-eqz v9, :cond_6a8

    .line 1762
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move v5, v3

    move v9, v2

    goto/16 :goto_19b

    .line 1757
    :cond_4fe
    const/4 v8, 0x4

    goto :goto_4cc

    .line 1758
    :cond_500
    const/4 v2, 0x0

    goto :goto_4de

    .line 1765
    :cond_502
    if-eqz v12, :cond_53b

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v3, :cond_53b

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v8

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v0, v3

    move-wide/from16 v22, v0

    div-double v8, v8, v22

    double-to-float v3, v8

    .line 1766
    :goto_514
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object/from16 v0, v18

    if-ne v0, v6, :cond_53d

    const/4 v8, 0x0

    .line 1767
    :goto_51b
    if-eqz v2, :cond_53f

    if-eqz v12, :cond_53f

    iget v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v2, :cond_53f

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    iget v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v0, v2

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v2, v0

    .line 1768
    :goto_52f
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v6

    move v9, v2

    move v10, v3

    goto/16 :goto_19b

    .line 1765
    :cond_53b
    const/4 v3, 0x0

    goto :goto_514

    .line 1766
    :cond_53d
    const/4 v8, 0x4

    goto :goto_51b

    .line 1767
    :cond_53f
    const/4 v2, 0x0

    goto :goto_52f

    .line 1772
    :cond_541
    const-string v2, "\u275a\u275a"

    goto/16 :goto_1b7

    .line 1776
    :cond_545
    const/4 v2, 0x4

    goto/16 :goto_1d3

    .line 1786
    :cond_548
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_1ec

    .line 1789
    :cond_54c
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_21c

    .line 1790
    :cond_550
    const/16 v2, 0x8

    goto/16 :goto_221

    .line 1805
    :cond_554
    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_25b

    .line 1808
    :cond_558
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoUi;->runClient:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-lez v4, :cond_5ac

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  +"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_578
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1811
    iget-object v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v10, v2, [Ljava/lang/String;

    .line 1812
    const/4 v2, 0x0

    move v4, v2

    :goto_58d
    array-length v2, v10

    if-ge v4, v2, :cond_5b8

    .line 1813
    iget-object v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1814
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-eqz v5, :cond_5af

    const-string v2, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v5, "Recovery"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5a6
    aput-object v2, v10, v4

    .line 1812
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_58d

    .line 1808
    :cond_5ac
    const-string v2, ""

    goto :goto_578

    .line 1814
    :cond_5af
    iget-object v5, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5a6

    .line 1816
    :cond_5b8
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v8

    .line 1817
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getForecast()Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v5

    .line 1818
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    iget v6, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    if-eqz v3, :cond_686

    iget v2, v15, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    :goto_5ca
    invoke-virtual {v4, v6, v2}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->setHrScale(II)V

    .line 1819
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runTimeline:Lcom/isaigu/gymapp/ai/AutoViews$Timeline;

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTrace()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v6

    invoke-virtual/range {v3 .. v10}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->set(Ljava/util/List;Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;DD[Ljava/lang/String;)V

    .line 1820
    if-eqz v5, :cond_689

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v2

    invoke-virtual {v5, v8, v9, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->leftS(DD)D

    move-result-wide v2

    .line 1821
    :goto_5e4
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

    .line 1822
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->boardSub:Landroid/widget/TextView;

    if-eqz v2, :cond_64c

    .line 1823
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getImpulseName()Ljava/lang/String;

    move-result-object v3

    .line 1824
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->boardSub:Landroid/widget/TextView;

    if-eqz v12, :cond_69b

    .line 1825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1824
    if-eqz v11, :cond_68f

    const-string v2, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Recovery"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_624
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1825
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_698

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  \u00b7  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_641
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1824
    :goto_649
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1827
    :cond_64c
    if-nez v13, :cond_69e

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v2

    if-nez v2, :cond_69e

    const/4 v2, 0x1

    :goto_659
    invoke-static {v14, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->showPhases(Lcom/isaigu/gymapp/ai/AutoEngine;Z)V

    .line 1829
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v3

    .line 1830
    if-eqz v3, :cond_6a0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6a0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNoticeMs()J

    move-result-wide v4

    sub-long v4, v16, v4

    const-wide/16 v6, 0x2ee0

    cmp-long v2, v4, v6

    if-gez v2, :cond_6a0

    const/4 v2, 0x1

    .line 1831
    :goto_675
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    if-eqz v2, :cond_6a2

    :goto_679
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1832
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->runNotice:Landroid/widget/TextView;

    if-eqz v2, :cond_6a5

    const/4 v2, 0x0

    :goto_681
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 1818
    :cond_686
    const/4 v2, 0x0

    goto/16 :goto_5ca

    .line 1820
    :cond_689
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRemainingS()D

    move-result-wide v2

    goto/16 :goto_5e4

    .line 1824
    :cond_68f
    iget-object v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_624

    .line 1825
    :cond_698
    const-string v2, ""

    goto :goto_641

    :cond_69b
    const-string v2, ""

    goto :goto_649

    .line 1827
    :cond_69e
    const/4 v2, 0x0

    goto :goto_659

    .line 1830
    :cond_6a0
    const/4 v2, 0x0

    goto :goto_675

    .line 1831
    :cond_6a2
    const-string v3, ""

    goto :goto_679

    .line 1832
    :cond_6a5
    const/16 v2, 0x8

    goto :goto_681

    :cond_6a8
    move v9, v2

    goto/16 :goto_19b

    .line 1729
    nop

    :array_6ac
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static refreshSetup()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1368
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v4

    move v2, v3

    .line 1369
    :goto_6
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3a

    .line 1370
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1371
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->setupLabels:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v5, :cond_2f

    const-string v0, "\u2014"

    :goto_28
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1369
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 1371
    :cond_2f
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 1373
    :cond_3a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canStart()Z

    move-result v1

    .line 1374
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo:Landroid/widget/TextView;

    if-eqz v0, :cond_4b

    .line 1375
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->setupGo:Landroid/widget/TextView;

    if-eqz v1, :cond_61

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_48
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1377
    :cond_4b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    if-eqz v0, :cond_60

    .line 1378
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getLastNotice()Ljava/lang/String;

    move-result-object v0

    .line 1379
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->setupNote:Landroid/widget/TextView;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_65

    :goto_5d
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    :cond_60
    return-void

    .line 1375
    :cond_61
    const v0, 0x3ee66666    # 0.45f

    goto :goto_48

    .line 1380
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
    .line 1649
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
    .line 808
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v4

    .line 809
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v2

    .line 810
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

    .line 811
    :cond_2b
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v3, "Client"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    :goto_33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    if-eqz v2, :cond_363

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->subtitle(Ljava/lang/String;)V

    .line 814
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 815
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 816
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 817
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const v8, 0x3f933333    # 1.15f

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 819
    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 820
    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 821
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlocker()Ljava/lang/String;

    move-result-object v6

    .line 823
    if-nez v6, :cond_81

    .line 824
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 828
    :cond_81
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoUi;->profileOpen:Z

    if-eqz v0, :cond_36d

    .line 829
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 830
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

    .line 831
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v8, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v8, :cond_366

    const/4 v0, 0x0

    :goto_a9
    new-instance v8, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v9, 0x1c

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 830
    invoke-static {p0, v7, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 832
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 833
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

    .line 834
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

    .line 833
    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 834
    invoke-static {v8, v9, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 833
    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
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

    .line 836
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

    .line 835
    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0xa

    .line 836
    invoke-static {v8, v9, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 835
    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    const-string v0, "\u0420\u044a\u0441\u0442"

    const-string v8, "Height"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 838
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

    .line 837
    invoke-static {p0, v8, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0xa

    .line 839
    invoke-static {v8, v9, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 837
    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
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

    .line 842
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

    .line 841
    invoke-static {p0, v0, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v7, 0xa

    .line 843
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 841
    invoke-virtual {v1, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    :goto_1d3
    if-eqz v2, :cond_263

    iget-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksPostpartum:Z

    if-eqz v0, :cond_263

    .line 863
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 864
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

    .line 865
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

    .line 864
    invoke-static {p0, v1, v7}, Lcom/isaigu/gymapp/ai/AutoUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 866
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

    .line 867
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

    .line 868
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

    .line 869
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    :cond_263
    if-eqz v2, :cond_309

    iget-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    if-eqz v0, :cond_309

    .line 872
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 873
    const-string v1, "\u0413\u0440\u044a\u0431: \u0438\u043c\u0430 \u043b\u0438 \u043d\u044f\u043a\u043e\u0435 \u043e\u0442 \u0442\u0435\u0437\u0438?"

    const-string v2, "Back: any of these?"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 874
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

    .line 875
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

    .line 876
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

    .line 877
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

    .line 878
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

    .line 879
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

    .line 880
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    :cond_309
    if-nez v6, :cond_44e

    .line 885
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoUi;->planBlock(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 891
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

    .line 892
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 894
    const/4 v1, 0x0

    .line 895
    const/4 v0, 0x0

    .line 896
    const/4 v2, 0x0

    :goto_32f
    sget-object v3, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_4cf

    .line 897
    sget-object v3, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    aget-object v8, v3, v2

    .line 898
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

    .line 899
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 896
    :goto_351
    add-int/lit8 v2, v2, 0x1

    goto :goto_32f

    .line 811
    :cond_354
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getRows()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    goto/16 :goto_33

    .line 812
    :cond_363
    const/4 v0, 0x0

    goto/16 :goto_3c

    .line 831
    :cond_366
    const/4 v0, 0x1

    goto/16 :goto_a9

    .line 838
    :cond_369
    const-string v0, "\u2014"

    goto/16 :goto_162

    .line 846
    :cond_36d
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 847
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 848
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_42a

    const-string v0, "\u043d\u0438\u0441\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "low fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
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

    .line 852
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

    .line 851
    invoke-static {p0, v0, v1, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
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

    .line 856
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v8, 0x1d

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 858
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1d3

    .line 849
    :cond_42a
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_43a

    const-string v0, "\u0432\u0438\u0441\u043e\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "high fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_384

    .line 850
    :cond_43a
    const-string v0, "\u0441\u0440\u0435\u0434\u043d\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "medium fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_384

    .line 851
    :cond_444
    const-string v1, "\u041c\u044a\u0436"

    const-string v9, "Male"

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_397

    .line 887
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

    .line 902
    :cond_465
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 903
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

    .line 904
    new-instance v8, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v9, 0x26

    invoke-direct {v8, v9, v2}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 906
    if-eqz v1, :cond_49e

    const/4 v8, 0x3

    if-ne v0, v8, :cond_4b1

    .line 907
    :cond_49e
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 908
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_4cc

    const/4 v0, 0x0

    :goto_4a9
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    const/4 v0, 0x0

    .line 911
    :cond_4b1
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 912
    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 913
    invoke-virtual {v1, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_351

    .line 903
    :cond_4c9
    const-string v3, ""

    goto :goto_474

    .line 908
    :cond_4cc
    const/16 v0, 0x8

    goto :goto_4a9

    .line 916
    :cond_4cf
    if-eqz v1, :cond_4e9

    .line 917
    :goto_4d1
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_4e9

    .line 918
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

    .line 921
    :cond_4e9
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    if-nez v6, :cond_504

    const/4 v0, 0x1

    .line 924
    :goto_4f4
    const-string v1, "\u041a\u044a\u043c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u0432\u0430\u043d\u0435  \u203a"

    const-string v2, "To setup  \u203a"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->footer(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 925
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->enable(Z)V

    .line 926
    return-void

    .line 923
    :cond_504
    const/4 v0, 0x0

    goto :goto_4f4
.end method

.method private static screenProgram(Landroid/content/Context;)V
    .registers 24

    .prologue
    .line 496
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v18

    .line 497
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    const-string v4, "\u041a\u0430\u043a\u0432\u043e \u043f\u0440\u0430\u0432\u0438\u043c \u0434\u043d\u0435\u0441?"

    const-string v5, "What are we doing today?"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->subtitle(Ljava/lang/String;)V

    .line 499
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    .line 500
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v5

    .line 501
    array-length v3, v5

    new-array v6, v3, [Ljava/lang/String;

    .line 502
    const/4 v4, 0x0

    .line 503
    const/4 v3, 0x0

    :goto_26
    array-length v7, v5

    if-ge v3, v7, :cond_3d

    .line 504
    aget-object v7, v5, v3

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 505
    aget-object v7, v5, v3

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne v7, v8, :cond_3a

    move v4, v3

    .line 503
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 510
    :cond_3d
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 511
    const/16 v3, 0x10

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 512
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

    .line 515
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

    .line 516
    :goto_81
    if-eqz v3, :cond_bf

    .line 517
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v7, "Active"

    .line 518
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v7, "Passive"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 519
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

    .line 517
    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v6, 0xe

    .line 519
    move-object/from16 v0, p0

    invoke-static {v4, v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 517
    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    :cond_bf
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v3, v4, :cond_16d

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    if-eqz v3, :cond_16d

    const/4 v3, 0x1

    move v13, v3

    .line 525
    :goto_db
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v3, v4, :cond_11e

    .line 526
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

    .line 527
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

    .line 526
    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0xc

    .line 528
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 526
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    :cond_11e
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v20

    .line 532
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

    .line 533
    const/16 v16, 0x0

    .line 534
    const/4 v5, 0x0

    .line 535
    const/4 v14, 0x0

    .line 536
    if-eqz v13, :cond_3d7

    .line 538
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    .line 539
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

    .line 540
    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->addPick(Lcom/isaigu/gymapp/ai/Workout;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    goto :goto_155

    .line 515
    :cond_167
    const/4 v3, 0x0

    goto/16 :goto_81

    .line 519
    :cond_16a
    const/4 v3, 0x1

    goto/16 :goto_a5

    .line 524
    :cond_16d
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_db

    .line 527
    :cond_171
    const/4 v3, 0x0

    goto :goto_103

    .line 542
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

    .line 543
    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->addPick(Lcom/isaigu/gymapp/ai/Workout;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    goto :goto_17b

    .line 545
    :cond_18d
    const/4 v3, 0x0

    .line 546
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

    .line 547
    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v4

    move v4, v3

    .line 548
    goto :goto_195

    .line 549
    :cond_1ac
    if-nez v4, :cond_1b9

    .line 550
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_276

    const/4 v3, 0x0

    :goto_1b7
    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    .line 552
    :cond_1b9
    const/4 v3, 0x0

    move v15, v3

    move/from16 v16, v5

    :goto_1bd
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_2a8

    .line 553
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/isaigu/gymapp/ai/Workout;

    .line 554
    iget-object v3, v12, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 555
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

    .line 556
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

    .line 557
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 558
    invoke-static {v12}, Lcom/isaigu/gymapp/ai/AutoUi;->presetProgram(Lcom/isaigu/gymapp/ai/Workout;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v11

    .line 560
    invoke-virtual {v12}, Lcom/isaigu/gymapp/ai/Workout;->effectiveLevel()I

    move-result v5

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/ProgramArt;->templateKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
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

    .line 562
    :goto_24d
    if-eqz v11, :cond_288

    const/4 v10, 0x0

    :goto_250
    new-instance v11, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v3, 0x2a

    invoke-direct {v11, v3, v15}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    move-object/from16 v3, p0

    .line 560
    invoke-static/range {v3 .. v11}, Lcom/isaigu/gymapp/ai/AutoUi;->programCard(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Lcom/isaigu/gymapp/ai/AutoUi$Act;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 563
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoUi;->cardParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 560
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    if-eqz v4, :cond_59b

    .line 565
    invoke-static {v12}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->focusLine(Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v3

    .line 567
    :goto_26c
    add-int/lit8 v5, v16, 0x1

    .line 552
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    move-object v14, v3

    move/from16 v16, v5

    goto/16 :goto_1bd

    .line 550
    :cond_276
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->pickList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    goto/16 :goto_1b7

    .line 561
    :cond_283
    const-string v3, "\u2605 "

    goto :goto_235

    :cond_286
    const/4 v9, 0x0

    goto :goto_24d

    .line 562
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

    .line 569
    :cond_2a8
    if-nez v16, :cond_2ec

    .line 570
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

    .line 571
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

    .line 570
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AutoUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0xe

    .line 572
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 570
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    :cond_2ec
    :goto_2ec
    if-lez v16, :cond_350

    .line 619
    new-instance v3, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    .line 620
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 621
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 622
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 623
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    const/16 v4, 0xe

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    new-instance v4, Lcom/isaigu/gymapp/ai/AutoUi$StripTo;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->programStrip:Landroid/widget/HorizontalScrollView;

    sget v6, Lcom/isaigu/gymapp/ai/AutoUi;->stripX:I

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/AutoUi$StripTo;-><init>(Landroid/widget/HorizontalScrollView;I)V

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 625
    if-eqz v14, :cond_350

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_350

    .line 626
    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 627
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 628
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 629
    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
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

    .line 634
    const-string v3, "\u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0441\u0430\u043c \u00b7 \u0441\u043c\u0435\u043d\u0438"

    const-string v5, "the client alone \u00b7 change"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 635
    :goto_36f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    .line 633
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 636
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

    .line 637
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    const/16 v4, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    const/4 v4, 0x0

    .line 640
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

    .line 641
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

    .line 642
    goto :goto_3b7

    .line 575
    :cond_3d7
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v21

    .line 576
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v22

    .line 577
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    .line 578
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v4, v6, :cond_407

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->modRow()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v4

    if-nez v4, :cond_40a

    .line 579
    :cond_407
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 581
    :cond_40a
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    if-eqz v4, :cond_444

    .line 582
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 587
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

    .line 588
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 589
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v5

    .line 590
    if-eqz v5, :cond_475

    .line 592
    if-nez v16, :cond_595

    move-object v3, v6

    move v4, v15

    .line 587
    :goto_43b
    add-int/lit8 v7, v17, 0x1

    move/from16 v17, v7

    move-object v6, v3

    move v15, v4

    move-object/from16 v16, v5

    goto :goto_418

    .line 583
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

    .line 584
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

    .line 597
    :cond_475
    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 598
    if-eqz v4, :cond_592

    .line 599
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->desc()Ljava/lang/String;

    move-result-object v12

    .line 601
    :goto_485
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v5

    if-eqz v5, :cond_4da

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/ProgramArt;->templateKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v6

    .line 602
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

    .line 603
    move-object/from16 v0, v18

    invoke-static {v3, v9, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v3, 0x7

    move/from16 v0, v17

    invoke-direct {v11, v3, v0}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    move-object/from16 v3, p0

    .line 602
    invoke-static/range {v3 .. v11}, Lcom/isaigu/gymapp/ai/AutoUi;->programCard(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Lcom/isaigu/gymapp/ai/AutoUi$Act;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 603
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoUi;->cardParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 602
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    add-int/lit8 v4, v15, 0x1

    move-object v3, v12

    move-object/from16 v5, v16

    goto/16 :goto_43b

    .line 601
    :cond_4da
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/ProgramArt;->passiveKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v6

    goto :goto_493

    .line 602
    :cond_4e3
    const-string v7, ""

    goto :goto_4a0

    .line 606
    :cond_4e6
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v3, v4, :cond_58f

    .line 607
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->modCards(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v3

    add-int/2addr v3, v15

    .line 608
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtAus;->byId(Ljava/lang/String;)Lcom/isaigu/gymapp/bodytech/BtAus$T;

    move-result-object v4

    .line 609
    if-eqz v4, :cond_58d

    .line 610
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

    .line 613
    :goto_51d
    if-nez v3, :cond_538

    .line 614
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    if-eqz v16, :cond_53c

    :goto_523
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0xe

    .line 615
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 614
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_538
    move/from16 v16, v3

    goto/16 :goto_2ec

    .line 615
    :cond_53c
    const-string v5, "\u041d\u044f\u043c\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u0442\u043e\u0437\u0438 \u0438\u0437\u0431\u043e\u0440."

    const-string v6, "No program for this choice."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_523

    .line 635
    :cond_545
    const-string v3, "\u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u00b7 \u0441\u043c\u0435\u043d\u0438"

    const-string v5, "trainer \u00b7 change"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_36f

    .line 640
    :cond_54f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_3b3

    .line 641
    :cond_556
    const/4 v3, 0x0

    goto/16 :goto_3d4

    .line 643
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

    .line 644
    if-eqz v13, :cond_57f

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    if-eqz v3, :cond_57d

    const/4 v3, 0x1

    :goto_570
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->enable(Z)V

    .line 645
    return-void

    .line 643
    :cond_574
    const-string v3, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v4, "Next"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_563

    .line 644
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
    .line 475
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 476
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 477
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 478
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->show(Landroid/app/Activity;I)V

    .line 480
    :cond_10
    return-void
.end method

.method private static setupGo()V
    .registers 3

    .prologue
    .line 484
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canStart()Z

    move-result v0

    if-nez v0, :cond_14

    .line 485
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    const-string v1, "\u041f\u044a\u0440\u0432\u043e \u0437\u0430\u0434\u0430\u0439 \u0441\u0438\u043b\u0430 \u043d\u0430 \u0440\u0435\u0434\u0430."

    const-string v2, "Set a strength on the row first."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 491
    :goto_13
    return-void

    .line 488
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->startRun(Landroid/content/Context;)V

    .line 489
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    :goto_23
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    goto :goto_13

    .line 490
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
    .line 440
    const/4 v1, 0x0

    .line 441
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

    .line 442
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoUi;->workoutId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    :goto_1d
    move-object v1, v0

    .line 445
    goto :goto_7

    .line 446
    :cond_1f
    if-nez v1, :cond_22

    .line 465
    :cond_21
    :goto_21
    return-void

    .line 449
    :cond_22
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoUi;->presetProgram(Lcom/isaigu/gymapp/ai/Workout;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_35

    .line 453
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 454
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    goto :goto_21

    .line 457
    :cond_35
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 458
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 459
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 460
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/MapRunner;->arm(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v1

    .line 461
    if-eqz v1, :cond_21

    .line 462
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->open(Landroid/app/Activity;)V

    goto :goto_21

    :cond_4a
    move-object v0, v1

    goto :goto_1d
.end method

.method static show()V
    .registers 1

    .prologue
    .line 166
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 175
    :cond_e
    :goto_e
    return-void

    .line 169
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_e

    .line 171
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->open(Landroid/app/Activity;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_e

    .line 173
    :catch_1d
    move-exception v0

    goto :goto_e
.end method

.method private static show(Landroid/app/Activity;I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 179
    const/4 v0, 0x3

    if-ne p1, v0, :cond_23

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 182
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 183
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    :goto_16
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    .line 195
    :goto_19
    return-void

    .line 183
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_16

    .line 186
    :cond_23
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_31

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_68

    .line 187
    :cond_31
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 188
    const-string v0, ""

    const-string v1, ""

    const/16 v2, 0x49c

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x25

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 192
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 194
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

    .line 1550
    if-eqz p0, :cond_12

    .line 1551
    :goto_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1578
    :goto_11
    return-void

    .line 1550
    :cond_12
    const-string p0, ""

    goto :goto_9

    .line 1554
    :cond_15
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    .line 1555
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1556
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1557
    if-nez p1, :cond_26

    .line 1558
    new-array p1, v1, [Ljava/lang/String;

    :cond_26
    move v0, v1

    .line 1560
    :goto_27
    array-length v2, p1

    if-ge v0, v2, :cond_a6

    .line 1561
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1562
    const/16 v2, 0x30

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1563
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v6, 0x1

    invoke-static {v3, v2, v9, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1564
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1565
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

    .line 1566
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1567
    invoke-static {v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1568
    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1569
    aget-object v2, p1, v0

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v2, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1570
    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1571
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1572
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1573
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1574
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a4

    move v2, v1

    :goto_9a
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1560
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1574
    :cond_a4
    const/4 v2, 0x5

    goto :goto_9a

    .line 1576
    :cond_a6
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1577
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

    .line 1527
    :try_start_2
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1528
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1529
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    .line 1546
    :goto_16
    return-void

    .line 1532
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1533
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoUi;->infoText(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1534
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1535
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

    .line 1536
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

    .line 1537
    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 1536
    invoke-static {v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1538
    new-instance v3, Landroid/widget/PopupWindow;

    const/high16 v4, 0x43be0000    # 380.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-direct {v3, v2, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    .line 1539
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1540
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1541
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->infoPop:Landroid/widget/PopupWindow;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 1542
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

    .line 1543
    :catch_ad
    move-exception v0

    .line 1544
    const-string v1, "AutoUi.info"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1542
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

    .line 1585
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1616
    :goto_d
    return-void

    .line 1588
    :cond_e
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoUi;->howShownFor:Ljava/lang/String;

    .line 1589
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1590
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1591
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

    .line 1593
    :goto_2d
    array-length v3, p2

    if-ge v0, v3, :cond_c7

    .line 1594
    aget-object v3, p2, v0

    if-eqz v3, :cond_40

    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_43

    .line 1593
    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1597
    :cond_43
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 1598
    const/16 v3, 0x30

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1599
    array-length v3, v6

    rem-int v3, v0, v3

    aget v3, v6, v3

    .line 1600
    aget-object v8, p1, v0

    const/high16 v9, 0x41300000    # 11.0f

    invoke-static {v5, v8, v9, v3, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 1601
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1602
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

    .line 1603
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42580000    # 54.0f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41b00000    # 22.0f

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1604
    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1605
    invoke-virtual {v7, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1606
    aget-object v3, p2, v0

    const/high16 v8, 0x41600000    # 14.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v3, v8, v9, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1607
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1608
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1609
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1610
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v1, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1611
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    if-nez v2, :cond_c4

    move v3, v4

    :goto_b9
    invoke-static {v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1612
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_40

    .line 1611
    :cond_c4
    const/16 v3, 0xa

    goto :goto_b9

    .line 1614
    :cond_c7
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runHow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1615
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
    .line 1402
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v0

    .line 1403
    :goto_6
    sget v1, Lcom/isaigu/gymapp/ai/AutoUi;->phasesShownFor:I

    if-ne v0, v1, :cond_d

    .line 1436
    :cond_a
    :goto_a
    return-void

    .line 1402
    :cond_b
    const/4 v0, -0x1

    goto :goto_6

    .line 1406
    :cond_d
    sput v0, Lcom/isaigu/gymapp/ai/AutoUi;->phasesShownFor:I

    .line 1407
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1408
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_f1

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1409
    if-eqz p1, :cond_a

    .line 1412
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1413
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v7

    .line 1414
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 1415
    const/4 v0, 0x0

    move v1, v0

    :goto_2e
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_11c

    .line 1416
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1417
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v2

    if-ne v1, v2, :cond_f5

    const/4 v2, 0x1

    .line 1418
    :goto_45
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v3

    if-ge v1, v3, :cond_f8

    const/4 v3, 0x1

    .line 1419
    :goto_4c
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v4

    if-eqz v4, :cond_fb

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 1420
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

    .line 1421
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

    .line 1422
    if-eqz v2, :cond_10f

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1420
    :goto_92
    invoke-static {v6, v5, v9, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 1423
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

    .line 1424
    if-eqz v2, :cond_112

    const/16 v0, 0x30

    :goto_b5
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v10, v0

    .line 1425
    if-eqz v2, :cond_115

    :goto_c2
    if-eqz v2, :cond_117

    const v0, 0x3f99999a    # 1.2f

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 1424
    :goto_cb
    invoke-static {v9, v10, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1426
    if-eqz v3, :cond_119

    const v0, 0x3ee66666    # 0.45f

    :goto_d7
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1427
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1429
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1430
    invoke-virtual {v8, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1415
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2e

    .line 1408
    :cond_f1
    const/16 v0, 0x8

    goto/16 :goto_19

    .line 1417
    :cond_f5
    const/4 v2, 0x0

    goto/16 :goto_45

    .line 1418
    :cond_f8
    const/4 v3, 0x0

    goto/16 :goto_4c

    .line 1419
    :cond_fb
    if-eqz v2, :cond_101

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto/16 :goto_57

    :cond_101
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_57

    .line 1421
    :cond_105
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6a

    .line 1422
    :cond_10f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_92

    .line 1424
    :cond_112
    const/16 v0, 0x14

    goto :goto_b5

    .line 1425
    :cond_115
    const/4 v4, 0x0

    goto :goto_c2

    :cond_117
    const/4 v0, 0x0

    goto :goto_cb

    .line 1426
    :cond_119
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_d7

    .line 1432
    :cond_11c
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, v6}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 1433
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1434
    invoke-virtual {v0, v8}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1435
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoUi;->runPhases:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_a
.end method

.method static startLabel(Lcom/isaigu/gymapp/ai/AutoEngine;J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 1837
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 1838
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_82

    .line 1839
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "recovery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1841
    :goto_16
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v1

    .line 1842
    if-lez v1, :cond_44

    .line 1843
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

    .line 1854
    :goto_3a
    return-object v0

    .line 1840
    :cond_3b
    const-string v0, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430 \u0441\u0435\u0440\u0438\u044f"

    const-string v1, "next set"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1845
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

    .line 1846
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

    .line 1848
    :cond_82
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_a4

    .line 1849
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

    .line 1851
    :cond_a4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1852
    const-string v0, "\u25b6 \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v1, "\u25b6 Resume"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 1854
    :cond_b3
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_c1

    const-string v0, "\u2026 \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u0430"

    const-string v1, "\u2026 HR coming down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    .line 1855
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

    .line 688
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->modRow()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 689
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoUi;->host:Landroid/app/Activity;

    .line 690
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 691
    if-eqz v1, :cond_d

    if-nez v2, :cond_14

    .line 692
    :cond_d
    sput-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 693
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->go(I)V

    .line 706
    :goto_13
    return-void

    .line 696
    :cond_14
    const-string v0, ""

    .line 698
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

    .line 699
    iget-object v4, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v4, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_30} :catch_47

    .line 702
    :goto_30
    sput-object v5, Lcom/isaigu/gymapp/ai/AutoUi;->modId:Ljava/lang/String;

    .line 703
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 704
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->dismiss()V

    .line 705
    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v2, v1, v3, v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_13

    .line 699
    :cond_40
    :try_start_40
    iget-object v4, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v4, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_46} :catch_47

    goto :goto_30

    .line 700
    :catch_47
    move-exception v4

    goto :goto_30
.end method

.method public static status()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2142
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 2143
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 2144
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_45

    if-eqz v1, :cond_45

    .line 2145
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 2146
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

    .line 2151
    :goto_41
    return-object v0

    .line 2146
    :cond_42
    const-string v0, ""

    goto :goto_27

    .line 2148
    :cond_45
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_52

    .line 2149
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v1, "Ready programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 2151
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

    .line 333
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoUi;->stepTipText(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_10

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoUi;->infoOpen:Z

    if-nez v1, :cond_11

    .line 343
    :cond_10
    :goto_10
    return-void

    .line 337
    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 338
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v3, 0x3e23d70a    # 0.16f

    invoke-static {v2, v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 339
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 338
    invoke-static {v2, v3, v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v6, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v2, 0x25

    invoke-direct {v0, v2, v5}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
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
    .line 346
    packed-switch p0, :pswitch_data_20

    .line 370
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 348
    :pswitch_5
    const-string v0, "\u0426\u0432\u0435\u0442\u044a\u0442 \u0435 \u0442\u0440\u0443\u0434\u043d\u043e\u0441\u0442\u0442\u0430: \u0437\u0435\u043b\u0435\u043d\u043e \u2014 \u043b\u0435\u0441\u043d\u0430, \u0436\u044a\u043b\u0442\u043e \u2014 \u0441\u0440\u0435\u0434\u043d\u0430, \u0447\u0435\u0440\u0432\u0435\u043d\u043e \u2014 \u0442\u0440\u0443\u0434\u043d\u0430. \u041f\u043e\u0434 \u0438\u043c\u0435\u0442\u043e \u0441\u0430 \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430 \u00b7 \u043e\u0441\u043d\u043e\u0432\u043d\u0430 \u0447\u0430\u0441\u0442 \u00b7 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435. \u201e\u0421 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u201c \u043f\u043e\u043a\u0430\u0437\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u043e\u0442 \u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438, \u0441\u0432\u044a\u0440\u0437\u0430\u043d\u0438 \u0441 \u0446\u0435\u043b\u0442\u0430. \u2605 \u2014 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0430\u043d\u0430 \u043f\u043e \u043f\u0440\u043e\u0444\u0438\u043b\u0430."

    const-string v1, "The colour is the difficulty: green easy, amber medium, red hard. Under the name: warm-up \u00b7 main part \u00b7 recovery. \u201cWith exercises\u201d shows the programs from Programs linked to the goal. \u2605 \u2014 recommended by the profile."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 355
    :pswitch_e
    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044a\u0442 \u0435 \u043e\u0442 \u043a\u043b\u0438\u0435\u043d\u0442\u0441\u043a\u0438\u044f \u0437\u0430\u043f\u0438\u0441, \u043f\u043b\u0430\u043d\u044a\u0442 \u0441\u0435 \u0441\u043c\u044f\u0442\u0430 \u043e\u0442 \u043d\u0435\u0433\u043e \u2014 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u0438 \u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442\u044a\u0442 \u0441\u0430 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430, \u043d\u0435 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442. \u201e\u0414\u043d\u0435\u0441\u201c \u2014 \u043a\u0430\u043a \u0435 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0441\u0435\u0433\u0430 (\u043d\u0435\u0434\u043e\u0441\u043f\u0430\u043b, \u0441\u0442\u0440\u0435\u0441, \u0446\u0438\u043a\u044a\u043b\u2026): \u043d\u0435 \u0441\u043f\u0438\u0440\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430, \u043f\u043b\u0430\u043d\u044a\u0442 \u0441\u0435 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u0441\u0430\u043c. \u0421\u0438\u043b\u0430\u0442\u0430 \u0441\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u0432\u0430 \u043d\u0430 \u0433\u043b\u0430\u0432\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d."

    const-string v1, "The profile comes from the client record and the plan from the profile \u2014 the time and the intensity are the program\'s, not changed. \u201cToday\u201d \u2014 how the client is now (short on sleep, stress, period\u2026): it never stops the session, the plan adapts by itself. The strength is set on the main screen."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 363
    :pswitch_17
    const-string v0, "\u0423\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0435 \u0441 \u0433\u043b\u0430\u0432\u043d\u0438\u0442\u0435 \u25b6 / \u275a\u275a \u0438 \u25a0. \u25a0 \u0434\u0435\u0439\u0441\u0442\u0432\u0430 \u043e\u0442 \u043f\u0430\u0443\u0437\u0430: \u043f\u044a\u0440\u0432\u0438\u044f\u0442 \u2014 \u043a\u044a\u043c 10 \u043c\u0438\u043d \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435, \u0432\u0442\u043e\u0440\u0438\u044f\u0442 \u2014 \u043a\u0440\u0430\u0439. \u0418\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0441\u0430 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e 20 \u043c\u0438\u043d. \u2715 \u0441\u043a\u0440\u0438\u0432\u0430 \u0442\u0430\u0431\u043b\u043e\u0442\u043e \u2014 \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430. \u24d8 \u043d\u0430 \u0432\u0441\u044f\u043a\u0430 \u0447\u0430\u0441\u0442 \u043a\u0430\u0437\u0432\u0430 \u043a\u0430\u043a\u0432\u043e \u043f\u043e\u043a\u0430\u0437\u0432\u0430."

    const-string v1, "Driven by the main \u25b6 / \u275a\u275a and \u25a0. \u25a0 works from a pause: the first \u2014 to the 10 min recovery, the second \u2014 the end. Impulses at most 20 min. \u2715 hides the board \u2014 the session goes on. Each part\'s \u24d8 says what it shows."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 346
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
    .line 2056
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2057
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2058
    return-void

    .line 2057
    :cond_18
    const/16 v0, 0x8

    goto :goto_14
.end method

.method private static tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .prologue
    .line 2089
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoUi;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2090
    return-void
.end method

.method private static tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 2093
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2094
    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2095
    const/high16 v1, 0x41c00000    # 24.0f

    const/4 v2, 0x1

    invoke-static {p0, p3, v1, p5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 2096
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2097
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2098
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p4, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2099
    return-void
.end method

.method private static tipsToggle(Landroid/content/Context;)Landroid/view/View;
    .registers 7

    .prologue
    .line 375
    const-string v0, "\u041f\u043e\u0434\u0441\u043a\u0430\u0437\u043a\u0438"

    const-string v1, "Tips"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041f\u0440\u0438 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u043f\u043e\u043b\u0437\u0432\u0430\u043d\u0435 \u043d\u0430 \u0431\u0443\u0442\u043e\u043d\u0438\u0442\u0435 \u0438 \u043c\u0435\u043d\u044e\u0442\u0430\u0442\u0430. \u041b\u0438\u043c\u0438\u0442\u0438\u0442\u0435 \u0438 \u0437\u0430\u0449\u0438\u0442\u0438\u0442\u0435 \u0441\u0435 \u043f\u043e\u043a\u0430\u0437\u0432\u0430\u0442 \u0432\u0438\u043d\u0430\u0433\u0438."

    const-string v2, "On the first use of buttons and menus. Limits and safety always show."

    .line 376
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn()Z

    move-result v2

    new-instance v3, Lcom/isaigu/gymapp/ai/AutoUi$Act;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/ai/AutoUi$Act;-><init>(II)V

    .line 375
    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2135
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 2138
    :goto_8
    return-void

    .line 2136
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private static toggle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/view/View;
    .registers 7

    .prologue
    .line 2073
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
    .line 1048
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1049
    const/16 v0, 0x50

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1050
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneNames()[Ljava/lang/String;

    move-result-object v3

    .line 1051
    const/4 v0, 0x0

    :goto_e
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel;->DISPLAY_ORDER:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d5

    .line 1052
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel;->DISPLAY_ORDER:[I

    aget v4, v1, v0

    .line 1053
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1054
    const/16 v1, 0x51

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1055
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v6, v1, v4

    .line 1056
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

    .line 1057
    const/16 v7, 0x11

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1058
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1059
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1060
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1061
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

    .line 1062
    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1063
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1064
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

    .line 1065
    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1066
    invoke-virtual {v5, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1067
    aget-object v1, v3, v4

    const/high16 v4, 0x41300000    # 11.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {p0, v1, v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1068
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1069
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1070
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 1056
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

    .line 1072
    :cond_d5
    return-object v2
.end method

.method static zoneNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1076
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 1077
    const/4 v1, 0x3

    const-string v2, "\u041f\u0440\u0430\u0441\u0435\u0446"

    const-string v3, "Calf"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1078
    const/4 v1, 0x2

    const-string v2, "\u041f\u0440. \u0431\u0435\u0434\u0440\u043e"

    const-string v3, "Quads"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1079
    const/16 v1, 0x9

    const-string v2, "\u0417\u0430\u0434. \u0431\u0435\u0434\u0440\u043e"

    const-string v3, "Hamstr."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1080
    const/16 v1, 0x8

    const-string v2, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v3, "Glutes"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1081
    const/4 v1, 0x1

    const-string v2, "\u041a\u043e\u0440\u0435\u043c"

    const-string v3, "Abs"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1082
    const/4 v1, 0x7

    const-string v2, "\u041a\u0440\u044a\u0441\u0442"

    const-string v3, "Low back"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1083
    const/4 v1, 0x6

    const-string v2, "\u0413\u0440\u044a\u0431"

    const-string v3, "Back"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1084
    const/4 v1, 0x5

    const-string v2, "\u0422\u0440\u0430\u043f\u0435\u0446"

    const-string v3, "Traps"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1085
    const/4 v1, 0x0

    const-string v2, "\u0413\u044a\u0440\u0434\u0438"

    const-string v3, "Chest"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1086
    const/4 v1, 0x4

    const-string v2, "\u0420\u044a\u0446\u0435"

    const-string v3, "Arms"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1087
    return-object v0
.end method
