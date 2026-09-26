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
    .registers 13

    .line 13
    const-string v0, "pregnancy"

    const-string v1, "implant"

    const-string v2, "cardiovascular"

    const-string v3, "circulation"

    const-string v4, "hernia"

    const-string v5, "cancer"

    const-string v6, "bleeding"

    const-string v7, "epilepsy"

    const-string v8, "neurological"

    const-string v9, "recent_surgery"

    const-string v10, "skin_lesion"

    const-string v11, "kidney"

    const-string v12, "tuberculosis"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Lcom/isaigu/gymapp/ai/AiScreening$Result;
    .registers 7

    .line 41
    new-instance v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiScreening$Result;-><init>()V

    .line 42
    if-nez p0, :cond_f

    .line 43
    iget-object p0, v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v1, "no_input"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-object v0

    .line 46
    :cond_f
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1c

    .line 47
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v2, "age_under_18"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 50
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v2, "invalid_combination"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_2d
    iget-object p0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 53
    if-nez p0, :cond_39

    .line 54
    iget-object p0, v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v1, "no_screening"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object v0

    .line 57
    :cond_39
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 59
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contra:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_7d
    goto :goto_43

    .line 62
    :cond_7e
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->feverOrIllness:Z

    if-eqz v1, :cond_89

    .line 63
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v2, "fever"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_89
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->alcoholOrStress48h:Z

    if-eqz v1, :cond_94

    .line 66
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v2, "alcohol_stress"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_94
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    if-eqz v1, :cond_9f

    .line 69
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    const-string v2, "arrhythmia"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_9f
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->ateLast2h:Z

    if-nez v1, :cond_aa

    .line 72
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    const-string v2, "not_eaten"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_aa
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hydrated:Z

    if-nez v1, :cond_b5

    .line 75
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    const-string v2, "not_hydrated"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_b5
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v1, :cond_c0

    .line 78
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    const-string v2, "hr_medication"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_c0
    iget-boolean p0, p0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->restedLast10min:Z

    if-nez p0, :cond_cb

    .line 81
    iget-object p0, v0, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    const-string v1, "not_rested"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_cb
    return-object v0
.end method
