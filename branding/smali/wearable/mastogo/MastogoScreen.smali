.class public final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.super Ljava/lang/Object;
.source "MastogoScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$CloseLink;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Dismissed;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Info;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StartScan;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tick;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ScrollDown;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$SendRaw;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Copy;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Disarm;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Probe;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModToggle;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$TiltToggle;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$HitPress;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickShape;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickRotate;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepCarrier;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepPick;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepAdd;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ByHz;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMinutes;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMode;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Step;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Go;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tab;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;
    }
.end annotation


# static fields
.field static final MINUTES:[I

.field static final PREFS:Ljava/lang/String; = "xems_mastogo"

.field static final TINT:I = -0x587406

.field static current:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->MINUTES:[I

    return-void

    nop

    :array_a
    .array-data 4
        0xa
        0xf
        0x14
        0x1e
        0x2d
        0x3c
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowed()Z
    .registers 1

    .prologue
    .line 61
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->unlocked()Z

    move-result v0

    return v0
.end method

.method static groupName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 128
    packed-switch p0, :pswitch_data_1c

    .line 132
    const-string v0, "\u0416\u0435\u043d\u0441\u043a\u0438"

    const-string v1, "Female"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 129
    :pswitch_c
    const-string v0, "\u041c\u0430\u0441\u0430\u0436"

    const-string v1, "Massage"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 130
    :pswitch_15
    const-string v0, "TENS"

    goto :goto_b

    .line 131
    :pswitch_18
    const-string v0, "EMS"

    goto :goto_b

    .line 128
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method static groupOf(I)I
    .registers 2

    .prologue
    .line 124
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->group(I)I

    move-result v0

    return v0
.end method

.method static mmss(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v0, p0, 0x3c

    const/16 v2, 0xa

    if-ge v0, v2, :cond_28

    const-string v0, "0"

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    const-string v0, ""

    goto :goto_19
.end method

.method static modeName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    if-gez p0, :cond_5

    const-string v0, "\u2014"

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->name(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static offName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 149
    packed-switch p0, :pswitch_data_30

    .line 154
    const-string v0, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438 \u0441\u0435"

    const-string v1, "switched off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 150
    :pswitch_c
    const-string v0, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438 \u0441\u0435 \u2014 \u0434\u044a\u043b\u0433\u043e \u0431\u0435\u0437 \u0442\u043e\u043a"

    const-string v1, "off \u2014 idle too long"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 151
    :pswitch_15
    const-string v0, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438 \u0441\u0435 \u2014 \u0442\u0432\u044a\u0440\u0434\u0435 \u0434\u044a\u043b\u0433\u043e \u0440\u0430\u0431\u043e\u0442\u0438"

    const-string v1, "off \u2014 ran too long"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 152
    :pswitch_1e
    const-string v0, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438 \u0441\u0435 \u2014 \u0441\u043b\u0430\u0431\u0430 \u0431\u0430\u0442\u0435\u0440\u0438\u044f"

    const-string v1, "off \u2014 low battery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 153
    :pswitch_27
    const-string v0, "\u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d \u043e\u0442 \u0431\u0443\u0442\u043e\u043d\u0430"

    const-string v1, "off by its button"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 149
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_c
        :pswitch_15
        :pswitch_1e
        :pswitch_27
    .end packed-switch
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 66
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->allowed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 85
    :goto_6
    return-void

    .line 69
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->current:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 70
    if-eqz v0, :cond_2f

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-nez v1, :cond_2f

    .line 71
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    if-ne v1, p0, :cond_28

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_28

    .line 72
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_6

    .line 82
    :catch_21
    move-exception v0

    .line 83
    const-string v1, "MastogoScreen.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 76
    :cond_28
    :try_start_28
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2f} :catch_3c

    .line 80
    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->current:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 81
    sget-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->current:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->show()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_3b} :catch_21

    goto :goto_6

    .line 77
    :catch_3c
    move-exception v0

    goto :goto_2f
.end method

.method static shapeName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    packed-switch p0, :pswitch_data_42

    .line 144
    const-string v0, "\u0412\u044a\u043b\u043d\u0430"

    const-string v1, "Wave"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 138
    :pswitch_c
    const-string v0, "\u0421\u0432\u043e\u0439 \u0446\u0438\u043a\u044a\u043b"

    const-string v1, "Own cycle"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 139
    :pswitch_15
    const-string v0, "\u0420\u0430\u0431\u043e\u0442\u0430 / \u041f\u0430\u0443\u0437\u0430"

    const-string v1, "Work / Pause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 140
    :pswitch_1e
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441\u0438"

    const-string v1, "Impulses"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 141
    :pswitch_27
    const-string v0, "\u041d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435"

    const-string v1, "Ramp"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 142
    :pswitch_30
    const-string v0, "\u0422\u0440\u0438\u044a\u0433\u044a\u043b\u043d\u0438\u043a"

    const-string v1, "Triangle"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 143
    :pswitch_39
    const-string v0, "\u0421\u043b\u0443\u0447\u0430\u0439\u043d\u043e"

    const-string v1, "Random"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 137
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_27
        :pswitch_30
        :pswitch_39
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static voice(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 89
    sget-object v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->current:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 90
    if-eqz v2, :cond_11

    iget-boolean v1, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-nez v1, :cond_11

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v1

    .line 91
    :goto_d
    if-nez v1, :cond_13

    .line 92
    const/4 v0, 0x0

    .line 107
    :cond_10
    :goto_10
    return v0

    .line 90
    :cond_11
    const/4 v1, 0x0

    goto :goto_d

    .line 94
    :cond_13
    const-string v3, "start"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 95
    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-nez v1, :cond_10

    .line 96
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go()V

    goto :goto_10

    .line 98
    :cond_23
    const-string v3, "pause"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string v3, "stop"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 99
    :cond_33
    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v1, :cond_10

    .line 100
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go()V

    goto :goto_10

    .line 102
    :cond_3b
    const-string v1, "plus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 103
    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step(I)V

    goto :goto_10

    .line 104
    :cond_47
    const-string v1, "minus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 105
    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step(I)V

    goto :goto_10
.end method
