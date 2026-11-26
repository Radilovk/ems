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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;-><init>(I)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastText:Ljava/lang/String;

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

    .line 41
    if-nez p0, :cond_d

    .line 42
    const-string v0, "\u0431\u0435\u0437 \u043a\u0430\u043d\u0430\u043b"

    const-string v1, "no channel"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_c
    return-object v0

    .line 44
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

    .line 45
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

    .line 46
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

    .line 47
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    :goto_84
    array-length v1, v2

    if-ge v0, v1, :cond_a3

    .line 50
    shl-int v1, v5, v0

    and-int/2addr v1, p0

    if-eqz v1, :cond_9d

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a0

    const-string v1, " + "

    :goto_94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 51
    :cond_a0
    const-string v1, ""

    goto :goto_94

    .line 54
    :cond_a3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c
.end method

.method static focusAt(J)I
    .registers 4

    .prologue
    .line 109
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->at(J)I

    move-result v0

    return v0
.end method

.method static regionName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_4c

    .line 36
    const-string v0, "\u0434\u0440\u0443\u0433\u043e"

    const-string v1, "other"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 29
    :pswitch_c
    const-string v0, "\u043b\u044f\u0432\u0430 \u0440\u044a\u043a\u0430 (\u0442\u0432\u043e\u0439 \u0443\u0434\u0430\u0440)"

    const-string v1, "left hand (your punch)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 30
    :pswitch_15
    const-string v0, "\u0434\u044f\u0441\u043d\u0430 \u0440\u044a\u043a\u0430 (\u0442\u0432\u043e\u0439 \u0443\u0434\u0430\u0440)"

    const-string v1, "right hand (your punch)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 31
    :pswitch_1e
    const-string v0, "\u0442\u044f\u043b\u043e \u043e\u0442\u043f\u0440\u0435\u0434"

    const-string v1, "body front"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 32
    :pswitch_27
    const-string v0, "\u0433\u0440\u044a\u0431"

    const-string v1, "back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 33
    :pswitch_30
    const-string v0, "\u0433\u043b\u0430\u0432\u0430"

    const-string v1, "head"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 34
    :pswitch_39
    const-string v0, "\u043b\u044f\u0432\u0430 \u043f\u0440\u0435\u0434\u043c\u0438\u0448\u043d\u0438\u0446\u0430"

    const-string v1, "left forearm"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 35
    :pswitch_42
    const-string v0, "\u0434\u044f\u0441\u043d\u0430 \u043f\u0440\u0435\u0434\u043c\u0438\u0448\u043d\u0438\u0446\u0430"

    const-string v1, "right forearm"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 28
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

    .line 113
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->clear()V

    .line 114
    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->taken:I

    .line 115
    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->received:I

    .line 116
    return-void
.end method

.method public static status()Ljava/lang/String;
    .registers 8

    .prologue
    .line 59
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 60
    const-string v0, "\u0428\u043b\u0435\u043c: \u0441\u0432\u044a\u0440\u0437\u0430\u043d"

    const-string v1, "Headset: linked"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_e
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_72

    const-string v1, "\u043e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0443\u0434\u0430\u0440"

    const-string v2, "no hit yet"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    :goto_1e
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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_5a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->isListening()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 62
    const-string v0, "\u0428\u043b\u0435\u043c: \u043d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 (\u0441\u043b\u0443\u0448\u0430\u0442\u0435\u043b\u044f\u0442 \u043e\u0449\u0435 \u043d\u0435 \u043c\u0435 \u0435 \u043d\u0430\u043c\u0435\u0440\u0438\u043b)"

    const-string v1, "Headset: not linked yet"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 63
    :cond_69
    const-string v0, "\u0428\u043b\u0435\u043c: \u043d\u0435 \u0441\u043b\u0443\u0448\u0430\u043c (\u043e\u0442\u0432\u043e\u0440\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u044a\u0447\u0435\u043d \u0438\u043b\u0438 Mastogo \u0435\u043a\u0440\u0430\u043d)"

    const-string v1, "Headset: not listening"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 65
    :cond_72
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

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-wide v6, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastNs:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x3b9aca00

    div-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1e
.end method

.method public static test()V
    .registers 8

    .prologue
    const/16 v2, 0x64

    .line 72
    const/16 v0, 0x14

    new-array v3, v0, [I

    .line 73
    const/16 v0, 0xd

    aput v2, v3, v0

    .line 74
    const/16 v0, 0x10

    aput v2, v3, v0

    .line 75
    const/16 v0, 0x11

    aput v2, v3, v0

    .line 76
    new-instance v7, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;

    invoke-direct {v7}, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;-><init>()V

    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;-><init>(II[IJI)V

    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->onVrZoneHit(Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onVrZoneHit(Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;)V
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 81
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->received:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->received:I

    .line 82
    iget v0, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->region:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrZoneMap;->taken(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 83
    iget v0, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->region:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->regionName(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastText:Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastNs:J

    .line 105
    :cond_1d
    :goto_1d
    return-void

    .line 87
    :cond_1e
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->maxLevel()I

    move-result v0

    .line 88
    if-lez v0, :cond_1d

    .line 91
    sget v1, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->taken:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->taken:I

    .line 92
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 93
    iget v1, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->region:I

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->levels:[I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrZoneMap;->channels(I[I)I

    move-result v1

    .line 94
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

    .line 95
    sput-wide v8, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastNs:J

    .line 96
    if-eqz v1, :cond_87

    .line 97
    const-wide/32 v2, 0x7270e00

    iget v4, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->durationMs:I

    int-to-long v4, v4

    const-wide/32 v10, 0xf4240

    mul-long/2addr v4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 98
    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    add-long v10, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->add(IJ)V

    .line 99
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    const/4 v2, 0x3

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v3, v0, v3

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    move v7, v6

    invoke-virtual/range {v1 .. v9}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->pulse(IFJZZJ)V

    .line 101
    :cond_87
    sget-wide v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastMastogoNs:J

    sub-long v0, v8, v0

    const-wide/32 v2, 0xee6b280

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1d

    .line 102
    sput-wide v8, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastMastogoNs:J

    .line 103
    invoke-static {}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->vrHit()V

    goto :goto_1d
.end method
