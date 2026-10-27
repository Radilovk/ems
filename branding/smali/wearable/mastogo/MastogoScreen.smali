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
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickShape;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickRotate;,
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
    .line 49
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowed()Z
    .registers 1

    .prologue
    .line 56
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->unlocked()Z

    move-result v0

    return v0
.end method

.method static groupName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    if-nez p0, :cond_5

    const-string v0, "TENS"

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string v0, "EMS"

    goto :goto_4

    :cond_b
    const-string v0, "\u0421\u043c\u0435\u0441\u0435\u043d\u0438"

    const-string v1, "Mixed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static groupOf(I)I
    .registers 2

    .prologue
    .line 95
    const/16 v0, 0xc

    if-ge p0, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x15

    if-ge p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x2

    goto :goto_5
.end method

.method static mmss(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 124
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
    .registers 4

    .prologue
    .line 91
    if-gez p0, :cond_5

    const-string v0, "\u2014"

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041c\u043e\u0434\u0443\u043b "

    const-string v2, "Module "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static offName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 114
    packed-switch p0, :pswitch_data_30

    .line 119
    const-string v0, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438 \u0441\u0435"

    const-string v1, "switched off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 115
    :pswitch_c
    const-string v0, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438 \u0441\u0435 \u2014 \u0434\u044a\u043b\u0433\u043e \u0431\u0435\u0437 \u0442\u043e\u043a"

    const-string v1, "off \u2014 idle too long"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 116
    :pswitch_15
    const-string v0, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438 \u0441\u0435 \u2014 \u0442\u0432\u044a\u0440\u0434\u0435 \u0434\u044a\u043b\u0433\u043e \u0440\u0430\u0431\u043e\u0442\u0438"

    const-string v1, "off \u2014 ran too long"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 117
    :pswitch_1e
    const-string v0, "\u0438\u0437\u043a\u043b\u044e\u0447\u0438 \u0441\u0435 \u2014 \u0441\u043b\u0430\u0431\u0430 \u0431\u0430\u0442\u0435\u0440\u0438\u044f"

    const-string v1, "off \u2014 low battery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 118
    :pswitch_27
    const-string v0, "\u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d \u043e\u0442 \u0431\u0443\u0442\u043e\u043d\u0430"

    const-string v1, "off by its button"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 114
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
    .line 61
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->allowed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 80
    :goto_6
    return-void

    .line 64
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->current:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 65
    if-eqz v0, :cond_2f

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-nez v1, :cond_2f

    .line 66
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    if-ne v1, p0, :cond_28

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_28

    .line 67
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_6

    .line 77
    :catch_21
    move-exception v0

    .line 78
    const-string v1, "MastogoScreen.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 71
    :cond_28
    :try_start_28
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2f} :catch_3c

    .line 75
    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->current:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 76
    sget-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->current:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->show()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_3b} :catch_21

    goto :goto_6

    .line 72
    :catch_3c
    move-exception v0

    goto :goto_2f
.end method

.method static shapeName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    packed-switch p0, :pswitch_data_3a

    .line 109
    const-string v0, "\u0412\u044a\u043b\u043d\u0430"

    const-string v1, "Wave"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 104
    :pswitch_c
    const-string v0, "\u0420\u0430\u0431\u043e\u0442\u0430 / \u041f\u0430\u0443\u0437\u0430"

    const-string v1, "Work / Pause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 105
    :pswitch_15
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441\u0438"

    const-string v1, "Impulses"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 106
    :pswitch_1e
    const-string v0, "\u041d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435"

    const-string v1, "Ramp"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 107
    :pswitch_27
    const-string v0, "\u0422\u0440\u0438\u044a\u0433\u044a\u043b\u043d\u0438\u043a"

    const-string v1, "Triangle"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 108
    :pswitch_30
    const-string v0, "\u0421\u043b\u0443\u0447\u0430\u0439\u043d\u043e"

    const-string v1, "Random"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 103
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_1e
        :pswitch_27
        :pswitch_30
        :pswitch_c
    .end packed-switch
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
