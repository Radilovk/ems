.class public final Lcom/isaigu/gymapp/ai/AutoCues;
.super Ljava/lang/Object;
.source "AutoCues.java"


# static fields
.field public static final NEXT_AHEAD_S:I = 0x14


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static effect(Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)Ljava/lang/String;
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 158
    if-eqz p1, :cond_a

    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_13

    .line 159
    :cond_a
    const-string v0, "\u041f\u0430\u0443\u0437\u0430 \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e\u0447\u0438\u0432\u0430\u0442, \u0441\u044a\u0434\u043e\u0432\u0435\u0442\u0435 \u0441\u0435 \u043f\u044a\u043b\u043d\u044f\u0442."

    const-string v1, "Pause \u2014 the muscles rest, the vessels refill."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_12
    :goto_12
    return-object v0

    .line 162
    :cond_13
    if-eqz p0, :cond_79

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-eqz v0, :cond_79

    .line 163
    const-string v0, "\u0417\u043e\u043d\u0438\u0442\u0435 \u0441\u0435 \u0441\u044a\u043a\u0440\u0430\u0449\u0430\u0432\u0430\u0442 \u0435\u0434\u043d\u0430 \u0441\u043b\u0435\u0434 \u0434\u0440\u0443\u0433\u0430 \u2014 \u043a\u0430\u0442\u043e \u0440\u044a\u0446\u0435, \u043a\u043e\u0438\u0442\u043e \u0438\u0437\u0441\u0442\u0438\u0441\u043a\u0432\u0430\u0442 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0442\u0430 \u043a\u044a\u043c \u0441\u044a\u0440\u0446\u0435\u0442\u043e."

    const-string v1, "The zones contract one after another \u2014 like hands squeezing the fluid towards the heart."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_21
    if-eqz p2, :cond_12

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v1, :cond_12

    iget-wide v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_12

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u0412 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 \u043b\u0435\u043a 2-\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz) \u0434\u044a\u0440\u0436\u0438 \u043a\u0440\u044a\u0432\u0442\u0430 \u0432 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " In the pause a light 2nd impulse ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz) keeps the blood moving."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 165
    :cond_79
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_ae

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz \u2014 \u0440\u0435\u0434\u043a\u0438 \u043e\u0442\u0434\u0435\u043b\u043d\u0438 \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0438\u044f: \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430, \u043a\u0440\u044a\u0432\u0442\u0430 \u0442\u0435\u0447\u0435 \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u043e; \u0442\u0430\u0437\u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430 \u0431\u043e\u043b\u043a\u0430\u0442\u0430."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz \u2014 sparse single twitches: the muscle lets go, blood flows freely; this frequency dampens pain."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 168
    :cond_ae
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_e4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz \u2014 \u0440\u0438\u0442\u043c\u0438\u0447\u043d\u0438 \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0438\u044f, \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043f\u043e\u043c\u043f\u0430: \u0434\u0432\u0438\u0436\u0430\u0442 \u043a\u0440\u044a\u0432\u0442\u0430 \u0438 \u043b\u0438\u043c\u0444\u0430\u0442\u0430, \u0431\u0430\u0432\u043d\u0438\u0442\u0435 \u0432\u043b\u0430\u043a\u043d\u0430 \u0433\u043e\u0440\u044f\u0442 \u0435\u043d\u0435\u0440\u0433\u0438\u044f, \u0431\u0435\u0437 \u0434\u0430 \u0441\u0435 \u0443\u043c\u043e\u0440\u044f\u0432\u0430\u0442."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz \u2014 rhythmic twitches, a muscle pump: they move blood and lymph, the slow fibres burn energy without tiring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 171
    :cond_e4
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/16 v1, 0x28

    if-gt v0, v1, :cond_11a

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz \u2014 \u043c\u0435\u043a\u043e \u0441\u043b\u044f\u0442\u043e \u0441\u044a\u043a\u0440\u0430\u0449\u0435\u043d\u0438\u0435: \u0438\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u043e\u0441\u0442 \u0438 \u0442\u043e\u043d\u0443\u0441 \u0431\u0435\u0437 \u0441\u0438\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz \u2014 a soft fused contraction: endurance and tone without strong fatigue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 175
    :cond_11a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz \u2014 \u043f\u044a\u043b\u043d\u043e \u0441\u044a\u043a\u0440\u0430\u0449\u0435\u043d\u0438\u0435: \u0432\u043a\u043b\u044e\u0447\u0432\u0430 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0432\u043b\u0430\u043a\u043d\u0430 \u043d\u0430\u0432\u0435\u0434\u043d\u044a\u0436 \u2014 \u0442\u043e\u043d\u0443\u0441 \u0438 \u0441\u0438\u043b\u0430; \u043f\u0430\u0443\u0437\u0430\u0442\u0430 \u0432\u0440\u044a\u0449\u0430 \u043a\u0440\u044a\u0432\u0442\u0430."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz \u2014 a full contraction: the most fibres at once \u2014 tone and strength; the pause lets the blood back."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21
.end method

.method static faceGoal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 121
    const-string v0, "face_drain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 122
    const-string v0, "OPEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 123
    const-string v0, "\u041e\u0442\u0432\u0430\u0440\u044f\u043d\u0435: \u043f\u044a\u0440\u0432\u043e \u0441\u0435 \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0432\u0430 \u043f\u044a\u0442\u044f\u0442 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430, \u0437\u0430 \u0434\u0430 \u0438\u043c\u0430 \u043a\u044a\u0434\u0435 \u0434\u0430 \u0441\u0435 \u043e\u0442\u0442\u0435\u0447\u0435 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0442\u0430."

    const-string v1, "Opening: the way under the chin moves first, so the fluid has somewhere to go."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_18
    return-object v0

    .line 125
    :cond_19
    const-string v0, "\u041b\u0438\u043c\u0444\u043d\u0430 \u0432\u044a\u043b\u043d\u0430: \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441\u0435 \u0441\u0442\u044f\u0433\u0430\u0442 \u0435\u0434\u0438\u043d \u0441\u043b\u0435\u0434 \u0434\u0440\u0443\u0433 \u043e\u0442 \u043d\u043e\u0441\u0430 \u043a\u044a\u043c \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430 \u0438 \u0443\u0445\u043e\u0442\u043e \u0438 \u0438\u0437\u043f\u043e\u043c\u043f\u0432\u0430\u0442 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0430\u0442\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442."

    const-string v1, "Lymph wave: the muscles tighten one after another from the nose to the jaw and the ear and pump the held fluid."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 128
    :cond_22
    const-string v0, "face_tone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 129
    const-string v0, "\u0421\u0442\u0435\u0433\u043d\u0430\u0442 \u043e\u0432\u0430\u043b: \u043f\u043e-\u0434\u044a\u043b\u0433\u0438 \u043c\u0435\u043a\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e \u0441\u0442\u0430\u0432\u0430\u0442 \u0438\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u0438 \u0438 \u043f\u0430\u0437\u044f\u0442 \u043b\u0438\u0444\u0442\u0438\u043d\u0433\u0430."

    const-string v1, "Firm contour: longer soft holds \u2014 the face muscles grow enduring and keep the lift."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 132
    :cond_33
    const-string v0, "face_oval"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 133
    const-string v0, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433 \u043d\u0430 \u043e\u0432\u0430\u043b\u0430: \u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0441\u0435 \u0440\u0435\u0434\u0443\u0432\u0430\u0442 \u2014 \u0432\u0441\u0435\u043a\u0438 \u043c\u0443\u0441\u043a\u0443\u043b \u0440\u0430\u0431\u043e\u0442\u0438 3 s \u0438 \u043f\u043e\u0447\u0438\u0432\u0430 6."

    const-string v1, "Oval lift: the cheekbones and the chin take turns \u2014 every muscle works 3 s and rests 6."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 136
    :cond_44
    const-string v0, "face_relax"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 137
    const-string v0, "\u0411\u043e\u0442\u043e\u043a\u0441 \u0435\u0444\u0435\u043a\u0442: \u043d\u0435\u0436\u043d\u0438\u044f\u0442 \u0442\u043e\u043a \u043f\u043e \u0441\u0435\u0442\u0438\u0432\u043d\u0438\u0442\u0435 \u043d\u0435\u0440\u0432\u0438 \u0441\u0432\u0430\u043b\u044f \u0442\u043e\u043d\u0443\u0441\u0430 \u043d\u0430 \u043c\u0438\u043c\u0438\u0447\u0435\u0441\u043a\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 \u0447\u0435\u043b\u043e\u0442\u043e \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430."

    const-string v1, "Botox effect: the gentle current on the sensory nerves lowers the tone of the expression muscles."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 140
    :cond_55
    const-string v0, "face_calm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 141
    const-string v0, "\u0421\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u043b\u0438\u0446\u0435: \u0441\u0435\u0442\u0438\u0432\u043d\u0438\u044f\u0442 \u0442\u043e\u043a \u043f\u043e \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430 \u0441\u0432\u0430\u043b\u044f \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u2014 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f, \u0437\u0430 \u0434\u0430 \u043d\u0435 \u043f\u0440\u0438\u0432\u0438\u043a\u043d\u0435."

    const-string v1, "Calm face: the sensory current on the forehead and the jaw lowers the tension \u2014 the rate changes so it never wears off."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 144
    :cond_66
    const-string v0, "face_jaw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 145
    const-string v0, "\u041e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0430 \u0447\u0435\u043b\u044e\u0441\u0442: \u0431\u0430\u0432\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438 \u0432 \u0434\u044a\u0432\u043a\u0430\u0442\u0435\u043b\u043d\u0438\u044f \u043c\u0443\u0441\u043a\u0443\u043b \u2014 \u0442\u043e\u043d\u0443\u0441\u044a\u0442 \u043c\u0443 \u0432 \u043f\u043e\u043a\u043e\u0439 \u0441\u043f\u0430\u0434\u0430."

    const-string v1, "Relaxed jaw: slow impulses in the masseter \u2014 its resting tone drops."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 148
    :cond_77
    const-string v0, "face_chin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 149
    const-string v0, "\u0421\u0442\u0435\u0433\u043d\u0430\u0442\u0430 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430: \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0441\u0435 \u0441\u0442\u044f\u0433\u0430\u0442 \u0438 \u043e\u0444\u043e\u0440\u043c\u044f\u0442 \u043f\u0440\u043e\u0444\u0438\u043b\u0430."

    const-string v1, "Firm chin: the muscles under the chin tighten and shape the profile."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 152
    :cond_88
    const-string v0, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433 3D: \u0441\u043a\u0443\u043b\u0438\u0442\u0435, \u043d\u0430\u0437\u043e\u043b\u0430\u0431\u0438\u0430\u043b\u043d\u0430\u0442\u0430 \u0437\u043e\u043d\u0430 \u0438 \u0434\u043e\u043b\u043d\u0430\u0442\u0430 \u0431\u0443\u0437\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0437\u0430\u0435\u0434\u043d\u043e \u2014 \u043f\u043e-\u043f\u043b\u044a\u0442\u043d\u0430 \u043e\u043f\u043e\u0440\u0430 \u0437\u0430 \u0446\u044f\u043b\u0430\u0442\u0430 \u0441\u0440\u0435\u0434\u043d\u0430 \u0447\u0430\u0441\u0442."

    const-string v1, "Lift 3D: the cheekbones, the nasolabial area and the lower cheek work together \u2014 fuller support for the whole mid-face."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method static faceSiteNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 219
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0441\u043a\u0443\u043b\u0430 \u041b"

    const-string v3, "cheekbone L"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0441\u043a\u0443\u043b\u0430 \u0414"

    const-string v3, "cheekbone R"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u043d\u0430\u0437\u043e\u043b\u0430\u0431\u0438\u0430\u043b\u043d\u0430 \u041b"

    const-string v3, "nasolabial L"

    .line 220
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u043d\u0430\u0437\u043e\u043b\u0430\u0431\u0438\u0430\u043b\u043d\u0430 \u0414"

    const-string v3, "nasolabial R"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0434\u043e\u043b\u043d\u0430 \u0431\u0443\u0437\u0430 \u041b"

    const-string v3, "lower cheek L"

    .line 221
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0434\u043e\u043b\u043d\u0430 \u0431\u0443\u0437\u0430 \u0414"

    const-string v3, "lower cheek R"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0447\u0435\u043b\u044e\u0441\u0442 \u041b"

    const-string v3, "jaw L"

    .line 222
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0447\u0435\u043b\u044e\u0441\u0442 \u0414"

    const-string v3, "jaw R"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0447\u0435\u043b\u043e"

    const-string v3, "forehead"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430"

    const-string v3, "chin"

    .line 223
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 219
    return-object v0
.end method

.method public static faceZones(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 228
    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    if-nez v0, :cond_9

    .line 229
    :cond_6
    const-string v0, ""

    .line 238
    :goto_8
    return-object v0

    .line 231
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoCues;->faceSiteNames()[Ljava/lang/String;

    move-result-object v2

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    const/4 v0, 0x0

    :goto_13
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3a

    array-length v1, v2

    if-ge v0, v1, :cond_3a

    .line 234
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    aget v1, v1, v0

    const/16 v4, 0x64

    if-lt v1, v4, :cond_34

    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_37

    const-string v1, " + "

    :goto_2b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 235
    :cond_37
    const-string v1, ""

    goto :goto_2b

    .line 238
    :cond_3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static feeling(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    if-le v0, v2, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2013"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0423\u0441\u0435\u0449\u0430\u043d\u0435 CR10 "

    const-string v3, "Feeling CR10 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 \u043f\u043e-\u0441\u043b\u0430\u0431\u043e \u2192 \u043a\u0430\u0447\u0438 \u0441\u0438\u043b\u0430\u0442\u0430, \u0431\u043e\u043b\u043a\u0430 \u2192 \u0441\u0432\u0430\u043b\u0438"

    const-string v2, " \u00b7 weaker \u2192 raise, pain \u2192 lower"

    .line 274
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    return-object v0

    .line 272
    :cond_54
    const-string v0, ""

    goto :goto_26
.end method

.method public static next(Lcom/isaigu/gymapp/ai/AutoModel$Plan;ID)Ljava/lang/String;
    .registers 10

    .prologue
    .line 258
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_9

    .line 259
    const-string v0, ""

    .line 266
    :goto_8
    return-object v0

    .line 261
    :cond_9
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_31

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u0440\u0430\u0439 \u0441\u043b\u0435\u0434 "

    const-string v2, "Ends in "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 264
    :cond_31
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 265
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoCues;->phaseHint(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;

    move-result-object v1

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0421\u043b\u0435\u0434 "

    const-string v4, "In "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u2014 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_8d
    const-string v0, ""

    goto :goto_83
.end method

.method public static offCue(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 207
    if-eqz p2, :cond_f

    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v0, :cond_f

    .line 208
    const-string v0, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u2014 \u043b\u0435\u043a \u0438\u043c\u043f\u0443\u043b\u0441 \u0437\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "Relax \u2014 a light recovery pulse"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_e
    return-object v0

    .line 210
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 211
    const-string v0, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u00b7 \u0434\u0438\u0448\u0430\u0439"

    const-string v1, "Relax \u00b7 breathe"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 213
    :cond_20
    const-string v0, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438"

    const-string v1, "Relax"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static onCue(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 187
    if-eqz p2, :cond_a

    iget-wide v0, p2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_13

    .line 188
    :cond_a
    const-string v0, "\u041f\u0430\u0443\u0437\u0430 \u2014 \u0441\u044a\u0434\u043e\u0432\u0435\u0442\u0435 \u0441\u0435 \u043f\u044a\u043b\u043d\u044f\u0442"

    const-string v1, "Pause \u2014 the vessels refill"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_12
    return-object v0

    .line 190
    :cond_13
    if-eqz p1, :cond_44

    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-eqz v0, :cond_44

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0412\u044a\u043b\u043d\u0430: "

    const-string v2, "Wave: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AutoCues;->faceZones(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;

    move-result-object v0

    :goto_36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_3f
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AutoCues;->waveZones(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    .line 193
    :cond_44
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_53

    .line 194
    const-string v0, "\u0420\u0438\u0442\u043c\u0438\u0447\u043d\u043e \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0435 \u2014 \u043e\u0442\u043f\u0443\u0441\u043d\u0438 \u0441\u0435"

    const-string v1, "Rhythmic twitching \u2014 relax"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 196
    :cond_53
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-nez v0, :cond_64

    .line 197
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 \u2014 \u043d\u0435 \u0441\u0435 \u0441\u044a\u043f\u0440\u043e\u0442\u0438\u0432\u043b\u044f\u0432\u0430\u0439"

    const-string v1, "Pulse \u2014 do not resist"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 199
    :cond_64
    const-string v0, "power"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    if-eqz p1, :cond_85

    const-string v0, "MAIN"

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 200
    const-string v0, "\u0412\u0417\u0420\u0418\u0412\u041d\u041e \u2014 \u0441\u0435\u0433\u0430!"

    const-string v1, "EXPLODE \u2014 now!"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 202
    :cond_85
    const-string v0, "\u0421\u0422\u0415\u0413\u041d\u0418 \u2014 \u0434\u0432\u0438\u0436\u0438 \u0441\u0435"

    const-string v1, "SQUEEZE \u2014 move"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static phaseGoal(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 55
    if-nez p1, :cond_5

    .line 56
    const-string v0, ""

    .line 116
    :goto_4
    return-object v0

    .line 58
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    .line 60
    :goto_f
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-nez v2, :cond_25

    .line 61
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoCues;->faceGoal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 59
    :cond_22
    const-string v0, ""

    goto :goto_f

    .line 63
    :cond_25
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 64
    const-string v0, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435: \u043c\u0435\u043a\u0438 \u043a\u0440\u0430\u0442\u043a\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f \u043d\u0430 \u043f\u043e\u043b\u043e\u0432\u0438\u043d \u0441\u0438\u043b\u0430 \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0438\u0437\u043b\u0438\u0437\u0430 \u043e\u0442 \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430 \u0431\u0435\u0437 \u0443\u043c\u043e\u0440\u0430."

    const-string v1, "Let go: soft short holds at half strength \u2014 the muscle leaves the work without fatigue."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 67
    :cond_3c
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 68
    const-string v0, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435: \u043f\u0443\u043b\u0441\u044a\u0442 \u0438 \u0434\u0438\u0448\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0442, \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u0442 \u0438 \u0441\u0435 \u0438\u0437\u0447\u0438\u0441\u0442\u0432\u0430\u0442 \u043e\u0442 \u043f\u0440\u043e\u0434\u0443\u043a\u0442\u0438\u0442\u0435 \u043d\u0430 \u0443\u043c\u043e\u0440\u0430\u0442\u0430."

    const-string v1, "Recovery: the HR and breathing settle, the muscles relax and clear the products of fatigue."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 71
    :cond_4b
    const-string v2, "WARMUP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 72
    const-string v0, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430: \u043a\u0440\u044a\u0432\u0442\u0430 \u043f\u0440\u0438\u0438\u0436\u0434\u0430 \u0432 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435, \u043d\u0435\u0440\u0432\u0438\u0442\u0435 \u0438 \u0441\u0442\u0430\u0432\u0438\u0442\u0435 \u0441\u0435 \u0437\u0430\u0433\u0440\u044f\u0432\u0430\u0442, \u0437\u0430 \u0434\u0430 \u043f\u043e\u043d\u0435\u0441\u0430\u0442 \u0441\u0438\u043b\u0430\u0442\u0430."

    const-string v1, "Preparation: blood flows into the muscles, nerves and joints warm up to take the strength."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 75
    :cond_5c
    const-string v2, "OPEN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 76
    const-string v0, "\u041e\u0442\u0432\u0430\u0440\u044f\u043d\u0435: \u043f\u044a\u0440\u0432\u043e \u0441\u0435 \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0432\u0430\u0442 \u043f\u044a\u0442\u0438\u0449\u0430\u0442\u0430 \u0432 \u043a\u043e\u0440\u0435\u043c\u0430 \u0438 \u0440\u0430\u043c\u0435\u043d\u0435\u0442\u0435, \u0437\u0430 \u0434\u0430 \u0438\u043c\u0430 \u043a\u044a\u0434\u0435 \u0434\u0430 \u0441\u0435 \u043e\u0442\u0442\u0435\u0447\u0435 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0442\u0430."

    const-string v1, "Opening: the pathways in the abdomen and shoulders move first, so the fluid has somewhere to drain."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 79
    :cond_6d
    const-string v2, "LEGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 80
    const-string v0, "\u0414\u0440\u0435\u043d\u0430\u0436 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430: \u0432\u044a\u043b\u043d\u0430 \u043e\u0442 \u043f\u0440\u0430\u0441\u0435\u0446\u0430 \u043a\u044a\u043c \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e \u0438\u0437\u0442\u043b\u0430\u0441\u043a\u0432\u0430 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0430\u0442\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442 \u043d\u0430\u0433\u043e\u0440\u0435."

    const-string v1, "Leg drainage: a wave from the calf to the glutes pushes the held fluid upwards."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 83
    :cond_7e
    const-string v2, "ARMS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 84
    const-string v0, "\u0414\u0440\u0435\u043d\u0430\u0436 \u043d\u0430 \u0440\u044a\u0446\u0435\u0442\u0435 \u0438 \u0433\u044a\u0440\u0431\u0430 \u043a\u044a\u043c \u0433\u044a\u0440\u0434\u0438\u0442\u0435."

    const-string v1, "Drainage of the arms and back towards the chest."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 86
    :cond_90
    const-string v2, "WAVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    iget-boolean v2, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-eqz v2, :cond_a6

    .line 87
    :cond_9c
    const-string v0, "\u0414\u0440\u0435\u043d\u0430\u0436: \u043f\u043e\u0441\u043b\u0435\u0434\u043e\u0432\u0430\u0442\u0435\u043b\u043d\u0438 \u0441\u044a\u043a\u0440\u0430\u0449\u0435\u043d\u0438\u044f \u0438\u0437\u0442\u043b\u0430\u0441\u043a\u0432\u0430\u0442 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0442\u0430 \u043f\u043e\u0434 \u043a\u043e\u0436\u0430\u0442\u0430 \u043a\u044a\u043c \u043b\u0438\u043c\u0444\u043d\u0438\u0442\u0435 \u043f\u044a\u0442\u0438\u0449\u0430."

    const-string v1, "Drainage: contractions in sequence push the fluid under the skin towards the lymph pathways."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 90
    :cond_a6
    const-string v2, "RELAX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 91
    const-string v0, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u043d\u0430 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u0438 \u0441\u043f\u0430\u0437\u044a\u043c\u0430 \u0432 \u0433\u044a\u0440\u0431\u0430."

    const-string v1, "Releasing the tension and spasm in the back."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 93
    :cond_b8
    const-string v2, "RELIEF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 94
    const-string v0, "\u041e\u0431\u0435\u0437\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435: \u043d\u0438\u0441\u043a\u0430\u0442\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0437\u0430 \u0431\u043e\u043b\u043a\u0430."

    const-string v1, "Pain relief: the low frequency dampens the pain."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 96
    :cond_ca
    const-string v0, "passive_metabolic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 97
    const-string v0, "Tone"

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 98
    const-string v0, "\u0422\u043e\u043d\u0443\u0441: \u043a\u0440\u0430\u0442\u043a\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u043c\u0435\u0436\u0434\u0443 \u0431\u043b\u043e\u043a\u043e\u0432\u0435\u0442\u0435 \u0437\u0430 \u0438\u0437\u0433\u0430\u0440\u044f\u043d\u0435."

    const-string v1, "Tone: a short firming between the burning blocks."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 99
    :cond_e6
    const-string v0, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435 \u043d\u0430 \u0435\u043d\u0435\u0440\u0433\u0438\u044f \u0431\u0435\u0437 \u0443\u043c\u043e\u0440\u0430: \u0431\u0430\u0432\u043d\u0438\u0442\u0435 \u0432\u043b\u0430\u043a\u043d\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e."

    const-string v1, "Burning energy without fatigue: the slow fibres work non-stop."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 102
    :cond_f0
    const-string v0, "back_pain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 103
    const-string v0, "\u0421\u0442\u0430\u0431\u0438\u043b\u0438\u0437\u0430\u0446\u0438\u044f: \u0434\u044a\u043b\u0431\u043e\u043a\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043d\u0430 \u043a\u043e\u0440\u0435\u043c\u0430 \u0438 \u0433\u044a\u0440\u0431\u0430 \u043f\u043e\u0435\u043c\u0430\u0442 \u0442\u043e\u0432\u0430\u0440\u0430 \u043e\u0442 \u0433\u0440\u044a\u0431\u043d\u0430\u043a\u0430."

    const-string v1, "Stabilising: the deep abdominal and back muscles take the load off the spine."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 106
    :cond_102
    const-string v0, "postpartum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_114

    .line 107
    const-string v0, "\u0422\u0430\u0437\u043e\u0432\u043e \u0434\u044a\u043d\u043e \u0438 \u043a\u043e\u0440\u0435\u043c: \u0441\u0438\u043b\u0430 \u0438 \u043a\u043e\u043d\u0442\u0440\u043e\u043b \u0441\u043b\u0435\u0434 \u0440\u0430\u0436\u0434\u0430\u043d\u0435\u0442\u043e."

    const-string v1, "Pelvic floor and abs: strength and control after birth."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 109
    :cond_114
    const-string v0, "cellulite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 110
    const-string v0, "\u0422\u043e\u043d\u0443\u0441 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e\u0434 \u043a\u043e\u0436\u0430\u0442\u0430 \u2014 \u043f\u043e-\u0441\u0442\u0435\u0433\u043d\u0430\u0442 \u0432\u0438\u0434."

    const-string v1, "Tone of the muscles under the skin \u2014 a firmer look."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 112
    :cond_126
    const-string v0, "recovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 113
    const-string v0, "\u041c\u0430\u0441\u0430\u0436: \u043f\u043e-\u0434\u043e\u0431\u044a\u0440 \u043a\u0440\u044a\u0432\u043e\u0442\u043e\u043a, \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u0438 \u043f\u043e-\u0431\u044a\u0440\u0437\u043e \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u0441\u043b\u0435\u0434 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435."

    const-string v1, "Massage: better blood flow, relaxation and faster recovery after training."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 116
    :cond_138
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->desc()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method

.method public static phaseHint(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 18
    if-nez p1, :cond_5

    .line 19
    const-string v0, ""

    .line 47
    :goto_4
    return-object v0

    .line 21
    :cond_5
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    .line 22
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 24
    :cond_1a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 27
    if-eqz v0, :cond_35

    const-string v0, "\u0411\u0430\u0432\u043d\u043e \u0445\u043e\u0434\u0435\u043d\u0435, \u0440\u0430\u0437\u0442\u044f\u0433\u0430\u043d\u0435, \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u0434\u0438\u0448\u0430\u043d\u0435"

    const-string v1, "Slow walking, stretching, calm breathing"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 28
    :cond_35
    const-string v0, "\u041e\u0441\u0442\u0430\u043d\u0438 \u043b\u0435\u0433\u043d\u0430\u043b, \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e"

    const-string v1, "Stay lying down, calm"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 30
    :cond_3e
    iget-boolean v2, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-eqz v2, :cond_4b

    .line 31
    const-string v0, "\u041b\u0435\u0433\u043d\u0430\u043b, \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u043b\u0435\u043a\u043e \u043f\u043e\u0432\u0434\u0438\u0433\u043d\u0430\u0442\u0438 \u2014 \u0441\u0430\u043c\u043e \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043d\u0438"

    const-string v1, "Lying, legs slightly raised \u2014 just relax"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 33
    :cond_4b
    const-string v2, "back_pain"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 34
    const-string v0, "MAIN"

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 35
    const-string v0, "\u041b\u0435\u0433\u043d\u0430\u043b \u043f\u043e \u0433\u0440\u044a\u0431, \u043a\u043e\u043b\u0435\u043d\u0435\u0442\u0435 \u0441\u0432\u0438\u0442\u0438 \u2014 \u043b\u0435\u043a\u043e \u0441\u0442\u044f\u0433\u0430\u0439 \u043a\u043e\u0440\u0435\u043c\u0430 \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    const-string v1, "On your back, knees bent \u2014 gently brace the abs at your own pace"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 38
    :cond_66
    const-string v0, "RELIEF"

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 39
    const-string v0, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u0441\u0435 \u043d\u0430\u043f\u044a\u043b\u043d\u043e \u2014 \u043e\u0431\u0435\u0437\u0431\u043e\u043b\u044f\u0432\u0430\u0449\u0430\u0442\u0430 \u0447\u0430\u0441\u0442"

    const-string v1, "Relax fully \u2014 the pain-relief part"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 41
    :cond_79
    const-string v0, "\u041b\u0435\u0433\u043d\u0438 \u043f\u043e \u043a\u043e\u0440\u0435\u043c, \u043e\u0442\u043f\u0443\u0441\u043d\u0438 \u0433\u044a\u0440\u0431\u0430"

    const-string v1, "Lie on your stomach, let the back relax"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 43
    :cond_82
    if-eqz v0, :cond_a2

    .line 44
    const-string v0, "WARMUP"

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    const-string v0, "\u041b\u0435\u043a\u043e \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0432\u0430\u043d\u0435 \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    const-string v1, "Light movement at your own pace"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 45
    :cond_98
    const-string v0, "\u041f\u0440\u0430\u0432\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u0442\u0430 \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    const-string v1, "Do the exercises at your own pace"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 47
    :cond_a2
    const-string v0, "\u041b\u0435\u0433\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e, \u043d\u0435 \u0441\u0435 \u0434\u0432\u0438\u0436\u0438 \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0441\u0430\u043c\u0438"

    const-string v1, "Lie comfortably, do not move \u2014 the muscles work by themselves"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method

.method public static waveZones(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 242
    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    if-nez v0, :cond_9

    .line 243
    :cond_6
    const-string v0, ""

    .line 253
    :goto_8
    return-object v0

    .line 245
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoCues;->zoneNames()[Ljava/lang/String;

    move-result-object v2

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    const/4 v0, 0x0

    :goto_13
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel;->DISPLAY_ORDER:[I

    array-length v1, v1

    if-ge v0, v1, :cond_40

    .line 248
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel;->DISPLAY_ORDER:[I

    aget v4, v1, v0

    .line 249
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    array-length v1, v1

    if-ge v4, v1, :cond_3a

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    aget v1, v1, v4

    const/16 v5, 0x64

    if-lt v1, v5, :cond_3a

    .line 250
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3d

    const-string v1, " + "

    :goto_31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 250
    :cond_3d
    const-string v1, ""

    goto :goto_31

    .line 253
    :cond_40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method static zoneNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 278
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 279
    const/4 v1, 0x3

    const-string v2, "\u041f\u0440\u0430\u0441\u0435\u0446"

    const-string v3, "Calf"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 280
    const/4 v1, 0x2

    const-string v2, "\u041f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    const-string v3, "Quads"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 281
    const/16 v1, 0x9

    const-string v2, "\u0417\u0430\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    const-string v3, "Hamstrings"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 282
    const/16 v1, 0x8

    const-string v2, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v3, "Glutes"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 283
    const/4 v1, 0x1

    const-string v2, "\u041a\u043e\u0440\u0435\u043c"

    const-string v3, "Abs"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 284
    const/4 v1, 0x7

    const-string v2, "\u041a\u0440\u044a\u0441\u0442"

    const-string v3, "Low back"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 285
    const/4 v1, 0x6

    const-string v2, "\u0413\u0440\u044a\u0431"

    const-string v3, "Back"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 286
    const/4 v1, 0x5

    const-string v2, "\u0422\u0440\u0430\u043f\u0435\u0446"

    const-string v3, "Traps"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 287
    const/4 v1, 0x0

    const-string v2, "\u0413\u044a\u0440\u0434\u0438"

    const-string v3, "Chest"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 288
    const/4 v1, 0x4

    const-string v2, "\u0420\u044a\u0446\u0435"

    const-string v3, "Arms"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 289
    return-object v0
.end method
