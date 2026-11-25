.class public final Lcom/isaigu/gymapp/ai/AiLive;
.super Ljava/lang/Object;
.source "AiLive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiLive$Verdict;
    }
.end annotation


# static fields
.field static final CONFIRM_MS:J = 0x7530L

.field static final WARN_HOLD_S:D = 300.0

.field private static hrHigh:Z

.field private static hrSaidMs:J

.field private static pending:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

.field private static pendingUntil:J

.field private static final recent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Lcom/isaigu/gymapp/ai/AiLive$Verdict;Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/16 v1, 0x20

    .line 430
    if-eqz p2, :cond_e

    .line 431
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->said:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    :goto_d
    return-void

    .line 432
    :cond_e
    if-eqz p3, :cond_21

    .line 433
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->ask:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->said:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 436
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->now:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method static age()I
    .registers 1

    .prologue
    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_9

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x28

    goto :goto_8
.end method

.method static answer(Ljava/lang/String;[Z)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 453
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->asking()Z

    move-result v0

    if-nez v0, :cond_d

    .line 454
    sput-object v3, Lcom/isaigu/gymapp/ai/AiLive;->pending:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-object v0, v3

    .line 474
    :goto_c
    return-object v0

    .line 457
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[,.!?]"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 458
    const-string v0, " \u0434\u0430 "

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "\u0434\u043e\u0431\u0440\u0435"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "\u043d\u0430\u043f\u0440\u0430\u0432\u0438"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "\u043f\u0443\u0441\u043d\u0438"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "\u0434\u0430\u0432\u0430\u0439"

    .line 459
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, " \u043e\u043a "

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "\u043e\u043a\u0435\u0439"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "\u0441\u044a\u0433\u043b\u0430\u0441\u0435\u043d"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, " yes "

    .line 460
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, " ok "

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b7

    :cond_84
    move v0, v2

    .line 461
    :goto_85
    const-string v5, " \u043d\u0435 "

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ad

    const-string v5, "\u043d\u0435\u0434\u0435\u0439"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ad

    const-string v5, "\u043e\u0441\u0442\u0430\u0432\u0438"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ad

    const-string v5, "\u043e\u0442\u043a\u0430\u0436\u0438"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ad

    const-string v5, " no "

    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b9

    :cond_ad
    move v4, v2

    .line 463
    :goto_ae
    if-eqz v4, :cond_bb

    .line 464
    sput-object v3, Lcom/isaigu/gymapp/ai/AiLive;->pending:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    .line 465
    aput-boolean v2, p1, v1

    move-object v0, v3

    .line 466
    goto/16 :goto_c

    :cond_b7
    move v0, v1

    .line 460
    goto :goto_85

    :cond_b9
    move v4, v1

    .line 462
    goto :goto_ae

    .line 468
    :cond_bb
    if-eqz v0, :cond_c3

    .line 469
    sget-object v0, Lcom/isaigu/gymapp/ai/AiLive;->pending:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    .line 470
    sput-object v3, Lcom/isaigu/gymapp/ai/AiLive;->pending:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    goto/16 :goto_c

    .line 473
    :cond_c3
    sput-object v3, Lcom/isaigu/gymapp/ai/AiLive;->pending:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-object v0, v3

    .line 474
    goto/16 :goto_c
.end method

.method static ask(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)V
    .registers 5

    .prologue
    .line 443
    sput-object p0, Lcom/isaigu/gymapp/ai/AiLive;->pending:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiLive;->pendingUntil:J

    .line 445
    return-void
.end method

.method static asking()Z
    .registers 4

    .prologue
    .line 448
    sget-object v0, Lcom/isaigu/gymapp/ai/AiLive;->pending:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/ai/AiLive;->pendingUntil:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static check(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;)Lcom/isaigu/gymapp/ai/AiLive$Verdict;
    .registers 23

    .prologue
    .line 318
    new-instance v17, Lcom/isaigu/gymapp/ai/AiLive$Verdict;

    invoke-direct/range {v17 .. v17}, Lcom/isaigu/gymapp/ai/AiLive$Verdict;-><init>()V

    .line 319
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->impulse()[I

    move-result-object v7

    .line 320
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->endurance()Lcom/isaigu/gymapp/ai/Endurance;

    move-result-object v2

    .line 321
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->hr()I

    move-result v9

    .line 322
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->hrCap()I

    move-result v10

    .line 323
    if-lez v9, :cond_a7

    if-lez v10, :cond_a7

    add-int/lit8 v3, v10, -0x5

    if-lt v9, v3, :cond_a7

    const/4 v8, 0x1

    .line 324
    :goto_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->commands:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_26
    :goto_26
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2df

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;

    .line 325
    const/4 v14, 0x0

    .line 326
    const/4 v15, 0x0

    .line 327
    const-string v3, "up"

    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    const-string v3, "on"

    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    :cond_49
    const/4 v3, 0x1

    .line 328
    :goto_4a
    if-eqz v7, :cond_238

    if-eqz v3, :cond_238

    const/4 v3, 0x0

    aget v3, v7, v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_238

    .line 329
    const/4 v3, 0x0

    aget v16, v7, v3

    const/4 v3, 0x1

    aget v4, v7, v3

    const/4 v3, 0x2

    aget v5, v7, v3

    const/4 v3, 0x3

    aget v6, v7, v3

    .line 330
    const-string v3, "frequency"

    iget-object v12, v11, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 331
    const/4 v3, 0x0

    aget v3, v7, v3

    int-to-double v0, v3

    move-wide/from16 v20, v0

    iget-boolean v3, v11, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    if-eqz v3, :cond_ac

    const-wide v12, 0x3ff0cccccccccccdL    # 1.05

    :goto_7a
    mul-double v12, v12, v20

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v13, v12

    .line 332
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->age()I

    move-result v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v12

    .line 333
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->procedure()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 334
    const-string v3, "\u041f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430\u0442\u0430 \u0435 \u0437\u0430 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u2014 \u043f\u043e-\u0432\u0438\u0441\u043e\u043a\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0449\u0435 \u0441\u0442\u0435\u0433\u043d\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0432\u043c\u0435\u0441\u0442\u043e \u0434\u0430 \u0433\u0438 \u043e\u0442\u043f\u0443\u0441\u043d\u0435."

    const-string v12, "The procedure is for relaxing \u2014 a higher frequency would tighten the muscles."

    invoke-static {v3, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    :goto_98
    move v3, v13

    move-object v14, v12

    .line 357
    :goto_9a
    if-nez v14, :cond_3fc

    .line 358
    invoke-static/range {v2 .. v10}, Lcom/isaigu/gymapp/ai/AiLive;->cost(Lcom/isaigu/gymapp/ai/Endurance;IIII[IZII)Ljava/lang/String;

    move-result-object v3

    :goto_a0
    move-object v15, v3

    .line 371
    :cond_a1
    :goto_a1
    move-object/from16 v0, v17

    invoke-static {v0, v11, v14, v15}, Lcom/isaigu/gymapp/ai/AiLive;->add(Lcom/isaigu/gymapp/ai/AiLive$Verdict;Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 323
    :cond_a7
    const/4 v8, 0x0

    goto/16 :goto_1e

    .line 327
    :cond_aa
    const/4 v3, 0x0

    goto :goto_4a

    .line 331
    :cond_ac
    const-wide v12, 0x3ff199999999999aL    # 1.1

    goto :goto_7a

    .line 336
    :cond_b2
    if-le v13, v12, :cond_3ff

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u041d\u0430\u0434 "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " \u0445\u0435\u0440\u0446\u0430 \u043d\u0435 \u043f\u0443\u0441\u043a\u0430\u043c"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->age()I

    move-result v3

    const/16 v16, 0x3c

    move/from16 v0, v16

    if-lt v3, v0, :cond_11b

    const-string v3, " \u0441\u043b\u0435\u0434 60 \u0433\u043e\u0434\u0438\u043d\u0438"

    :goto_d5
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " \u2014 \u0442\u043e\u0432\u0430 \u0435 \u0433\u043e\u0440\u043d\u0430\u0442\u0430 \u0433\u0440\u0430\u043d\u0438\u0446\u0430."

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not over "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " Hz"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 338
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->age()I

    move-result v3

    const/16 v16, 0x3c

    move/from16 v0, v16

    if-lt v3, v0, :cond_11e

    const-string v3, " after 60"

    :goto_106
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " \u2014 the upper limit."

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-static {v14, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto/16 :goto_98

    :cond_11b
    const-string v3, ""

    goto :goto_d5

    .line 338
    :cond_11e
    const-string v3, ""

    goto :goto_106

    .line 340
    :cond_121
    const-string v3, "width"

    iget-object v12, v11, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bd

    .line 341
    const/4 v3, 0x3

    aget v3, v7, v3

    int-to-double v0, v3

    move-wide/from16 v20, v0

    iget-boolean v3, v11, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    if-eqz v3, :cond_1b1

    const-wide v12, 0x3ff0cccccccccccdL    # 1.05

    :goto_13a
    mul-double v12, v12, v20

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v6, v12

    .line 342
    const/16 v3, 0x190

    if-gt v6, v3, :cond_14f

    const/16 v3, 0x64

    move/from16 v0, v16

    if-lt v0, v3, :cond_234

    const/16 v3, 0x12c

    if-le v6, v3, :cond_234

    .line 343
    :cond_14f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u041f\u043e-\u0434\u044a\u043b\u0431\u043e\u043a \u0438\u043c\u043f\u0443\u043b\u0441 \u043e\u0442 "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v3, 0x64

    move/from16 v0, v16

    if-lt v0, v3, :cond_1b7

    const/16 v3, 0x12c

    :goto_162
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " \u043c\u0438\u043a\u0440\u043e\u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043f\u0440\u0438 "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " \u0445\u0435\u0440\u0446\u0430 \u043f\u0430\u0440\u0438 \u0438 \u043d\u0435 \u0435 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u0435\u043d."

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "A deeper impulse than "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 345
    const/16 v3, 0x64

    move/from16 v0, v16

    if-lt v0, v3, :cond_1ba

    const/16 v3, 0x12c

    :goto_18f
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " \u00b5s at "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " Hz burns \u2014 not safe."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-static {v12, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move/from16 v3, v16

    goto/16 :goto_9a

    .line 341
    :cond_1b1
    const-wide v12, 0x3ff199999999999aL    # 1.1

    goto :goto_13a

    .line 343
    :cond_1b7
    const/16 v3, 0x190

    goto :goto_162

    .line 345
    :cond_1ba
    const/16 v3, 0x190

    goto :goto_18f

    .line 347
    :cond_1bd
    const-string v3, "impulse"

    iget-object v12, v11, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22a

    .line 348
    const/4 v3, 0x1

    aget v3, v7, v3

    add-int/lit8 v4, v3, 0x1

    .line 349
    const/16 v3, 0x32

    move/from16 v0, v16

    if-lt v0, v3, :cond_227

    const/4 v3, 0x6

    .line 350
    :goto_1d3
    if-le v4, v3, :cond_223

    .line 351
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u0418\u043c\u043f\u0443\u043b\u0441 \u043d\u0430\u0434 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043f\u0440\u0438 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u0445\u0435\u0440\u0446\u0430 \u0435 \u0442\u0432\u044a\u0440\u0434\u0435 \u0434\u044a\u043b\u044a\u0433 \u0437\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "An impulse over "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " s at "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " Hz is too long."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_223
    move/from16 v3, v16

    .line 354
    goto/16 :goto_9a

    .line 349
    :cond_227
    const/16 v3, 0xa

    goto :goto_1d3

    .line 354
    :cond_22a
    const-string v3, "second"

    iget-object v12, v11, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_234
    move/from16 v3, v16

    goto/16 :goto_9a

    .line 360
    :cond_238
    if-eqz v7, :cond_a1

    const-string v3, "pause"

    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    const-string v3, "down"

    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    const/4 v3, 0x0

    aget v3, v7, v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_a1

    .line 361
    const/4 v3, 0x2

    aget v3, v7, v3

    add-int/lit8 v5, v3, -0x1

    .line 362
    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    const/4 v6, 0x4

    aget v6, v7, v6

    const/4 v12, 0x5

    aget v12, v7, v12

    int-to-double v12, v12

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v12, v12, v20

    invoke-static {v3, v4, v6, v12, v13}, Lcom/isaigu/gymapp/ai/SafeLimits;->minOff(IIID)I

    move-result v3

    .line 363
    if-ge v5, v3, :cond_2d0

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041f\u0430\u0443\u0437\u0430 \u043f\u043e\u0434 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043f\u0440\u0438 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u0445\u0435\u0440\u0446\u0430 \u0438 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 \u043d\u0435 \u043e\u0441\u0442\u0430\u0432\u044f \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u0434\u0430 \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043d\u0435."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A pause under "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " s at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Hz does not let the muscle relax."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a1

    .line 368
    :cond_2d0
    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    const/4 v6, 0x3

    aget v6, v7, v6

    invoke-static/range {v2 .. v10}, Lcom/isaigu/gymapp/ai/AiLive;->cost(Lcom/isaigu/gymapp/ai/Endurance;IIII[IZII)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_a1

    .line 373
    :cond_2df
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2e7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3df

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 374
    const-string v4, "double_on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d4

    .line 375
    const/4 v6, 0x0

    .line 376
    const/4 v5, 0x0

    .line 377
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v4

    .line 378
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v10

    if-nez v10, :cond_34e

    if-eqz v4, :cond_34e

    iget-boolean v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-nez v10, :cond_34e

    .line 379
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u0412\u0442\u043e\u0440\u0438\u044f\u0442 \u0438\u043c\u043f\u0443\u043b\u0441 \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d \u0437\u0430 \u0442\u0430\u0437\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "postpartum"

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34b

    .line 380
    const-string v4, " \u0432 \u043f\u044a\u0440\u0432\u0438\u0442\u0435 \u0447\u0435\u0442\u0438\u0440\u0438 \u0441\u0435\u0441\u0438\u0438 \u0441\u043b\u0435\u0434 \u0440\u0430\u0436\u0434\u0430\u043d\u0435"

    :goto_326
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "The second impulse is off for this program."

    .line 379
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v5

    .line 392
    :goto_33b
    if-eqz v6, :cond_3af

    .line 393
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->said:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2e7

    .line 380
    :cond_34b
    const-string v4, ""

    goto :goto_326

    .line 382
    :cond_34e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->procedure()Z

    move-result v4

    if-eqz v4, :cond_35e

    .line 383
    const-string v4, "\u0412 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430\u0442\u0430 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 \u0435 \u0437\u0430 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u2014 \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 \u0442\u0430\u043c \u043d\u0435 \u043f\u0443\u0441\u043a\u0430\u043c."

    const-string v6, "In the procedure the pause is for relaxing \u2014 no second impulse there."

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v5

    goto :goto_33b

    .line 385
    :cond_35e
    if-eqz v8, :cond_397

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u0431\u043b\u0438\u0437\u043e \u0434\u043e \u0433\u0440\u0430\u043d\u0438\u0446\u0430\u0442\u0430 \u2014 \u0432\u0442\u043e\u0440\u0438\u044f\u0442 \u0438\u043c\u043f\u0443\u043b\u0441 \u0449\u0435 \u0433\u043e \u0432\u0434\u0438\u0433\u043d\u0435 \u043e\u0449\u0435, \u0437\u0430\u0449\u043e\u0442\u043e \u043f\u0430\u0443\u0437\u0430\u0442\u0430 \u0441\u043f\u0438\u0440\u0430 \u0434\u0430 \u0435 \u043f\u043e\u0447\u0438\u0432\u043a\u0430."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Heart rate "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", near the limit \u2014 the second impulse raises it, the pause is no rest any more."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_33b

    .line 388
    :cond_397
    if-eqz v2, :cond_3f9

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Endurance;->reserve()D

    move-result-wide v10

    const-wide v12, 0x3fd999999999999aL    # 0.4

    cmpg-double v4, v10, v12

    if-gez v4, :cond_3f9

    .line 389
    const-string v4, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0432\u0435\u0447\u0435 \u0441\u0430 \u0443\u043c\u043e\u0440\u0435\u043d\u0438 \u2014 \u0441 \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 \u0441\u043f\u0438\u0440\u0430 \u0434\u0430 \u0435 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0449\u0435 \u043f\u0430\u0434\u043d\u0435 \u043f\u043e-\u0441\u043a\u043e\u0440\u043e."

    const-string v5, "The muscles are tired \u2014 with a second impulse the pause is no rest and the frequency will drop sooner."

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_33b

    .line 394
    :cond_3af
    if-eqz v4, :cond_3c9

    .line 395
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->ask:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->said:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2e7

    .line 398
    :cond_3c9
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->now:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e7

    .line 401
    :cond_3d4
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->now:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->actions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e7

    .line 404
    :cond_3df
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->ask:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f8

    .line 405
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->said:Ljava/lang/StringBuilder;

    const-string v3, "\u0414\u0430 \u0433\u043e \u043d\u0430\u043f\u0440\u0430\u0432\u044f \u043b\u0438?"

    const-string v4, "Shall I?"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_3f8
    return-object v17

    :cond_3f9
    move-object v4, v5

    goto/16 :goto_33b

    :cond_3fc
    move-object v3, v15

    goto/16 :goto_a0

    :cond_3ff
    move-object v12, v14

    goto/16 :goto_98
.end method

.method static cost(Lcom/isaigu/gymapp/ai/Endurance;IIII[IZII)Ljava/lang/String;
    .registers 20

    .prologue
    .line 412
    if-eqz p6, :cond_55

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u0431\u043b\u0438\u0437\u043e \u0434\u043e \u0433\u0440\u0430\u043d\u0438\u0446\u0430\u0442\u0430 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2014 \u0442\u043e\u0432\u0430 \u0449\u0435 \u0433\u043e \u0432\u0434\u0438\u0433\u043d\u0435 \u043e\u0449\u0435."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Heart rate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", near the limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u2014 this raises it."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    :goto_54
    return-object v2

    .line 416
    :cond_55
    if-nez p0, :cond_59

    .line 417
    const/4 v2, 0x0

    goto :goto_54

    .line 419
    :cond_59
    const/4 v2, 0x4

    aget v7, p5, v2

    const/4 v2, 0x5

    aget v2, p5, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double v8, v2, v4

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v10, p4

    invoke-virtual/range {v3 .. v10}, Lcom/isaigu/gymapp/ai/Endurance;->holdS(IIIIDI)D

    move-result-wide v2

    .line 420
    const-wide v4, 0x4072c00000000000L    # 300.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_c7

    .line 421
    const-wide/16 v4, 0x1

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0422\u0430\u043a\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0449\u0435 \u0438\u0437\u0434\u044a\u0440\u0436\u0438 \u043e\u043a\u043e\u043b\u043e "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x1

    if-ne v3, v2, :cond_c4

    const-string v2, " \u043c\u0438\u043d\u0443\u0442\u0430"

    :goto_98
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", \u043f\u043e\u0441\u043b\u0435 \u0449\u0435 \u0441\u0432\u0430\u043b\u044f \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The muscle holds that about "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " min, then the frequency comes down."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_54

    :cond_c4
    const-string v2, " \u043c\u0438\u043d\u0443\u0442\u0438"

    goto :goto_98

    .line 426
    :cond_c7
    const/4 v2, 0x0

    goto :goto_54
.end method

.method static describe()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 261
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->impulse()[I

    move-result-object v0

    .line 262
    if-nez v0, :cond_14

    .line 263
    const-string v0, "\u041e\u0449\u0435 \u043d\u0438\u0449\u043e \u043d\u0435 \u0442\u0435\u0447\u0435."

    const-string v1, "Nothing runs yet."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_13
    return-object v0

    .line 265
    :cond_14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0421\u0435\u0433\u0430 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0445\u0435\u0440\u0446\u0430"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    aget v1, v0, v6

    if-lez v1, :cond_b5

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u2014 \u043f\u043b\u0430\u043d\u044a\u0442 \u0435 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v5

    aget v3, v0, v6

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u0441\u0432\u0430\u043b\u0438\u0445 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0437\u0430\u0440\u0430\u0434\u0438 \u0443\u043c\u043e\u0440\u0430\u0442\u0430"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u2014 the plan is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    aget v4, v0, v6

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lowered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for fatigue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_b5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", \u0438\u043c\u043f\u0443\u043b\u0441 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0441\u0435\u043a\u0443\u043d\u0434\u0438, \u043f\u0430\u0443\u0437\u0430 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u043c\u0438\u043a\u0440\u043e\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", impulse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s, pause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b5s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    aget v1, v0, v7

    if-lez v1, :cond_165

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0445\u0435\u0440\u0446\u0430"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", second impulse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_165
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->endurance()Lcom/isaigu/gymapp/ai/Endurance;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_238

    aget v2, v0, v5

    const/16 v3, 0x14

    if-lt v2, v3, :cond_238

    .line 278
    aget v2, v0, v5

    aget v3, v0, v8

    aget v4, v0, v10

    aget v5, v0, v7

    const/4 v6, 0x5

    aget v6, v0, v6

    int-to-double v6, v6

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v10

    const/4 v8, 0x3

    aget v8, v0, v8

    invoke-virtual/range {v1 .. v8}, Lcom/isaigu/gymapp/ai/Endurance;->holdS(IIIIDI)D

    move-result-wide v0

    .line 279
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1e6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ". \u0422\u0430\u043a\u0430 \u0438\u0437\u0434\u044a\u0440\u0436\u0430 \u0446\u044f\u043b\u0430\u0442\u0430 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->noun()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0442\u0430"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ". It holds the whole session."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b8
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :goto_1bb
    sget-object v1, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    monitor-enter v1

    .line 287
    :try_start_1be
    sget-object v0, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1df

    .line 288
    const/16 v0, 0x20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_1df
    monitor-exit v1
    :try_end_1e0
    .catchall {:try_start_1be .. :try_end_1e0} :catchall_23f

    .line 291
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 281
    :cond_1e6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ". \u0422\u0430\u043a\u0430 \u0438\u0437\u0434\u044a\u0440\u0436\u0430 \u043e\u0449\u0435 \u043e\u043a\u043e\u043b\u043e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x1

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043c\u0438\u043d\u0443\u0442\u0438."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ". It holds about "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x1

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v6

    .line 282
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " more minutes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b8

    .line 284
    :cond_238
    const/16 v0, 0x2e

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1bb

    .line 290
    :catchall_23f
    move-exception v0

    :try_start_240
    monitor-exit v1
    :try_end_241
    .catchall {:try_start_240 .. :try_end_241} :catchall_23f

    throw v0
.end method

.method static endurance()Lcom/isaigu/gymapp/ai/Endurance;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 102
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->dynamics()Lcom/isaigu/gymapp/ai/MapDynamics;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->endurance()Lcom/isaigu/gymapp/ai/Endurance;

    move-result-object v0

    .line 106
    :cond_11
    :goto_11
    return-object v0

    .line 105
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getEndurance()Lcom/isaigu/gymapp/ai/Endurance;

    move-result-object v0

    goto :goto_11
.end method

.method static explain([I)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 197
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->hr()I

    move-result v1

    .line 198
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->hrCap()I

    move-result v2

    .line 199
    aget v0, p0, v3

    if-ne v0, v6, :cond_c3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v1, :cond_b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v2, :cond_b9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", \u0431\u043b\u0438\u0437\u043e \u0434\u043e \u0433\u0440\u0430\u043d\u0438\u0446\u0430\u0442\u0430 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". \u0421\u0432\u0430\u043b\u044f\u043c \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u043e\u0442 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p0, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u043d\u0430 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p0, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u0445\u0435\u0440\u0446\u0430, \u0441\u0438\u043b\u0430\u0442\u0430 \u043e\u0441\u0442\u0430\u0432\u0430. \u041d\u0435\u043a\u0430 \u0434\u0438\u0448\u0430 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u0438 \u0437\u0430\u0431\u0430\u0432\u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u044f\u0442\u0430."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The heart rate is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    if-lez v1, :cond_bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez v2, :cond_c0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", near the limit "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Frequency "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p0, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2192 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p0, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz, the strength stays. Breathe calmly, move slower."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_b4
    return-object v0

    .line 200
    :cond_b5
    const-string v0, "\u0432\u0438\u0441\u043e\u043a"

    goto/16 :goto_21

    :cond_b9
    const-string v0, ""

    goto/16 :goto_3a

    .line 202
    :cond_bd
    const-string v0, "high"

    goto :goto_71

    :cond_c0
    const-string v0, ""

    goto :goto_8a

    .line 205
    :cond_c3
    aget v0, p0, v3

    if-ne v0, v5, :cond_148

    .line 206
    aget v0, p0, v4

    int-to-float v0, v0

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441\u0435 \u0443\u043c\u043e\u0440\u044f\u0432\u0430\u0442: \u043d\u0430 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, p0, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0445\u0435\u0440\u0446\u0430 \u0441 \u0442\u0430\u0437\u0438 \u043f\u0430\u0443\u0437\u0430 \u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u043e\u043a\u043e\u043b\u043e "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 208
    if-ne v1, v5, :cond_145

    const-string v0, " \u043c\u0438\u043d\u0443\u0442\u0430"

    :goto_f4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". \u0421\u0432\u0430\u043b\u044f\u043c \u043d\u0430 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, p0, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0445\u0435\u0440\u0446\u0430, \u0441\u0438\u043b\u0430\u0442\u0430 \u043e\u0441\u0442\u0430\u0432\u0430. \u0410\u043a\u043e \u0438\u0441\u043a\u0430\u0442\u0435 \u043f\u044a\u043b\u043d\u0430\u0442\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u2014 \u043a\u0440\u0430\u0442\u043a\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u043e\u0442 \u043c\u0438\u043d\u0443\u0442\u0430."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The muscles tire: at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz with this pause about "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " min are left. Down to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz, the strength stays. For the full frequency \u2014 a short rest of a minute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b4

    .line 208
    :cond_145
    const-string v0, " \u043c\u0438\u043d\u0443\u0442\u0438"

    goto :goto_f4

    .line 213
    :cond_148
    aget v0, p0, v3

    if-ne v0, v4, :cond_188

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441\u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0445\u0430 \u2014 \u0432\u0440\u044a\u0449\u0430\u043c \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u043d\u0430 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p0, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0445\u0435\u0440\u0446\u0430."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The muscles recovered \u2014 the frequency back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b4

    .line 217
    :cond_188
    const-string v0, ""

    goto/16 :goto_b4
.end method

.method static heart()V
    .registers 8

    .prologue
    .line 222
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->hr()I

    move-result v0

    .line 223
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->hrCap()I

    move-result v1

    .line 224
    if-lez v0, :cond_c

    if-gtz v1, :cond_d

    .line 239
    :cond_c
    :goto_c
    return-void

    .line 227
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 228
    if-lt v0, v1, :cond_75

    sget-boolean v4, Lcom/isaigu/gymapp/ai/AiLive;->hrHigh:Z

    if-eqz v4, :cond_22

    sget-wide v4, Lcom/isaigu/gymapp/ai/AiLive;->hrSaidMs:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x15f90

    cmp-long v4, v4, v6

    if-lez v4, :cond_75

    .line 229
    :cond_22
    const/4 v4, 0x1

    sput-boolean v4, Lcom/isaigu/gymapp/ai/AiLive;->hrHigh:Z

    .line 230
    sput-wide v2, Lcom/isaigu/gymapp/ai/AiLive;->hrSaidMs:J

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u043d\u0430\u0434 \u0433\u0440\u0430\u043d\u0438\u0446\u0430\u0442\u0430 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". \u0417\u0430\u0431\u0430\u0432\u0435\u0442\u0435 \u0442\u0435\u043c\u043f\u043e\u0442\u043e \u0438 \u0434\u0438\u0448\u0430\u0439\u0442\u0435 \u0434\u044a\u043b\u0431\u043e\u043a\u043e. \u0410\u043a\u043e \u0434\u043e \u043c\u0438\u043d\u0443\u0442\u0430 \u043d\u0435 \u0441\u043f\u0430\u0434\u043d\u0435 \u2014 \u043f\u0430\u0443\u0437\u0430."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Heart rate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", over the limit "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Slow down and breathe deeply; a pause if it stays a minute."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiLive;->say(Ljava/lang/String;)V

    goto :goto_c

    .line 234
    :cond_75
    sget-boolean v4, Lcom/isaigu/gymapp/ai/AiLive;->hrHigh:Z

    if-eqz v4, :cond_c

    add-int/lit8 v1, v1, -0xa

    if-gt v0, v1, :cond_c

    .line 235
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/ai/AiLive;->hrHigh:Z

    .line 236
    sput-wide v2, Lcom/isaigu/gymapp/ai/AiLive;->hrSaidMs:J

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0432\u044a\u0440\u043d\u0430 \u043d\u0430 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043c\u0435 \u043d\u043e\u0440\u043c\u0430\u043b\u043d\u043e."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Heart rate back to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Going on as normal."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiLive;->say(Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method static hr()I
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 65
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHr()I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 67
    :cond_b
    :goto_b
    return v0

    .line 66
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method static hrCap()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 73
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->dynamics()Lcom/isaigu/gymapp/ai/MapDynamics;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->hrCap()I

    move-result v0

    .line 77
    :cond_11
    :goto_11
    return v0

    .line 76
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_11

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v2, v3, :cond_11

    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    goto :goto_11
.end method

.method static impulse()[I
    .registers 10

    .prologue
    const/4 v7, 0x2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 83
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->current()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->dynamics()Lcom/isaigu/gymapp/ai/MapDynamics;

    move-result-object v5

    .line 85
    if-nez v4, :cond_17

    .line 97
    :cond_16
    :goto_16
    return-object v0

    .line 88
    :cond_17
    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->noDouble:Z

    if-nez v0, :cond_53

    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v0, :cond_53

    move v0, v1

    .line 89
    :goto_20
    const/4 v3, 0x7

    new-array v3, v3, [I

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    aput v6, v3, v2

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    aput v6, v3, v1

    iget v1, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    aput v1, v3, v7

    const/4 v1, 0x3

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    aput v6, v3, v1

    const/4 v6, 0x4

    if-eqz v0, :cond_55

    iget v1, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    :goto_39
    aput v1, v3, v6

    const/4 v1, 0x5

    if-eqz v0, :cond_57

    iget-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    :goto_46
    aput v0, v3, v1

    const/4 v0, 0x6

    .line 90
    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/MapDynamics;->safeHzCut()I

    move-result v2

    :cond_4f
    aput v2, v3, v0

    move-object v0, v3

    .line 89
    goto :goto_16

    :cond_53
    move v0, v2

    .line 88
    goto :goto_20

    :cond_55
    move v1, v2

    .line 89
    goto :goto_39

    :cond_57
    move v0, v2

    goto :goto_46

    .line 92
    :cond_59
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v4

    .line 93
    if-eqz v4, :cond_91

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v3

    .line 94
    :goto_63
    if-eqz v3, :cond_16

    .line 97
    const/4 v0, 0x7

    new-array v0, v0, [I

    iget v5, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    aput v5, v0, v2

    iget v2, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    aput v2, v0, v1

    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    aput v1, v0, v7

    const/4 v1, 0x3

    iget v2, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSafeHzCut()I

    move-result v2

    aput v2, v0, v1

    goto :goto_16

    :cond_91
    move-object v3, v0

    .line 93
    goto :goto_63
.end method

.method static json()Ljava/lang/String;
    .registers 16

    .prologue
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const/4 v9, 0x0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "{\"session_kind\":\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->procedure()Z

    move-result v0

    if-eqz v0, :cond_1c8

    const-string v0, "procedure"

    :goto_14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 118
    :try_start_1e
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 119
    const-string v0, ",\"workout\":"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"min_left\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->minutesLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"strength\":"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->strength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"paused\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isPaused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    :cond_5f
    :goto_5f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->impulse()[I

    move-result-object v11

    .line 140
    if-eqz v11, :cond_15c

    .line 141
    const-string v0, ",\"impulse\":{\"hz\":"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v11, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"hz_planned\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v11, v1

    const/4 v2, 0x6

    aget v2, v11, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"on_s\":"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v11, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"pause_s\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, v11, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"us\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget v1, v11, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"second\":"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x4

    aget v0, v11, v0

    if-lez v0, :cond_2cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"hz\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x4

    aget v2, v11, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"pct\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x5

    aget v2, v11, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_de
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->endurance()Lcom/isaigu/gymapp/ai/Endurance;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_15c

    const/4 v0, 0x0

    aget v0, v11, v0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_15c

    .line 147
    const/4 v0, 0x0

    aget v2, v11, v0

    const/4 v0, 0x1

    aget v3, v11, v0

    const/4 v0, 0x2

    aget v4, v11, v0

    const/4 v0, 0x4

    aget v5, v11, v0

    const/4 v0, 0x5

    aget v0, v11, v0

    int-to-double v6, v0

    div-double/2addr v6, v12

    const/4 v0, 0x3

    aget v8, v11, v0

    invoke-virtual/range {v1 .. v8}, Lcom/isaigu/gymapp/ai/Endurance;->holdS(IIIIDI)D

    move-result-wide v2

    .line 148
    const-string v0, ",\"holds_min\":"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2d3

    const-string v0, "\"the whole session\""

    :goto_11a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"reserve_pct\":"

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Endurance;->reserve()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    mul-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"critical_hz\":"

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v3, 0x6

    aget v3, v11, v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v11, v3

    const/4 v4, 0x2

    aget v4, v11, v4

    const/4 v5, 0x4

    aget v5, v11, v5

    const/4 v6, 0x5

    aget v6, v11, v6

    int-to-double v6, v6

    div-double/2addr v6, v12

    const/4 v8, 0x3

    aget v8, v11, v8

    invoke-virtual/range {v1 .. v8}, Lcom/isaigu/gymapp/ai/Endurance;->criticalHz(IIIIDI)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    :cond_15c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->hr()I

    move-result v0

    .line 154
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->hrCap()I

    move-result v1

    .line 155
    const-string v2, ",\"hr\":"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez v0, :cond_2de

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_170
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"hr_cap\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez v1, :cond_2e2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_180
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v0, ",\"hz_max_age\":"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->age()I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    sget-object v2, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    monitor-enter v2
    :try_end_197
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_197} :catch_2a3

    .line 158
    :try_start_197
    sget-object v0, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2ef

    .line 159
    const-string v0, ",\"events\":["

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v9

    .line 160
    :goto_1a5
    sget-object v0, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2ea

    .line 161
    if-lez v1, :cond_2e6

    const-string v0, ","

    :goto_1b1
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c4
    .catchall {:try_start_197 .. :try_end_1c4} :catchall_2f1

    .line 160
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a5

    .line 116
    :cond_1c8
    const-string v0, "training"

    goto/16 :goto_14

    .line 122
    :cond_1cc
    :try_start_1cc
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 123
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v2

    .line 124
    if-eqz v1, :cond_5f

    if-eqz v2, :cond_5f

    .line 125
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v3

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 127
    const-string v0, ",\"program\":"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    if-eqz v0, :cond_2c7

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v0

    :goto_1f0
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",\"phase\":"

    .line 128
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_2cb

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    :goto_202
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",\"min_done\":"

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v4

    div-double/2addr v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",\"min_total\":"

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    int-to-double v4, v3

    div-double/2addr v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",\"state\":\""

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine$State;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",\"strength\":"

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",\"second_strength_pct\":"

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/isaigu/gymapp/ai/AutoSession;->secondScale:D

    mul-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",\"double_allowed\":"

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"tune\":{\"on\":"

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOn()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"off\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneOff()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"hz_pct\":"

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getTuneHzPct()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2a1
    .catch Ljava/lang/Throwable; {:try_start_1cc .. :try_end_2a1} :catch_2a3

    goto/16 :goto_5f

    .line 166
    :catch_2a3
    move-exception v0

    .line 167
    const-string v1, "ai-live"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_2bc
    const/16 v0, 0x7d

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_2c7
    :try_start_2c7
    const-string v0, ""

    goto/16 :goto_1f0

    .line 128
    :cond_2cb
    const-string v0, ""

    goto/16 :goto_202

    .line 143
    :cond_2cf
    const-string v0, "null"

    goto/16 :goto_de

    .line 148
    :cond_2d3
    div-double/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11a

    .line 155
    :cond_2de
    const-string v0, "null"

    goto/16 :goto_170

    :cond_2e2
    const-string v0, "null"
    :try_end_2e4
    .catch Ljava/lang/Throwable; {:try_start_2c7 .. :try_end_2e4} :catch_2a3

    goto/16 :goto_180

    .line 161
    :cond_2e6
    :try_start_2e6
    const-string v0, ""

    goto/16 :goto_1b1

    .line 163
    :cond_2ea
    const/16 v0, 0x5d

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    :cond_2ef
    monitor-exit v2

    goto :goto_2bc

    :catchall_2f1
    move-exception v0

    monitor-exit v2
    :try_end_2f3
    .catchall {:try_start_2e6 .. :try_end_2f3} :catchall_2f1

    :try_start_2f3
    throw v0
    :try_end_2f4
    .catch Ljava/lang/Throwable; {:try_start_2f3 .. :try_end_2f4} :catch_2a3
.end method

.method static noun()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->procedure()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "\u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430\u0442\u0430"

    const-string v1, "the procedure"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "\u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v1, "the session"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method static procedure()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 51
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->map()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 55
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 52
    goto :goto_14

    .line 54
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_31

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    if-eqz v3, :cond_31

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-eq v3, v4, :cond_14

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_31
    move v0, v1

    goto :goto_14
.end method

.method static redFlag(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x45d

    const/16 v5, 0x438

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    const/16 v2, 0x16

    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "\u0437\u0430\u043c\u0430\u044f"

    aput-object v2, v4, v1

    const-string v2, "\u0432\u0438\u0435 \u043c\u0438 \u0441\u0435"

    aput-object v2, v4, v0

    const/4 v2, 0x2

    const-string v5, "\u0432\u0438e \u043c\u0438 \u0441\u0435"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "\u0433\u0430\u0434\u0438 \u043c\u0438"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "\u043f\u043e\u0432\u0440\u044a\u0449\u0430"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "\u0441\u044a\u0440\u0446\u0435\u0442\u043e"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "\u0433\u044a\u0440\u0434\u0438\u0442\u0435 \u043c\u0435"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string v5, "\u0432 \u0433\u044a\u0440\u0434\u0438\u0442\u0435"

    aput-object v5, v4, v2

    const/16 v2, 0x8

    const-string v5, "\u0437\u0430\u0434\u0443\u0445"

    aput-object v5, v4, v2

    const/16 v2, 0x9

    const-string v5, "\u043d\u0435 \u043c\u043e\u0433\u0430 \u0434\u0430 \u0434\u0438\u0448\u0430\u043c"

    aput-object v5, v4, v2

    const/16 v2, 0xa

    const-string v5, "\u043d\u0435 \u043c\u0438 \u0441\u0442\u0438\u0433\u0430 \u0432\u044a\u0437\u0434\u0443\u0445"

    aput-object v5, v4, v2

    const/16 v2, 0xb

    const-string v5, "\u043f\u0440\u0438\u043f\u0430\u0434\u0430"

    aput-object v5, v4, v2

    const/16 v2, 0xc

    const-string v5, "\u043f\u0440\u0438\u0447\u0435\u0440\u043d\u044f"

    aput-object v5, v4, v2

    const/16 v2, 0xd

    const-string v5, "\u0449\u0435 \u043f\u0440\u0438\u043f\u0430\u0434\u043d\u0430"

    aput-object v5, v4, v2

    const/16 v2, 0xe

    const-string v5, "\u0438\u0437\u0442\u0440\u044a\u043f\u043d\u0430"

    aput-object v5, v4, v2

    const/16 v2, 0xf

    const-string v5, "\u0441\u0445\u0432\u0430\u043d\u0430 \u043c\u0435"

    aput-object v5, v4, v2

    const/16 v2, 0x10

    const-string v5, "\u043a\u0440\u0430\u043c\u043f"

    aput-object v5, v4, v2

    const/16 v2, 0x11

    const-string v5, "\u043c\u043d\u043e\u0433\u043e \u043c\u0435 \u0431\u043e\u043b\u0438"

    aput-object v5, v4, v2

    const/16 v2, 0x12

    const-string v5, "\u0441\u0438\u043b\u043d\u0430 \u0431\u043e\u043b\u043a\u0430"

    aput-object v5, v4, v2

    const/16 v2, 0x13

    const-string v5, "\u043e\u0441\u0442\u0440\u0430 \u0431\u043e\u043b\u043a\u0430"

    aput-object v5, v4, v2

    const/16 v2, 0x14

    const-string v5, "\u043f\u0430\u0440\u0438 \u043c\u043d\u043e\u0433\u043e"

    aput-object v5, v4, v2

    const/16 v2, 0x15

    const-string v5, "\u0438\u0437\u0433\u0430\u0440\u044f"

    aput-object v5, v4, v2

    .line 300
    array-length v5, v4

    move v2, v1

    :goto_ad
    if-ge v2, v5, :cond_bb

    aget-object v6, v4, v2

    .line 301
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 305
    :goto_b7
    return v0

    .line 300
    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    :cond_bb
    move v0, v1

    .line 305
    goto :goto_b7
.end method

.method static reset()V
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiLive;->pending:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiLive;->hrHigh:Z

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiLive;->hrSaidMs:J

    .line 41
    sget-object v1, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    monitor-enter v1

    .line 42
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method

.method static say(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 242
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 257
    :cond_8
    :goto_8
    return-void

    .line 245
    :cond_9
    sget-object v1, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    monitor-enter v1

    .line 246
    :try_start_c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :goto_11
    sget-object v0, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_24

    .line 248
    sget-object v0, Lcom/isaigu/gymapp/ai/AiLive;->recent:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_11

    .line 250
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 251
    const-string v0, "ai-live"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;-><init>()V

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u24d8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    .line 254
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V

    .line 255
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 256
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->announce(Ljava/lang/String;)V

    goto :goto_8
.end method

.method static tick()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 178
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 179
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->dynamics()Lcom/isaigu/gymapp/ai/MapDynamics;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->pollEvents()Ljava/util/List;

    move-result-object v0

    .line 185
    :cond_11
    :goto_11
    if-eqz v0, :cond_50

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 187
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiLive;->explain([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiLive;->say(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_17

    .line 191
    :catch_2b
    move-exception v0

    .line 192
    const-string v1, "ai-live"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_44
    return-void

    .line 182
    :cond_45
    :try_start_45
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->pollEvents()Ljava/util/List;

    move-result-object v0

    goto :goto_11

    .line 190
    :cond_50
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->heart()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_53} :catch_2b

    goto :goto_44
.end method
