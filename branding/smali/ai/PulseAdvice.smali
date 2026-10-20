.class public final Lcom/isaigu/gymapp/ai/PulseAdvice;
.super Ljava/lang/Object;
.source "PulseAdvice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;,
        Lcom/isaigu/gymapp/ai/PulseAdvice$Input;
    }
.end annotation


# static fields
.field public static final CARDIO:I = 0x2

.field public static final MAIN:I = 0x0

.field public static final MASSAGE:I = 0x3

.field public static final MODES:I = 0x4

.field public static final MUSCLE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static all(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)[Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 85
    new-array v1, v3, [Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;

    .line 86
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_f

    .line 87
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->of(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;I)Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;

    move-result-object v2

    aput-object v2, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 89
    :cond_f
    return-object v1
.end method

.method static cardio(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V
    .registers 6

    .prologue
    const/16 v2, 0x3c

    .line 158
    const/4 v0, 0x7

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 159
    const/16 v0, 0xf

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 160
    const/4 v0, 0x1

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_42

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    if-ge v0, v2, :cond_42

    .line 163
    const/16 v0, 0x9

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 164
    const-string v0, "\u0414\u043e\u0431\u0440\u0430 \u0444\u043e\u0440\u043c\u0430: 9 Hz \u2014 \u043f\u043e-\u0431\u044a\u0440\u0437\u043e \u0442\u0435\u043c\u043f\u043e"

    const-string v1, "Fit: 9 Hz \u2014 a faster tempo"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_24
    :goto_24
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->readiness:D

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3c

    .line 173
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 174
    const-string v0, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043d\u0435 \u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0435\u043d \u2014 +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v1, "Scale: not recovered \u2014 +1 s pause"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_3c
    const/16 v0, 0x15e

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->depth(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V

    .line 177
    return-void

    .line 165
    :cond_42
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eq v0, v1, :cond_4c

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    if-lt v0, v2, :cond_24

    .line 166
    :cond_4c
    const/4 v0, 0x5

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 167
    const/16 v0, 0xa

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 168
    const/4 v0, 0x2

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 169
    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    if-lt v0, v2, :cond_66

    const-string v0, "60+: 5 Hz, 10 : 2 s"

    .line 170
    :goto_5c
    iget v1, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    if-lt v1, v2, :cond_69

    const-string v1, "60+: 5 Hz, 10 : 2 s"

    .line 169
    :goto_62
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_66
    const-string v0, "\u041d\u0430\u0447\u0438\u043d\u0430\u0435\u0449: 5 Hz, 10 : 2 s"

    goto :goto_5c

    .line 170
    :cond_69
    const-string v1, "Beginner: 5 Hz, 10 : 2 s"

    goto :goto_62
.end method

.method static depth(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V
    .registers 7

    .prologue
    const/16 v1, 0x12c

    .line 227
    iput p2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 228
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->sensitive:Z

    if-eqz v0, :cond_12

    .line 229
    iput v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 230
    const-string v0, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d \u043a\u044a\u043c \u0442\u043e\u043a\u0430: 300 \u00b5s"

    const-string v1, "Sensitive to current: 300 \u00b5s"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_11
    :goto_11
    return-void

    .line 231
    :cond_12
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->fatHigh(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 232
    const/16 v0, 0x190

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u0437\u043d\u0438\u043d\u0438 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " % \u2014 400 \u00b5s \u0441\u0442\u0438\u0433\u0430 \u043f\u0440\u0435\u0437 \u043c\u0430\u0437\u043d\u0438\u043d\u0430\u0442\u0430"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale: fat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    .line 234
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u2014 400 \u00b5s reaches through the fat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 235
    :cond_5e
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->fatLow(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 236
    iput v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u043b\u043a\u043e \u043c\u0430\u0437\u043d\u0438\u043d\u0438 ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %) \u2014 300 \u00b5s \u0441\u0442\u0438\u0433\u0430"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale: little fat ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    .line 238
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %) \u2014 300 \u00b5s is enough"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11
.end method

.method static fatHigh(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Z
    .registers 5

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->female:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x21

    :goto_10
    int-to-double v0, v0

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_1a

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/16 v0, 0x19

    goto :goto_10

    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method static fatLow(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Z
    .registers 5

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->female:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x14

    :goto_10
    int-to-double v0, v0

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_1a

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/16 v0, 0xc

    goto :goto_10

    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method static goalBg(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_7

    const-string v0, "\u043c\u0430\u0441\u0430\u0436"

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_e

    const-string v0, "\u0434\u0440\u0435\u043d\u0430\u0436"

    goto :goto_6

    :cond_e
    const-string v0, "\u0430\u043d\u0442\u0438\u0446\u0435\u043b\u0443\u043b\u0438\u0442"

    goto :goto_6
.end method

.method static goalEn(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 305
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_7

    const-string v0, "massage"

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_e

    const-string v0, "drainage"

    goto :goto_6

    :cond_e
    const-string v0, "anti-cellulite"

    goto :goto_6
.end method

.method static main(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V
    .registers 5

    .prologue
    .line 119
    const/16 v0, 0x28

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 121
    const/4 v0, 0x7

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->phz:I

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_28

    .line 123
    const/16 v0, 0x32

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 124
    const-string v0, "\u0426\u0435\u043b \u0442\u043e\u043d\u0443\u0441: 50 Hz \u2014 \u043f\u043e-\u043f\u043b\u044a\u0442\u043d\u043e \u0441\u0432\u0438\u0432\u0430\u043d\u0435"

    const-string v1, "Goal tone: 50 Hz \u2014 a firmer contraction"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1b
    :goto_1b
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->rhythm(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V

    .line 133
    const/16 v0, 0x15e

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->depth(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V

    .line 134
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/PulseAdvice;->rest(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    .line 135
    return-void

    .line 125
    :cond_28
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v0, v1, :cond_32

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatObese:Z

    if-eqz v0, :cond_3a

    .line 126
    :cond_32
    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435: 40 Hz + \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 7 Hz \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 (\u043a\u0440\u044a\u0432\u043e\u0442\u043e\u043a, \u0440\u0430\u0437\u0445\u043e\u0434)"

    const-string v1, "Fat loss: 40 Hz + a 7 Hz second impulse in the pause (blood flow, burn)"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 128
    :cond_3a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->passiveGoal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 129
    const/16 v0, 0x1e

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0426\u0435\u043b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/PulseAdvice;->goalBg(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \u043f\u043e-\u043c\u0435\u043a\u043e \u2014 30 Hz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Goal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/PulseAdvice;->goalEn(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": gentler \u2014 30 Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method static massage(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_1e

    .line 183
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 184
    const/16 v0, 0x12c

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 185
    const/4 v0, 0x3

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 186
    const/4 v0, 0x5

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 187
    const-string v0, "\u0426\u0435\u043b \u0434\u0440\u0435\u043d\u0430\u0436: 1 Hz, 3 : 5 s \u2014 \u043b\u0438\u043c\u0444\u0435\u043d \u0434\u0440\u0435\u043d\u0430\u0436"

    const-string v1, "Goal drainage: 1 Hz, 3 : 5 s \u2014 lymph drainage"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1d
    :goto_1d
    return-void

    .line 190
    :cond_1e
    const/16 v0, 0x78

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 191
    const/16 v0, 0x96

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 192
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 193
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 194
    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_3b

    .line 195
    const/16 v0, 0x55

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 196
    const-string v0, "60+: \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e 85 Hz"

    const-string v1, "60+: at most 85 Hz"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_3b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->sensitive:Z

    if-eqz v0, :cond_4b

    .line 199
    const/16 v0, 0x64

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 200
    const-string v0, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d \u043a\u044a\u043c \u0442\u043e\u043a\u0430: 100 \u00b5s"

    const-string v1, "Sensitive to current: 100 \u00b5s"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 201
    :cond_4b
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->fatHigh(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 202
    const/16 v0, 0xc8

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u0437\u043d\u0438\u043d\u0438 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " % \u2014 200 \u00b5s \u0441\u0442\u0438\u0433\u0430 \u043f\u043e-\u0434\u044a\u043b\u0431\u043e\u043a\u043e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale: fat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    .line 204
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u2014 200 \u00b5s reaches deeper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method static muscle(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V
    .registers 5

    .prologue
    const/16 v2, 0x46

    .line 139
    const/16 v0, 0x50

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 141
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->muscleLow:Z

    if-eqz v0, :cond_23

    .line 142
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 143
    const-string v0, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 70 Hz, \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u0443\u043c\u043e\u0440\u0430"

    const-string v1, "Scale: little muscle \u2014 70 Hz, less fatigue"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_16
    :goto_16
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->rhythm(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V

    .line 152
    const/16 v0, 0x15e

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->depth(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V

    .line 153
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/PulseAdvice;->rest(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    .line 154
    return-void

    .line 144
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_45

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    if-ltz v0, :cond_45

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_45

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_45

    .line 145
    const/16 v0, 0x55

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 146
    const-string v0, "\u0414\u043e\u0431\u0440\u0430 \u0444\u043e\u0440\u043c\u0430 + \u0442\u043e\u043d\u0443\u0441: 85 Hz"

    const-string v1, "Fit + tone: 85 Hz"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 147
    :cond_45
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_16

    .line 148
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 149
    const-string v0, "\u041d\u0430\u0447\u0438\u043d\u0430\u0435\u0449: 70 Hz"

    const-string v1, "Beginner: 70 Hz"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static of(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;I)Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;
    .registers 3

    .prologue
    .line 93
    if-nez p0, :cond_7

    .line 94
    new-instance p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;-><init>()V

    .line 96
    :cond_7
    new-instance v0, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;-><init>(I)V

    .line 97
    packed-switch p1, :pswitch_data_22

    .line 108
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->main(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    .line 111
    :goto_12
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->safe(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    .line 112
    return-object v0

    .line 99
    :pswitch_16
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->muscle(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    goto :goto_12

    .line 102
    :pswitch_1a
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->cardio(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    goto :goto_12

    .line 105
    :pswitch_1e
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->massage(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    goto :goto_12

    .line 97
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method

.method static passiveGoal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z
    .registers 2

    .prologue
    .line 297
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static rest(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 244
    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->sessions:I

    if-ltz v0, :cond_80

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->sessions:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_80

    .line 245
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 246
    iput-boolean v4, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 247
    const-string v0, "\u041f\u044a\u0440\u0432\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438: +2 s \u043f\u0430\u0443\u0437\u0430, \u0431\u0435\u0437 \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v1, "First trainings: +2 s pause, no second impulse"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_19
    :goto_19
    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_2c

    .line 253
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 254
    const-string v0, "60+: +2 s \u043f\u0430\u0443\u0437\u0430"

    const-string v1, "60+: +2 s pause"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_2c
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->readiness:D

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a1

    .line 257
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->readiness:D

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpg-double v0, v0, v2

    if-gez v0, :cond_9f

    const/4 v0, 0x2

    .line 258
    :goto_43
    iget v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 259
    iput-boolean v4, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043d\u0435 \u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0435\u043d \u2014 +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s \u043f\u0430\u0443\u0437\u0430, \u0431\u0435\u0437 \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scale: not recovered \u2014 +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s pause, no second impulse"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_7f
    :goto_7f
    return-void

    .line 248
    :cond_80
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->hoursSinceLast:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_19

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->hoursSinceLast:D

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_19

    .line 249
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 250
    const-string v0, "\u041f\u043e\u0434 72 \u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430: +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v1, "Under 72 h since the last: +1 s pause"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 257
    :cond_9f
    const/4 v0, 0x1

    goto :goto_43

    .line 262
    :cond_a1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->muscleLow:Z

    if-eqz v0, :cond_7f

    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    if-nez v0, :cond_7f

    .line 263
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 264
    const-string v0, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v1, "Scale: little muscle \u2014 +1 s pause"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f
.end method

.method static rhythm(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V
    .registers 7

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    .line 212
    iput p2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 213
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_18

    .line 215
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 216
    iput v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 217
    const-string v0, "\u041d\u0430\u0447\u0438\u043d\u0430\u0435\u0449: 4 : 6 s"

    const-string v1, "Beginner: 4 : 6 s"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_17
    :goto_17
    return-void

    .line 218
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_17

    .line 219
    iput v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 220
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 221
    const-string v0, "\u0414\u043e\u0431\u0440\u0430 \u0444\u043e\u0440\u043c\u0430: 6 : 4 s"

    const-string v1, "Fit: 6 : 4 s"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method static safe(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V
    .registers 12

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    const/16 v0, 0x8

    new-array v5, v0, [I

    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    aput v0, v5, v2

    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    aput v0, v5, v1

    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    aput v0, v5, v7

    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    aput v0, v5, v8

    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    if-eqz v0, :cond_72

    move v0, v1

    :goto_28
    aput v0, v5, v9

    const/4 v0, 0x5

    iget v6, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->phz:I

    aput v6, v5, v0

    const/4 v0, 0x6

    const/16 v6, 0x64

    aput v6, v5, v0

    const/4 v0, 0x7

    aput v2, v5, v0

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    invoke-static {v5, v0, v3, v4}, Lcom/isaigu/gymapp/ai/SafeLimits;->apply([IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)[I

    move-result-object v0

    .line 273
    aget v5, v0, v2

    iput v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 274
    aget v5, v0, v1

    iput v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 275
    aget v5, v0, v7

    iput v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 276
    aget v5, v0, v8

    iput v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 277
    aget v5, v0, v9

    if-ne v5, v1, :cond_74

    iget v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    if-eq v5, v1, :cond_74

    :goto_55
    iput-boolean v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 278
    iget-boolean v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    if-eqz v1, :cond_5e

    const/4 v1, 0x5

    aget v2, v0, v1

    :cond_5e
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->phz:I

    .line 279
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_71

    .line 280
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_71
    return-void

    :cond_72
    move v0, v2

    .line 272
    goto :goto_28

    :cond_74
    move v1, v2

    .line 277
    goto :goto_55
.end method
