.class public final Lcom/isaigu/gymapp/ai/AiScreening;
.super Ljava/lang/Object;
.source "AiScreening.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiScreening$Result;
    }
.end annotation


# static fields
.field public static final CONTRAINDICATIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 13
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pregnancy"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "implant"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cardiovascular"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "circulation"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hernia"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cancer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bleeding"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "epilepsy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "neurological"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "recent_surgery"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "skin_lesion"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "kidney"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "tuberculosis"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Lcom/isaigu/gymapp/ai/AiScreening$Result;
    .registers 8

    .prologue
    .line 41
    new-instance v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiScreening$Result;-><init>()V

    .line 42
    if-nez p0, :cond_10

    .line 43
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v1, "no_input"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 83
    :goto_f
    return-object v0

    .line 46
    :cond_10
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1d

    .line 47
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v1, "age_under_18"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 50
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v1, "invalid_combination"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_2e
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 53
    if-nez v3, :cond_3b

    .line 54
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v1, "no_screening"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 55
    goto :goto_f

    .line 57
    :cond_3b
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_45
    :goto_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 59
    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contra:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 62
    :cond_82
    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->feverOrIllness:Z

    if-eqz v0, :cond_8d

    .line 63
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v1, "fever"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_8d
    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->alcoholOrStress48h:Z

    if-eqz v0, :cond_98

    .line 66
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v1, "alcohol_stress"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_98
    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    if-eqz v0, :cond_a3

    .line 69
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v1, "arrhythmia"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_a3
    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->ateLast2h:Z

    if-nez v0, :cond_ae

    .line 72
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    const-string v1, "not_eaten"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_ae
    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hydrated:Z

    if-nez v0, :cond_b9

    .line 75
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    const-string v1, "not_hydrated"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_b9
    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v0, :cond_c4

    .line 78
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    const-string v1, "hr_medication"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_c4
    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->restedLast10min:Z

    if-nez v0, :cond_cf

    .line 81
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    const-string v1, "not_rested"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cf
    move-object v0, v2

    .line 83
    goto/16 :goto_f
.end method
