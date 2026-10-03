.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleSources;
.super Ljava/lang/Object;
.source "ScaleSources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Turn;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Filter;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleSources$OpenDoi;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;
    }
.end annotation


# static fields
.field public static final T_STANDARD:I = 0x1

.field public static final T_STUDY:I = 0x0

.field public static final T_VENDOR:I = 0x2

.field public static final T_XEMS:I = 0x3


# instance fields
.field final a:Landroid/app/Activity;

.field final bg:Z

.field chips:Landroid/widget/LinearLayout;

.field filter:I

.field grid:Landroid/widget/LinearLayout;

.field portrait:Z

.field sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->filter:I

    .line 201
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    .line 202
    const-string v0, "\u0431"

    const-string v1, "e"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0431"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->bg:Z

    .line 203
    return-void
.end method

.method public static all()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x0

    const-string v2, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 \u0438 \u0431\u0435\u0437\u043c\u0430\u0437\u043d\u0435\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v3, "Fat and fat-free mass"

    const-string v4, "\u0423\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u044f\u0442\u0430, \u043a\u043e\u0438\u0442\u043e \u043f\u0440\u0435\u0432\u0440\u044a\u0449\u0430\u0442 \u0438\u043c\u043f\u0435\u0434\u0430\u043d\u0441\u0430, \u0440\u044a\u0441\u0442\u0430 \u0438 \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0432 \u0431\u0435\u0437\u043c\u0430\u0437\u043d\u0435\u043d\u0430 \u043c\u0430\u0441\u0430 \u2014 \u043e\u0442\u0434\u0435\u043b\u043d\u0438 \u0437\u0430 \u043c\u044a\u0436\u0435 \u0438 \u0436\u0435\u043d\u0438."

    const-string v5, "The equations that turn impedance, height and weight into fat-free mass \u2014 separate for men and women."

    const-string v6, "Sun SS, Chumlea WC, Heymsfield SB et al. Am J Clin Nutr 2003;77:331\u2013340"

    const-string v7, "1 829 \u0434\u0443\u0448\u0438 \u00b7 NHANES III \u00b7 \u0441\u0440\u0430\u0432\u043d\u0435\u043d\u0438 \u0441 4-\u043a\u043e\u043c\u043f\u043e\u043d\u0435\u043d\u0442\u0435\u043d \u0440\u0435\u0444\u0435\u0440\u0435\u043d\u0442\u0435\u043d \u043c\u043e\u0434\u0435\u043b"

    const-string v8, "1,829 adults \u00b7 NHANES III \u00b7 against a 4-compartment reference model"

    const/16 v9, 0x725

    const-string v10, "10.1093/ajcn/77.2.331"

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x0

    const-string v2, "\u0421\u043a\u0435\u043b\u0435\u0442\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v3, "Skeletal muscle"

    const-string v4, "\u041a\u043e\u043b\u043a\u043e \u043e\u0442 \u0431\u0435\u0437\u043c\u0430\u0437\u043d\u0435\u043d\u0430\u0442\u0430 \u043c\u0430\u0441\u0430 \u0441\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435, \u043a\u043e\u0438\u0442\u043e \u0434\u0432\u0438\u0436\u0430\u0442 \u0442\u044f\u043b\u043e\u0442\u043e \u2014 \u0442\u0435\u0437\u0438, \u043a\u043e\u0438\u0442\u043e EMS \u0442\u0440\u0435\u043d\u0438\u0440\u0430."

    const-string v5, "How much of the fat-free mass is the muscle that moves the body \u2014 the muscle EMS trains."

    const-string v6, "Janssen I, Heymsfield SB, Baumgartner RN, Ross R. J Appl Physiol 2000;89:465\u2013471"

    const-string v7, "388 \u0434\u0443\u0448\u0438 \u00b7 \u042f\u041c\u0420 \u043d\u0430 \u0446\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e"

    const-string v8, "388 adults \u00b7 whole-body MRI"

    const/16 v9, 0x184

    const-string v10, "10.1152/jappl.2000.89.2.465"

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x0

    const-string v2, "\u041d\u043e\u0440\u043c\u0430\u0442\u0430 \u0437\u0430 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435"

    const-string v3, "The healthy fat range"

    const-string v4, "\u0417\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u0438\u044f\u0442 % \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u043f\u043e \u043f\u043e\u043b \u0438 \u0432\u044a\u0437\u0440\u0430\u0441\u0442 \u2014 \u0441\u0440\u0435\u0434\u0430\u0442\u0430 \u043d\u0430 \u0441\u043a\u0430\u043b\u0430\u0442\u0430 \u0438 \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e\u0442\u043e \u0442\u0435\u0433\u043b\u043e."

    const-string v5, "The healthy body fat % by sex and age \u2014 the middle of the scale and the healthy weight."

    const-string v6, "Gallagher D, Heymsfield SB, Heo M et al. Am J Clin Nutr 2000;72:694\u2013701"

    const-string v7, "1 626 \u0434\u0443\u0448\u0438 \u00b7 DXA \u0438 4-\u043a\u043e\u043c\u043f\u043e\u043d\u0435\u043d\u0442\u0435\u043d \u043c\u043e\u0434\u0435\u043b \u00b7 \u0442\u0440\u0438 \u0435\u0442\u043d\u0438\u0447\u0435\u0441\u043a\u0438 \u0433\u0440\u0443\u043f\u0438"

    const-string v8, "1,626 adults \u00b7 DXA and a 4-compartment model \u00b7 three ethnic groups"

    const/16 v9, 0x65a

    const-string v10, "10.1093/ajcn/72.3.694"

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x0

    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u044a\u0441\u0442\u0430"

    const-string v3, "Muscle and fat for the height"

    const-string v4, "FFMI \u0438 FMI \u2014 \u0437\u0430\u0449\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0435\u0441\u0442 \u0447\u043e\u0432\u0435\u043a \u043d\u0435 \u0435 \u201e\u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u201c, \u0430 \u0441\u043b\u0430\u0431\u0430 \u0436\u0435\u043d\u0430 \u043d\u0435 \u0435 \u201e\u0432 \u0434\u0435\u0444\u0438\u0446\u0438\u0442\u201c."

    const-string v5, "FFMI and FMI \u2014 why a muscular person is not \"overweight\" and a lean woman not \"in deficit\"."

    const-string v6, "Schutz Y, Kyle UUG, Pichard C. Int J Obes 2002;26:953\u2013960"

    const-string v7, "5 635 \u0434\u0443\u0448\u0438, 18\u201398 \u0433."

    const-string v8, "5,635 adults aged 18\u201398"

    const/16 v9, 0x1603

    const-string v10, "10.1038/sj.ijo.0802037"

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x0

    const-string v2, "\u0413\u0440\u0430\u043d\u0438\u0446\u0438 \u0437\u0430 \u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e \u0438 \u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    const-string v3, "Overweight and obesity limits"

    const-string v4, "\u041f\u0440\u0430\u0433\u043e\u0432\u0435\u0442\u0435 \u043d\u0430 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u044a\u0441\u0442\u0430 (FMI) \u2014 \u043f\u043e \u043d\u0430\u0446\u0438\u043e\u043d\u0430\u043b\u043d\u0430 \u0438\u0437\u0432\u0430\u0434\u043a\u0430, \u043d\u0435 \u043f\u043e \u0418\u0422\u041c."

    const-string v5, "The fat-for-height (FMI) limits \u2014 from a national sample, not from BMI."

    const-string v6, "Kelly TL, Wilson KE, Heymsfield SB. PLoS One 2009;4(9):e7038"

    const-string v7, "NHANES 1999\u20132004 \u00b7 DXA \u00b7 \u043d\u0430\u0446\u0438\u043e\u043d\u0430\u043b\u043d\u0430 \u0438\u0437\u0432\u0430\u0434\u043a\u0430 \u043d\u0430 \u0421\u0410\u0429"

    const-string v8, "NHANES 1999\u20132004 \u00b7 DXA \u00b7 US national sample"

    const/4 v9, 0x0

    const-string v10, "10.1371/journal.pone.0007038"

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x0

    const-string v2, "\u0424\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v3, "Physical age"

    const-string v4, "\u041c\u0435\u0434\u0438\u0430\u043d\u0438\u0442\u0435 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u0440\u044a\u0446\u0435\u0442\u0435 \u0438 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0438 \u043d\u0430 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043f\u043e \u0434\u0435\u0441\u0435\u0442\u0438\u043b\u0435\u0442\u0438\u044f \u2014 \u043a\u043e\u044f \u0432\u044a\u0437\u0440\u0430\u0441\u0442 \u0438\u043c \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f."

    const-string v5, "The medians of arm + leg muscle and of fat by decade \u2014 which age the body matches."

    const-string v6, "Imboden MT, Welch WA, Swartz AM et al. PLoS One 2017;12(4):e0175110 \u0438 e0176161"

    const-string v7, "3 327 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u043d\u0438 \u00b7 DXA"

    const-string v8, "3,327 adults \u00b7 DXA"

    const/16 v9, 0xcff

    const-string v10, "10.1371/journal.pone.0175110"

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x0

    const-string v2, "\u0412\u043e\u0434\u0430\u0442\u0430 \u0432 \u0442\u044f\u043b\u043e\u0442\u043e"

    const-string v3, "Body water"

    const-string v4, "\u0412\u043e\u0434\u0430\u0442\u0430 \u0435 \u043e\u043a\u043e\u043b\u043e 73 % \u043e\u0442 \u0431\u0435\u0437\u043c\u0430\u0437\u043d\u0435\u043d\u0430\u0442\u0430 \u043c\u0430\u0441\u0430 \u2014 \u0441\u0442\u0430\u0431\u0438\u043b\u043d\u0430 \u043a\u043e\u043d\u0441\u0442\u0430\u043d\u0442\u0430 \u043f\u0440\u0438 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u043d\u0438."

    const-string v5, "Water is about 73 % of the fat-free mass \u2014 a steady constant in adults."

    const-string v6, "Wang Z, Deurenberg P, Wang W et al. Am J Clin Nutr 1999;69:833\u2013841"

    const-string v7, "\u043f\u0440\u0435\u0433\u043b\u0435\u0434 \u043d\u0430 \u0438\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0438\u044f\u0442\u0430 \u043d\u0430 \u0445\u0438\u0434\u0440\u0430\u0442\u0430\u0446\u0438\u044f\u0442\u0430"

    const-string v8, "a review of the hydration studies"

    const/4 v9, 0x0

    const-string v10, "10.1093/ajcn/69.5.833"

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x0

    const-string v2, "\u041e\u0431\u0438\u0447\u0430\u0435\u043d \u043c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0437\u044a\u043c"

    const-string v3, "Usual resting energy"

    const-string v4, "\u0421 \u043a\u0430\u043a\u0432\u043e \u0441\u0440\u0430\u0432\u043d\u044f\u0432\u0430\u043c\u0435 \u0431\u0430\u0437\u043e\u0432\u0438\u044f \u043c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0437\u044a\u043c \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u2014 \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u0442\u0435\u0433\u043b\u043e\u0442\u043e, \u0440\u044a\u0441\u0442\u0430 \u0438 \u0433\u043e\u0434\u0438\u043d\u0438\u0442\u0435."

    const-string v5, "What the client\'s resting energy is compared with \u2014 the usual for the weight, height and age."

    const-string v6, "Mifflin MD, St Jeor ST, Hill LA et al. Am J Clin Nutr 1990;51:241\u2013247"

    const-string v7, "498 \u0434\u0443\u0448\u0438 \u00b7 \u043d\u0435\u043f\u0440\u044f\u043a\u0430 \u043a\u0430\u043b\u043e\u0440\u0438\u043c\u0435\u0442\u0440\u0438\u044f"

    const-string v8, "498 adults \u00b7 indirect calorimetry"

    const/16 v9, 0x1f2

    const-string v10, "10.1093/ajcn/51.2.241"

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x0

    const-string v2, "\u041a\u0430\u043a \u0440\u0430\u0431\u043e\u0442\u0438 \u0438 \u043a\u043e\u0433\u0430 \u0435 \u0442\u043e\u0447\u0435\u043d \u0431\u0438\u043e\u0438\u043c\u043f\u0435\u0434\u0430\u043d\u0441\u044a\u0442"

    const-string v3, "How bioimpedance works, when it is right"

    const-string v4, "\u041f\u0440\u0438\u043d\u0446\u0438\u043f\u044a\u0442 \u043d\u0430 \u0434\u0432\u0435\u0442\u0435 \u0447\u0435\u0441\u0442\u043e\u0442\u0438, \u0442\u043e\u0447\u043d\u043e\u0441\u0442\u0442\u0430 \u0438 \u043f\u0440\u0430\u0432\u0438\u043b\u0430\u0442\u0430 \u0437\u0430 \u043c\u0435\u0440\u0435\u043d\u0435: \u0431\u043e\u0441, \u043f\u043e \u0435\u0434\u043d\u043e \u0432\u0440\u0435\u043c\u0435, \u0431\u0435\u0437 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u043f\u0440\u0435\u0434\u0438."

    const-string v5, "The two-frequency principle, the accuracy and the measuring rules: barefoot, same time, no training before."

    const-string v6, "Kyle UG, Bosaeus I, De Lorenzo AD et al. (ESPEN). Clin Nutr 2004;23:1226\u20131243 \u0438 1430\u20131453"

    const-string v7, "\u043f\u0440\u0435\u0433\u043b\u0435\u0434 \u043d\u0430 \u0435\u043a\u0441\u043f\u0435\u0440\u0442\u043d\u0430 \u0433\u0440\u0443\u043f\u0430 (ESPEN)"

    const-string v8, "an expert group review (ESPEN)"

    const/4 v9, 0x0

    const-string v10, "10.1016/j.clnu.2004.06.004"

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x0

    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430 \u0438 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 \u043f\u0440\u0438 EMS"

    const-string v3, "Rest and load in EMS"

    const-string v4, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430 \u043f\u043e\u043d\u0435 4 \u0434\u043d\u0438, \u043f\u043e-\u043b\u0435\u043a\u0438 \u043f\u044a\u0440\u0432\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438, \u043c\u043d\u043e\u0433\u043e \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0438 \u2014 \u043e\u0441\u043d\u043e\u0432\u0430 \u043d\u0430 \u043f\u043b\u0430\u043d\u0430 \u0438 \u043d\u0430 \u0433\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442\u0442\u0430."

    const-string v5, "At least 4 days of rest, lighter first sessions, plenty of fluid \u2014 the base of the plan and readiness."

    const-string v6, "Kemmler W, Fr\u00f6hlich M, von Stengel S, Klein\u00f6der H. Dtsch Z Sportmed 2016;67:218\u2013221"

    const-string v7, "\u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438 \u0437\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u0430 WB-EMS \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v8, "guideline for safe WB-EMS training"

    const/4 v9, 0x0

    const-string v10, ""

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x0

    const-string v2, "\u0418\u0437\u0433\u043b\u0430\u0436\u0434\u0430\u043d\u0435 \u043c\u0435\u0436\u0434\u0443 \u043c\u0435\u0440\u0435\u043d\u0438\u044f"

    const-string v3, "Smoothing between weigh-ins"

    const-string v4, "\u0424\u0438\u043b\u0442\u044a\u0440, \u043a\u043e\u0439\u0442\u043e \u043e\u0442\u0434\u0435\u043b\u044f \u0448\u0443\u043c\u0430 (\u043a\u043e\u043d\u0442\u0430\u043a\u0442, \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0432\u043e\u0434\u0430) \u043e\u0442 \u0438\u0441\u0442\u0438\u043d\u0441\u043a\u0430\u0442\u0430 \u043f\u0440\u043e\u043c\u044f\u043d\u0430 \u043d\u0430 \u0442\u044a\u043a\u0430\u043d\u0438\u0442\u0435."

    const-string v5, "A filter that separates noise (contact, the last drink) from the real change of tissue."

    const-string v6, "Kalman RE. J Basic Eng 1960;82:35\u201345"

    const-string v7, "\u043c\u0430\u0442\u0435\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438 \u043c\u0435\u0442\u043e\u0434"

    const-string v8, "a mathematical method"

    const/4 v9, 0x0

    const-string v10, "10.1115/1.3662552"

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x1

    const-string v2, "\u0411\u0430\u0437\u043e\u0432 \u043c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0437\u044a\u043c \u043e\u0442 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435"

    const-string v3, "Resting energy from the lean mass"

    const-string v4, "370 + 21.6 \u00d7 \u0431\u0435\u0437\u043c\u0430\u0437\u043d\u0435\u043d\u0430\u0442\u0430 \u043c\u0430\u0441\u0430 \u2014 \u043a\u043e\u043b\u043a\u043e \u0438\u0437\u0433\u0430\u0440\u044f \u0442\u044f\u043b\u043e\u0442\u043e \u0432 \u043f\u043e\u043a\u043e\u0439."

    const-string v5, "370 + 21.6 \u00d7 fat-free mass \u2014 what the body burns at rest."

    const-string v6, "Katch\u2013McArdle \u00b7 McArdle WD, Katch FI, Katch VL. Exercise Physiology (\u0443\u0447\u0435\u0431\u043d\u0438\u043a)"

    const-string v7, "\u0441\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u043d\u0430 \u0444\u043e\u0440\u043c\u0443\u043b\u0430 \u0432 \u0441\u043f\u043e\u0440\u0442\u043d\u0430\u0442\u0430 \u0444\u0438\u0437\u0438\u043e\u043b\u043e\u0433\u0438\u044f"

    const-string v8, "a standard formula of exercise physiology"

    const/4 v9, 0x0

    const-string v10, ""

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x1

    const-string v2, "\u0418\u0422\u041c"

    const-string v3, "BMI"

    const-string v4, "\u041a\u043b\u0430\u0441\u043e\u0432\u0435\u0442\u0435 \u043d\u0430 \u0418\u0422\u041c \u2014 \u043f\u043e\u043a\u0430\u0437\u0432\u0430\u043c\u0435 \u0433\u0438, \u043d\u043e \u0442\u044f\u043b\u043e\u0442\u043e \u043d\u0435 \u0441\u044a\u0434\u0438\u043c \u043f\u043e \u0442\u044f\u0445: \u0418\u0422\u041c \u043d\u0435 \u0437\u043d\u0430\u0435 \u043a\u0430\u043a\u0432\u043e \u0435 \u0442\u0435\u0433\u043b\u043e\u0442\u043e."

    const-string v5, "The BMI classes \u2014 shown, but the body is not judged by them: BMI does not know what the weight is."

    const-string v6, "WHO. Obesity: preventing and managing the global epidemic. Technical Report Series 894, 2000"

    const-string v7, "\u0421\u0432\u0435\u0442\u043e\u0432\u043d\u0430 \u0437\u0434\u0440\u0430\u0432\u043d\u0430 \u043e\u0440\u0433\u0430\u043d\u0438\u0437\u0430\u0446\u0438\u044f"

    const-string v8, "World Health Organization"

    const/4 v9, 0x0

    const-string v10, ""

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x2

    const-string v2, "\u0417\u043e\u043d\u0438\u0442\u0435, \u043a\u043e\u0441\u0442\u0438\u0442\u0435, \u0432\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438\u0442\u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v3, "Zones, bone, visceral fat"

    const-string v4, "\u0410\u043b\u0433\u043e\u0440\u0438\u0442\u044a\u043c\u044a\u0442 \u043d\u0430 \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044f (iComon WLA25, \u043a\u043e\u0439\u0442\u043e \u043f\u043e\u043b\u0437\u0432\u0430 Fitdays): \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043f\u043e 5-\u0442\u0435 \u0437\u043e\u043d\u0438, \u043a\u043e\u0441\u0442\u043d\u0430 \u043c\u0430\u0441\u0430, \u0432\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438, \u0441\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u0438\u0442\u0435 \u043d\u0430 \u0437\u043e\u043d\u0438\u0442\u0435 \u2014 \u0442\u0430\u043c, \u043a\u044a\u0434\u0435\u0442\u043e \u043d\u044f\u043c\u0430 \u043f\u0443\u0431\u043b\u0438\u043a\u0443\u0432\u0430\u043d\u043e \u043f\u043e-\u0434\u043e\u0431\u0440\u043e. \u0427\u0438\u0441\u043b\u0430\u0442\u0430 \u0441\u044a\u0432\u043f\u0430\u0434\u0430\u0442 \u0441 Fitdays."

    const-string v5, "The maker\'s algorithm (iComon WLA25, used by Fitdays): fat and muscle in the 5 zones, bone mass, visceral fat, the zone standards \u2014 where nothing better is published. The numbers match Fitdays."

    const-string v6, "iComon WLA25 \u00b7 \u043e\u0442\u0432\u043e\u0440\u0435\u043d \u043f\u043e\u0440\u0442 sacoma-lib \u0438 Fitman (MIT)"

    const-string v7, "\u0431\u0435\u0437 \u043f\u0443\u0431\u043b\u0438\u043a\u0443\u0432\u0430\u043d\u0430 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430"

    const-string v8, "no published validation"

    const/4 v9, 0x0

    const-string v10, ""

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x2

    const-string v2, "\u041d\u043e\u0440\u043c\u0438 \u043d\u0430 \u043a\u043e\u0441\u0442\u0438\u0442\u0435 \u0438 \u043f\u043e\u0434\u043a\u043e\u0436\u043d\u0438\u0442\u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v3, "Bone and subcutaneous ranges"

    const-string v4, "\u0422\u0430\u0431\u043b\u0438\u0446\u0438\u0442\u0435 \u0437\u0430 \u043a\u043e\u0441\u0442\u043d\u0430 \u043c\u0430\u0441\u0430 \u043f\u043e \u0442\u0435\u0433\u043b\u043e \u0438 \u0437\u0430 \u043f\u043e\u0434\u043a\u043e\u0436\u043d\u0438\u0442\u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u2014 \u043e\u0442 \u043a\u0430\u043d\u0442\u0430\u0440\u0438\u0442\u0435 \u0441 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438."

    const-string v5, "The tables for bone mass by weight and subcutaneous fat \u2014 from electrode scales."

    const-string v6, "Tanita / Fitdays \u00b7 \u0442\u0430\u0431\u043b\u0438\u0446\u0438 \u043d\u0430 \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u0438\u0442\u0435"

    const-string v7, "\u0431\u0435\u0437 \u043f\u0443\u0431\u043b\u0438\u043a\u0443\u0432\u0430\u043d\u0430 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430"

    const-string v8, "no published validation"

    const/4 v9, 0x0

    const-string v10, ""

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x3

    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442 \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "Readiness for training"

    const-string v4, "\u0421\u044a\u043e\u0442\u043d\u043e\u0448\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430 \u0438\u043c\u043f\u0435\u0434\u0430\u043d\u0441\u0430 \u043d\u0430 100 \u0438 20 kHz \u0441\u043f\u0440\u044f\u043c\u043e \u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u0430\u0442\u0430 \u0431\u0430\u0437\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430: \u043f\u043e\u0434\u0443\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u043b\u0435\u0434 \u0442\u0435\u0436\u043a\u0430 EMS \u0433\u043e \u0432\u0434\u0438\u0433\u0430 (\u043f\u0440\u0438\u043d\u0446\u0438\u043f\u044a\u0442 \u0435 \u043f\u043e Kyle 2004). \u041f\u0440\u0430\u0433\u043e\u0432\u0435\u0442\u0435 \u221215 % \u0438 \u221230 % \u0441\u0438\u043b\u0430 \u0441\u0430 \u043d\u0430\u0448\u0435 \u043f\u0440\u0430\u0432\u0438\u043b\u043e \u0438 \u0441\u0435 \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0432\u0430\u0442 \u0441 \u043f\u043e\u0432\u0442\u043e\u0440\u043d\u0438 \u043c\u0435\u0440\u0435\u043d\u0438\u044f."

    const-string v5, "The 100 / 20 kHz impedance ratio against the client\'s own baseline: swelling after hard EMS raises it (the principle per Kyle 2004). The \u221215 % and \u221230 % strength steps are our rule, checked on repeated measurements."

    const-string v6, "XEMS \u00b7 \u043f\u043e \u043f\u0440\u0438\u043d\u0446\u0438\u043f\u0430 \u043d\u0430 Kyle 2004"

    const-string v7, "\u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u0430 \u0431\u0430\u0437\u0430 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v8, "each client\'s own baseline"

    const/4 v9, 0x0

    const-string v10, ""

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x3

    const-string v2, "\u0413\u0435\u043e\u043c\u0435\u0442\u0440\u0438\u044f\u0442\u0430 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v3, "The scale\'s geometry"

    const-string v4, "\u0423\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u044f\u0442\u0430 \u043d\u0430 Sun \u0441\u0430 \u0437\u0430 \u043a\u043b\u0430\u0441\u0438\u0447\u0435\u0441\u043a\u043e \u043c\u0435\u0440\u0435\u043d\u0435 \u0440\u044a\u043a\u0430\u2013\u043a\u0440\u0430\u043a; \u043a\u0430\u043d\u0442\u0430\u0440\u044a\u0442 \u043c\u0435\u0440\u0438 \u043f\u043e \u0437\u043e\u043d\u0438. \u0415\u0434\u0438\u043d \u043a\u043e\u0435\u0444\u0438\u0446\u0438\u0435\u043d\u0442 \u0433\u0438 \u0438\u0437\u0440\u0430\u0432\u043d\u044f\u0432\u0430 \u2014 \u043d\u0430\u0433\u043b\u0430\u0441\u0435\u043d \u043f\u043e \u0440\u0435\u0430\u043b\u043d\u043e \u043c\u0435\u0440\u0435\u043d\u0435 \u043d\u0430 \u043c\u044a\u0436, \u0435\u0434\u043d\u0430\u043a\u044a\u0432 \u0437\u0430 \u0434\u0432\u0430\u0442\u0430 \u043f\u043e\u043b\u0430."

    const-string v5, "Sun\'s equations are for the classic hand-to-foot reading; the scale reads by zone. One factor matches them \u2014 set on a real measurement of a man, the same for both sexes."

    const-string v6, "XEMS \u00b7 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u0441\u043f\u0440\u044f\u043c\u043e WLA25"

    const-string v7, "\u043e\u0442\u0432\u043e\u0440\u0435\u043d\u043e \u0437\u0430 \u043f\u043e\u0432\u0435\u0447\u0435 \u0440\u0435\u0444\u0435\u0440\u0435\u043d\u0442\u043d\u0438 \u043c\u0435\u0440\u0435\u043d\u0438\u044f (DXA)"

    const-string v8, "open to more reference measurements (DXA)"

    const/4 v9, 0x0

    const-string v10, ""

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x3

    const-string v2, "\u0415\u0434\u043d\u043e \u043c\u0435\u0440\u0435\u043d\u0435 \u043e\u0442 \u043d\u044f\u043a\u043e\u043b\u043a\u043e \u0441\u0442\u044a\u043f\u0432\u0430\u043d\u0438\u044f"

    const-string v3, "One measurement from several step-ons"

    const-string v4, "\u041f\u0440\u0438 \u043b\u043e\u0448 \u043a\u043e\u043d\u0442\u0430\u043a\u0442, \u043f\u044a\u0440\u0432\u043e \u043c\u0435\u0440\u0435\u043d\u0435, \u0440\u0435\u0437\u0443\u043b\u0442\u0430\u0442 \u0434\u0430\u043b\u0435\u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 \u0434\u043d\u0438 \u0438\u043b\u0438 \u0440\u0430\u0437\u043c\u0438\u043d\u0430\u0432\u0430\u043d\u0435 \u2014 \u043e\u0449\u0435 \u0435\u0434\u043d\u043e \u0441\u0442\u044a\u043f\u0432\u0430\u043d\u0435; \u043b\u043e\u0448\u0438\u0442\u0435 \u043e\u0442\u043f\u0430\u0434\u0430\u0442, \u043e\u0442 \u0434\u0432\u0435 \u2014 \u0441\u0440\u0435\u0434\u043d\u043e\u0442\u043e, \u043e\u0442 \u0442\u0440\u0438 \u2014 \u043c\u0435\u0434\u0438\u0430\u043d\u0430\u0442\u0430."

    const-string v5, "On poor contact, a first measurement, a result far from the last days or a disagreement \u2014 one more step-on; the bad ones out, the mean of two, the median of three."

    const-string v6, "XEMS \u00b7 \u043f\u0440\u0430\u0432\u0438\u043b\u0430 \u043d\u0430 \u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v7, "\u043f\u0440\u043e\u0432\u0435\u0440\u0435\u043d\u043e \u0432 \u0441\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f"

    const-string v8, "checked in simulation"

    const/4 v9, 0x0

    const-string v10, ""

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    const/4 v1, 0x3

    const-string v2, "\u0417\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e \u0442\u0435\u0433\u043b\u043e"

    const-string v3, "Healthy weight"

    const-string v4, "\u0421\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u043f\u0440\u0438 \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u0435\u043d % \u043c\u0430\u0437\u043d\u0438\u043d\u0438 (\u043f\u043e Gallagher 2000) \u2014 \u043d\u0435 \u0418\u0422\u041c 22."

    const-string v5, "The client\'s own muscle at a healthy fat % (per Gallagher 2000) \u2014 not BMI 22."

    const-string v6, "XEMS \u00b7 \u0438\u0437\u0432\u0435\u0434\u0435\u043d\u043e \u043e\u0442 Gallagher 2000 \u0438 Schutz 2002"

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const-string v10, ""

    invoke-direct/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-object v11
.end method

.method public static counts()[I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    .line 182
    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->tier:I

    if-nez v5, :cond_2b

    .line 183
    add-int/lit8 v3, v3, 0x1

    .line 184
    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->n:I

    add-int/2addr v0, v1

    :goto_20
    move v1, v0

    .line 186
    goto :goto_b

    .line 187
    :cond_22
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0

    :cond_2b
    move v0, v1

    goto :goto_20
.end method

.method static open(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 207
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 211
    :goto_8
    return-void

    .line 208
    :catch_9
    move-exception v0

    .line 209
    const-string v1, "ScaleSources.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public static tierBg(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    if-nez p0, :cond_5

    const-string v0, "\u041f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0435"

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string v0, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442"

    goto :goto_4

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string v0, "\u041f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b"

    goto :goto_4

    :cond_11
    const-string v0, "XEMS"

    goto :goto_4
.end method

.method public static tierColor(I)I
    .registers 2

    .prologue
    .line 41
    if-nez p0, :cond_6

    const v0, -0xdd3aa2

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    const v0, -0xc74208

    goto :goto_5

    :cond_d
    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    const v0, -0xa61f5

    goto :goto_5

    :cond_14
    const v0, -0x587406

    goto :goto_5
.end method

.method public static tierEn(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    if-nez p0, :cond_5

    const-string v0, "Study"

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string v0, "Standard"

    goto :goto_4

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string v0, "Maker"

    goto :goto_4

    :cond_11
    const-string v0, "XEMS"

    goto :goto_4
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static withButton(Landroid/app/Activity;Landroid/widget/TextView;Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;)Landroid/widget/LinearLayout;
    .registers 10

    .prologue
    const/high16 v6, 0x41800000    # 16.0f

    .line 353
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 354
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    const-string v1, "\u041d\u0430\u0443\u0447\u043d\u0430 \u043e\u0441\u043d\u043e\u0432\u0430 \u2014 \u043e\u0442\u043a\u044a\u0434\u0435 \u0441\u0430 \u0447\u0438\u0441\u043b\u0430\u0442\u0430 \u203a"

    const-string v2, "Scientific basis \u2014 where the numbers come from \u203a"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 359
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42500000    # 52.0f

    .line 361
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 362
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 363
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    return-object v0
.end method


# virtual methods
.method big(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41400000    # 12.0f

    .line 269
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 270
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 271
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const/high16 v2, 0x41e00000    # 28.0f

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, p3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 272
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, p2, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    return-object v0
.end method

.method build()V
    .registers 12

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 295
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->portrait(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->portrait:Z

    .line 296
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->grid:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 297
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->portrait:Z

    if-eqz v0, :cond_67

    const/4 v0, 0x1

    move v1, v0

    .line 298
    :goto_18
    const/4 v2, 0x0

    .line 300
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v3

    :cond_22
    :goto_22
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    .line 301
    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->filter:I

    if-ltz v5, :cond_38

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->tier:I

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->filter:I

    if-ne v5, v8, :cond_22

    .line 304
    :cond_38
    rem-int v5, v6, v1

    if-nez v5, :cond_51

    .line 305
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 306
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->grid:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    if-nez v6, :cond_6a

    move v2, v3

    :goto_49
    invoke-static {v9, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v5

    .line 308
    :cond_51
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->card(Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;)Landroid/widget/LinearLayout;

    move-result-object v5

    rem-int v0, v6, v1

    if-nez v0, :cond_6c

    move v0, v3

    :goto_5a
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v10, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    .line 310
    goto :goto_22

    .line 297
    :cond_67
    const/4 v0, 0x2

    move v1, v0

    goto :goto_18

    :cond_6a
    move v2, v4

    .line 306
    goto :goto_49

    :cond_6c
    move v0, v4

    .line 308
    goto :goto_5a

    .line 311
    :cond_6e
    if-eqz v2, :cond_84

    rem-int v0, v6, v1

    if-eqz v0, :cond_84

    .line 312
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v10, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    :cond_84
    return-void
.end method

.method card(Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;)Landroid/widget/LinearLayout;
    .registers 14

    .prologue
    const/high16 v7, 0x40800000    # 4.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 318
    iget v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->tier:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierColor(I)I

    move-result v2

    .line 319
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x5a

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 321
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 322
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->bg:Z

    if-eqz v0, :cond_171

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->topicBg:Ljava/lang/String;

    :goto_48
    const/high16 v5, 0x41800000    # 16.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v0, v5, v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v10, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->bg:Z

    if-eqz v0, :cond_175

    iget v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->tier:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierBg(I)Ljava/lang/String;

    move-result-object v0

    :goto_65
    invoke-static {v4, v0, v9, v2, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 325
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v6

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 326
    const/16 v4, 0x22

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0xa0

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->bg:Z

    if-eqz v0, :cond_17d

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->useBg:Ljava/lang/String;

    :goto_aa
    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v0, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 330
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 331
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->cite:Ljava/lang/String;

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v3, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 333
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 335
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->bg:Z

    if-eqz v0, :cond_181

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->whoBg:Ljava/lang/String;

    .line 337
    :goto_ed
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_fb

    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->doi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_159

    .line 338
    :cond_fb
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->doi:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_188

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_185

    const-string v0, "  \u00b7  "

    :goto_11b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "DOI "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->doi:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  \u2197"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_135
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->doi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18b

    const/16 v0, 0xe6

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    .line 338
    :goto_14b
    invoke-static {v3, v4, v9, v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    .line 340
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 338
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    :cond_159
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->doi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_170

    .line 343
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$OpenDoi;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->doi:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$OpenDoi;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 346
    :cond_170
    return-object v1

    .line 322
    :cond_171
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->topicEn:Ljava/lang/String;

    goto/16 :goto_48

    .line 324
    :cond_175
    iget v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->tier:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierEn(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_65

    .line 329
    :cond_17d
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->useEn:Ljava/lang/String;

    goto/16 :goto_aa

    .line 336
    :cond_181
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->whoEn:Ljava/lang/String;

    goto/16 :goto_ed

    .line 338
    :cond_185
    const-string v0, ""

    goto :goto_11b

    .line 339
    :cond_188
    const-string v0, ""

    goto :goto_135

    :cond_18b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_14b
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method filterChips()V
    .registers 10

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->chips:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 280
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v3, "All"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierBg(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierBg(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierBg(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "XEMS"

    aput-object v1, v0, v7

    .line 281
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->bg:Z

    if-nez v1, :cond_4e

    .line 282
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "All"

    aput-object v1, v0, v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierEn(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierEn(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierEn(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "XEMS"

    aput-object v1, v0, v7

    :cond_4e
    move v1, v2

    .line 284
    :goto_4f
    array-length v3, v0

    if-ge v1, v3, :cond_91

    .line 285
    add-int/lit8 v6, v1, -0x1

    .line 286
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    aget-object v8, v0, v1

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->filter:I

    if-ne v3, v6, :cond_8a

    move v4, v5

    :goto_5d
    if-gez v6, :cond_8c

    const v3, -0x6b5c48

    :goto_62
    invoke-static {v7, v8, v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v3

    .line 287
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Filter;

    invoke-direct {v4, p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Filter;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleSources;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x42400000    # 48.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 289
    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 290
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->chips:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_8a
    move v4, v2

    .line 286
    goto :goto_5d

    :cond_8c
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierColor(I)I

    move-result v3

    goto :goto_62

    .line 292
    :cond_91
    return-void
.end method

.method show()V
    .registers 11

    .prologue
    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v8, 0x41600000    # 14.0f

    const/16 v5, 0xa

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const-string v1, "\u041d\u0430\u0443\u0447\u043d\u0430 \u043e\u0441\u043d\u043e\u0432\u0430"

    const-string v2, "Scientific basis"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u041e\u0442\u043a\u044a\u0434\u0435 \u0438\u0434\u0432\u0430 \u0432\u0441\u044f\u043a\u043e \u0447\u0438\u0441\u043b\u043e \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430 \u2014 \u0438 \u043a\u043e\u043b\u043a\u043e \u0434\u0430 \u043c\u0443 \u0432\u044f\u0440\u0432\u0430\u043c\u0435"

    const-string v3, "Where every number of the scale comes from \u2014 and how far to trust it"

    .line 220
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x500

    .line 219
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 223
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->counts()[I

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 225
    aget v2, v0, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u0440\u0435\u0446\u0435\u043d\u0437\u0438\u0440\u0430\u043d\u0438 \u043f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0438\u044f"

    const-string v4, "peer-reviewed studies"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, -0xdd3aa2

    invoke-virtual {p0, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->big(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    .line 226
    invoke-static {v7, v6, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 225
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u043d\u0430\u0434 "

    const-string v4, "over "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v0, v0, v3

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->bg:Z

    if-eqz v0, :cond_1ea

    const-string v0, " 000"

    :goto_75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u0434\u0443\u0448\u0438 \u0432 \u0442\u0435\u0445\u043d\u0438\u0442\u0435 \u0440\u0435\u0444\u0435\u0440\u0435\u043d\u0442\u043d\u0438 \u043c\u0435\u0440\u0435\u043d\u0438\u044f"

    const-string v3, "people in their reference measurements"

    .line 228
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xc74208

    .line 227
    invoke-virtual {p0, v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->big(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    .line 229
    invoke-static {v7, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 227
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DXA \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u042f\u041c\u0420"

    const-string v3, "MRI"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 4C"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u0437\u043b\u0430\u0442\u043d\u0438\u044f\u0442 \u0441\u0442\u0430\u043d\u0434\u0430\u0440\u0442, \u0441 \u043a\u043e\u0439\u0442\u043e \u0441\u0430 \u0441\u0432\u0435\u0440\u0435\u043d\u0438"

    const-string v3, "the gold standards they were checked against"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0x587406

    invoke-virtual {p0, v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->big(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    .line 231
    invoke-static {v7, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 230
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->chips:Landroid/widget/LinearLayout;

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->chips:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->grid:Landroid/widget/LinearLayout;

    .line 237
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->grid:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 240
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v2

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 241
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const-string v2, "\u0413\u0440\u0430\u043d\u0438\u0446\u0438 \u2014 \u0447\u0435\u0441\u0442\u043d\u043e"

    const-string v3, "Limits \u2014 honestly"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const-string v2, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442 \u0441 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438 \u0435 \u043e\u0440\u0438\u0435\u043d\u0442\u0438\u0440, \u043d\u0435 \u043c\u0435\u0434\u0438\u0446\u0438\u043d\u0441\u043a\u043e \u0438\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435. \u0417\u0430 \u043e\u0442\u0434\u0435\u043b\u0435\u043d \u0447\u043e\u0432\u0435\u043a \u043e\u0446\u0435\u043d\u043a\u0430\u0442\u0430 \u043d\u0430 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d\u043e \u0441\u0435 \u043e\u0442\u043a\u043b\u043e\u043d\u044f\u0432\u0430 \u0441 \u043d\u044f\u043a\u043e\u043b\u043a\u043e \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u043d\u0438 \u043f\u0443\u043d\u043a\u0442\u0430 \u043e\u0442 DXA, \u0430 \u0432\u043e\u0434\u0430\u0442\u0430 \u0438 \u043a\u043e\u043d\u0442\u0430\u043a\u0442\u044a\u0442 \u043c\u0435\u0441\u0442\u044f\u0442 \u0438\u043c\u043f\u0435\u0434\u0430\u043d\u0441\u0430 \u043e\u0442 \u0434\u0435\u043d \u043d\u0430 \u0434\u0435\u043d. \u0417\u0430\u0442\u043e\u0432\u0430 \u043c\u0435\u0440\u0438\u043c \u043f\u043e\u0432\u0442\u043e\u0440\u043d\u043e \u043f\u0440\u0438 \u0441\u044a\u043c\u043d\u0435\u043d\u0438\u0435, \u0438\u0437\u0433\u043b\u0430\u0436\u0434\u0430\u043c\u0435 \u043c\u0435\u0436\u0434\u0443 \u043c\u0435\u0440\u0435\u043d\u0438\u044f \u0438 \u0433\u043b\u0435\u0434\u0430\u043c\u0435 \u0442\u0435\u043d\u0434\u0435\u043d\u0446\u0438\u044f\u0442\u0430 \u2014 \u0442\u044f \u0435 \u043f\u043e-\u0442\u043e\u0447\u043d\u0430 \u043e\u0442 \u0435\u0434\u043d\u043e \u0447\u0438\u0441\u043b\u043e."

    const-string v3, "An electrode scale is a guide, not a medical test. For one person the fat estimate is usually a few percentage points off DXA, and water and contact move the impedance from day to day. So we measure again when in doubt, smooth between weigh-ins and read the trend \u2014 it is more accurate than one number."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v8, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 250
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 251
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->filterChips()V

    .line 255
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->build()V

    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_193

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Turn;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Turn;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleSources;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 259
    :cond_193
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u0438\u0437\u0442\u043e\u0447\u043d\u0438\u043a \u0441 DOI \u2014 \u043e\u0442\u0432\u0430\u0440\u044f \u043f\u0443\u0431\u043b\u0438\u043a\u0430\u0446\u0438\u044f\u0442\u0430."

    const-string v3, "Tap a source with a DOI \u2014 it opens the paper."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->a:Landroid/app/Activity;

    const-string v1, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v2, "Close"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 263
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CloseSheet;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CloseSheet;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v3

    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 266
    return-void

    .line 227
    :cond_1ea
    const-string v0, ",000"

    goto/16 :goto_75
.end method
