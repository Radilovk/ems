.class public final Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;
.super Ljava/lang/Object;
.source "VrZoneRouter.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/vr/VrZoneSink;


# static fields
.field private static final FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

.field static final MASTOGO_GAP_NS:J = 0xee6b280L

.field private static volatile lastMastogoNs:J

.field static volatile lastNs:J

.field static volatile lastText:Ljava/lang/String;

.field static volatile received:I

.field static volatile taken:I

.field static volatile unitMs:J

.field static volatile wifiMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, -0x1

    .line 18
    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;-><init>(I)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastText:Ljava/lang/String;

    .line 27
    sput-wide v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->wifiMs:J

    .line 28
    sput-wide v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->unitMs:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static channelNames(I)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 44
    if-nez p0, :cond_d

    .line 45
    const-string v0, "\u0431\u0435\u0437 \u043a\u0430\u043d\u0430\u043b"

    const-string v1, "no channel"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_c
    return-object v0

    .line 47
    :cond_d
    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "\u0433\u044a\u0440\u0434\u0438"

    const-string v3, "chest"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v1, "\u043a\u043e\u0440\u0435\u043c"

    const-string v3, "abs"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    const/4 v1, 0x2

    const-string v3, "\u043f\u0440\u0435\u0434. \u0431\u0435\u0434\u0440\u043e"

    const-string v4, "front thigh"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "\u043f\u0440\u0430\u0441\u0435\u0446"

    const-string v4, "calf"

    .line 48
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "\u0440\u044a\u0446\u0435"

    const-string v4, "arms"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "\u0442\u0440\u0430\u043f\u0435\u0446"

    const-string v4, "traps"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "\u0433\u0440\u044a\u0431"

    const-string v4, "back"

    .line 49
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "\u043a\u0440\u044a\u0441\u0442"

    const-string v4, "lower back"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v4, "glutes"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "\u0437\u0430\u0434. \u0431\u0435\u0434\u0440\u043e"

    const-string v4, "back thigh"

    .line 50
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    :goto_84
    array-length v1, v2

    if-ge v0, v1, :cond_a3

    .line 53
    shl-int v1, v5, v0

    and-int/2addr v1, p0

    if-eqz v1, :cond_9d

    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a0

    const-string v1, " + "

    :goto_94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 54
    :cond_a0
    const-string v1, ""

    goto :goto_94

    .line 57
    :cond_a3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c
.end method

.method static focusAt(J)I
    .registers 4

    .prologue
    .line 119
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->at(J)I

    move-result v0

    return v0
.end method

.method static regionName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 31
    packed-switch p0, :pswitch_data_4c

    .line 39
    const-string v0, "\u0434\u0440\u0443\u0433\u043e"

    const-string v1, "other"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 32
    :pswitch_c
    const-string v0, "\u043b\u044f\u0432\u0430 \u0440\u044a\u043a\u0430 (\u0442\u0432\u043e\u0439 \u0443\u0434\u0430\u0440)"

    const-string v1, "left hand (your punch)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 33
    :pswitch_15
    const-string v0, "\u0434\u044f\u0441\u043d\u0430 \u0440\u044a\u043a\u0430 (\u0442\u0432\u043e\u0439 \u0443\u0434\u0430\u0440)"

    const-string v1, "right hand (your punch)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 34
    :pswitch_1e
    const-string v0, "\u0442\u044f\u043b\u043e \u043e\u0442\u043f\u0440\u0435\u0434"

    const-string v1, "body front"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 35
    :pswitch_27
    const-string v0, "\u0433\u0440\u044a\u0431"

    const-string v1, "back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 36
    :pswitch_30
    const-string v0, "\u0433\u043b\u0430\u0432\u0430"

    const-string v1, "head"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 37
    :pswitch_39
    const-string v0, "\u043b\u044f\u0432\u0430 \u043f\u0440\u0435\u0434\u043c\u0438\u0448\u043d\u0438\u0446\u0430"

    const-string v1, "left forearm"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 38
    :pswitch_42
    const-string v0, "\u0434\u044f\u0441\u043d\u0430 \u043f\u0440\u0435\u0434\u043c\u0438\u0448\u043d\u0438\u0446\u0430"

    const-string v1, "right forearm"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 31
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_15
        :pswitch_1e
        :pswitch_27
        :pswitch_30
        :pswitch_39
        :pswitch_42
    .end packed-switch
.end method

.method static reset()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 123
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->clear()V

    .line 124
    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->taken:I

    .line 125
    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->received:I

    .line 126
    return-void
.end method

.method public static setUnitMs(J)V
    .registers 2

    .prologue
    .line 76
    sput-wide p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->unitMs:J

    .line 77
    return-void
.end method

.method public static status()Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v6, 0x0

    .line 62
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 63
    const-string v0, "\u0428\u043b\u0435\u043c: \u0441\u0432\u044a\u0440\u0437\u0430\u043d"

    const-string v1, "Headset: linked"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_10
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_cc

    const-string v1, "\u043e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0443\u0434\u0430\u0440"

    const-string v2, "no hit yet"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 \u0443\u0434\u0430\u0440\u0438 \u043f\u043e \u0442\u0435\u0431: "

    const-string v3, " \u00b7 hits taken: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->taken:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (\u0432\u0441\u0438\u0447\u043a\u043e: "

    const-string v3, " (all: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->received:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    sget-wide v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->wifiMs:J

    cmp-long v0, v2, v6

    if-ltz v0, :cond_102

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u00b7 Wi-Fi "

    const-string v3, " \u00b7 Wi-Fi "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->wifiMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    sget-wide v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->unitMs:J

    cmp-long v0, v2, v6

    if-ltz v0, :cond_106

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u00b7 \u0434\u043e Mastogo "

    const-string v3, " \u00b7 to Mastogo "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->unitMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0

    .line 64
    :cond_b2
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->isListening()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 65
    const-string v0, "\u0428\u043b\u0435\u043c: \u043d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 (\u0441\u043b\u0443\u0448\u0430\u0442\u0435\u043b\u044f\u0442 \u043e\u0449\u0435 \u043d\u0435 \u043c\u0435 \u0435 \u043d\u0430\u043c\u0435\u0440\u0438\u043b)"

    const-string v1, "Headset: not linked yet"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 66
    :cond_c2
    const-string v0, "\u0428\u043b\u0435\u043c: \u043d\u0435 \u0441\u043b\u0443\u0448\u0430\u043c (\u043e\u0442\u0432\u043e\u0440\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u044a\u0447\u0435\u043d \u0438\u043b\u0438 Mastogo \u0435\u043a\u0440\u0430\u043d)"

    const-string v1, "Headset: not listening"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 68
    :cond_cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 \u043f\u0440\u0435\u0434\u0438 "

    const-string v3, " \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-wide v4, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastNs:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_20

    .line 71
    :cond_102
    const-string v0, ""

    goto/16 :goto_7e

    .line 72
    :cond_106
    const-string v0, ""

    goto :goto_a9
.end method

.method public static test()V
    .registers 8

    .prologue
    const/16 v2, 0x64

    .line 81
    const/16 v0, 0x14

    new-array v3, v0, [I

    .line 82
    const/16 v0, 0xd

    aput v2, v3, v0

    .line 83
    const/16 v0, 0x10

    aput v2, v3, v0

    .line 84
    const/16 v0, 0x11

    aput v2, v3, v0

    .line 85
    new-instance v7, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;

    invoke-direct {v7}, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;-><init>()V

    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;-><init>(II[IJI)V

    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->onVrZoneHit(Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;)V

    .line 86
    return-void
.end method


# virtual methods
.method public onVrZoneHit(Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;)V
    .registers 14

    .prologue
    const-wide/32 v10, 0xf4240

    const/4 v6, 0x0

    .line 90
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->received:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->received:I

    .line 91
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->latencyNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2e

    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->latencyNs:J

    div-long/2addr v0, v10

    :goto_15
    sput-wide v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->wifiMs:J

    .line 92
    iget v0, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->region:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrZoneMap;->taken(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 93
    iget v0, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->region:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->regionName(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastText:Ljava/lang/String;

    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastNs:J

    .line 115
    :cond_2d
    :goto_2d
    return-void

    .line 91
    :cond_2e
    const-wide/16 v0, -0x1

    goto :goto_15

    .line 97
    :cond_31
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->maxLevel()I

    move-result v0

    .line 98
    if-lez v0, :cond_2d

    .line 101
    sget v1, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->taken:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->taken:I

    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 103
    iget v1, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->region:I

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->levels:[I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrZoneMap;->channels(I[I)I

    move-result v1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->region:I

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->regionName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2192 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->channelNames(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + Mastogo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastText:Ljava/lang/String;

    .line 105
    sput-wide v8, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastNs:J

    .line 106
    if-eqz v1, :cond_97

    .line 107
    const-wide/32 v2, 0x7270e00

    iget v4, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->durationMs:I

    int-to-long v4, v4

    mul-long/2addr v4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 108
    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    add-long v10, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->add(IJ)V

    .line 109
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    const/4 v2, 0x3

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v3, v0, v3

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    move v7, v6

    invoke-virtual/range {v1 .. v9}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->pulse(IFJZZJ)V

    .line 111
    :cond_97
    sget-wide v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastMastogoNs:J

    sub-long v0, v8, v0

    const-wide/32 v2, 0xee6b280

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2d

    .line 112
    sput-wide v8, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastMastogoNs:J

    .line 113
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->vrHit(J)V

    goto :goto_2d
.end method
