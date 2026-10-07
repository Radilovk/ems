.class public final Lcom/isaigu/gymapp/wearable/DoubleImpulse;
.super Ljava/lang/Object;
.source "DoubleImpulse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;,
        Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;,
        Lcom/isaigu/gymapp/wearable/DoubleImpulse$Runner;,
        Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;,
        Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;,
        Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;,
        Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;
    }
.end annotation


# static fields
.field static final AMBER:I = -0x3ef9

.field private static final BLINK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final BLINKS:I = 0x3

.field static final BLINK_MS:J = 0x118L

.field private static final BUTTONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field static final GREEN:I = -0xbc5fb9

.field static final GREY:I = -0x4f413b

.field static final HOLD_MS:J = 0x5dcL

.field static final HOLD_SHOW_MS:J = 0xb4L

.field static final IDLE_MS:J = 0x1388L

.field static final KEY:I = -0xd5f00

.field private static final MAIN:Landroid/os/Handler;

.field static final MUSCLE:I = 0x1

.field private static final SETUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;",
            ">;"
        }
    .end annotation
.end field

.field static final TICK_MS:J = 0x64L

.field private static idAmount:I

.field private static idLabel:I

.field private static idPauseHz:I

.field private static idPauseMa:I

.field private static idSave:I

.field private static runner:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Runner;

.field private static running:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 83
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->BLINK:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->BUTTONS:Ljava/util/Map;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .prologue
    .line 61
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->running:Z

    return p0
.end method

.method public static active(Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 119
    if-nez p0, :cond_5

    move v0, v1

    .line 127
    :goto_4
    return v0

    .line 122
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 123
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-ne v3, p0, :cond_d

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 124
    const/4 v0, 0x1

    goto :goto_4

    :cond_27
    move v0, v1

    .line 127
    goto :goto_4
.end method

.method public static active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 105
    if-nez p0, :cond_4

    .line 114
    :cond_3
    :goto_3
    return v0

    .line 108
    :cond_4
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    monitor-enter v1

    .line 109
    :try_start_7
    sget-object v2, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 110
    monitor-exit v1

    goto :goto_3

    .line 112
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_11

    .line 113
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method static varargs add(Ljava/util/List;[Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 538
    if-nez p1, :cond_3

    .line 546
    :cond_2
    return-void

    .line 541
    :cond_3
    array-length v1, p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 542
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1a

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 543
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static anyActive()Z
    .registers 2

    .prologue
    .line 132
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 133
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 134
    const/4 v0, 0x1

    .line 137
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 99
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 100
    :goto_7
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    :cond_d
    return-object v0

    :cond_e
    move-object v1, v0

    .line 99
    goto :goto_7
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 465
    if-nez p0, :cond_3

    .line 479
    :goto_2
    return-void

    .line 468
    :cond_3
    :try_start_3
    new-instance v2, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;-><init>(F)V

    .line 469
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 470
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_22

    .line 471
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_22
    const-string v1, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v3, "Double impulse"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 474
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 475
    new-instance v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;

    invoke-direct {v1, p0, p1, v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;-><init>(Landroid/view/View;Ljava/lang/Object;Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_39} :catch_3a

    goto :goto_2

    .line 476
    :catch_3a
    move-exception v1

    .line 477
    const-string v2, "index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "double bind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static blocked(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 179
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->assisted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 180
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0432\u043e\u0434\u0438 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e"

    const-string v1, "The impulse is led automatically"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_e
    return-object v0

    .line 182
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 183
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u043b\u0435\u0434\u0432\u0430 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430"

    const-string v1, "The impulse follows the music"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 185
    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static button(Lcom/isaigu/gymapp/train/model/TrainItem;)Landroid/view/View;
    .registers 2

    .prologue
    .line 456
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->BUTTONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 457
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static changed(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .prologue
    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_d

    .line 316
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_f

    .line 319
    :goto_6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->refresh()V

    .line 320
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->face(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 321
    return-void

    .line 313
    :catch_d
    move-exception v0

    goto :goto_3

    .line 317
    :catch_f
    move-exception v0

    goto :goto_6
.end method

.method static clearSecond(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    .line 306
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 307
    return-void
.end method

.method static click(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V
    .registers 8

    .prologue
    .line 198
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 230
    :cond_c
    :goto_c
    return-void

    .line 202
    :cond_d
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->blocked(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_3f

    .line 204
    const-string v0, "\u0412\u0442\u043e\u0440\u0438\u044f\u0442 \u0438\u043c\u043f\u0443\u043b\u0441 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f, \u043a\u043e\u0433\u0430\u0442\u043e \u0432\u043e\u0434\u0438\u0448 \u0440\u044a\u0447\u043d\u043e"

    const-string v2, "The second impulse changes when you lead by hand"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0x4f413b

    const-wide/16 v4, 0xa28

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_c

    .line 227
    :catch_25
    move-exception v0

    .line 228
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "double click: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 208
    :cond_3f
    :try_start_3f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->muscle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 209
    const-string v0, "\u0412 \u0440\u0435\u0436\u0438\u043c \u041c\u0443\u0441\u043a\u0443\u043b\u0438 \u043d\u044f\u043c\u0430 \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v1, "No second impulse in Muscles mode"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u0435\u043d, \u041a\u0430\u0440\u0434\u0438\u043e \u0438 \u041c\u0430\u0441\u0430\u0436 \u0438\u043c\u0430\u0442"

    const-string v2, "Main, Cardio and Massage have one"

    .line 210
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0x4f413b

    const-wide/16 v4, 0xa28

    move-object v0, p1

    .line 209
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_c

    .line 213
    :cond_5f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 214
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->off(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V

    goto :goto_c

    .line 217
    :cond_69
    iget-boolean v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v1, :cond_8a

    .line 218
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 219
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-gtz v1, :cond_83

    .line 220
    const/4 v1, 0x0

    const/16 v2, 0x64

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 222
    :cond_83
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    if-gtz v1, :cond_8a

    .line 223
    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 226
    :cond_8a
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->enter(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_8d} :catch_25

    goto/16 :goto_c
.end method

.method static enter(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 234
    new-instance v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;-><init>()V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;->last:J

    .line 236
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->snapshot(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;->seen:[I

    .line 237
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    monitor-enter v1

    .line 238
    :try_start_15
    sget-object v2, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_42

    .line 240
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->BLINK:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 242
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    .line 243
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 245
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->touch(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 246
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->save(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 247
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->haptic(Landroid/view/View;)V

    .line 248
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->changed(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 249
    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->noteSetup(Landroid/view/View;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 250
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->run()V

    .line 251
    return-void

    .line 239
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method static face(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 15

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 575
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->button(Lcom/isaigu/gymapp/train/model/TrainItem;)Landroid/view/View;

    move-result-object v7

    .line 576
    if-eqz v7, :cond_14

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    if-nez v0, :cond_15

    .line 602
    :cond_14
    :goto_14
    return-void

    .line 579
    :cond_15
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    .line 580
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v8

    .line 581
    if-eqz v8, :cond_27

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7c

    :cond_27
    move v4, v1

    .line 584
    :goto_28
    if-ne v4, v6, :cond_9a

    .line 586
    sget-object v6, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    monitor-enter v6

    .line 587
    :try_start_2d
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;

    .line 588
    monitor-exit v6
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_95

    .line 589
    if-eqz v1, :cond_9a

    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;->last:J

    sub-long/2addr v10, v12

    long-to-float v1, v10

    const v6, 0x459c4000    # 5000.0f

    div-float/2addr v1, v6

    sub-float v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 593
    :goto_4a
    iget v2, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->mode:I

    if-ne v2, v4, :cond_5c

    iget v2, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->left:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v6, 0x3b83126f    # 0.004f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_63

    .line 594
    :cond_5c
    iput v4, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->mode:I

    .line 595
    iput v1, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->left:F

    .line 596
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->invalidateSelf()V

    .line 598
    :cond_63
    if-eq v4, v5, :cond_6d

    if-eqz v8, :cond_98

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->blocked(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    :cond_6d
    const v0, 0x3ecccccd    # 0.4f

    .line 599
    :goto_70
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_14

    .line 600
    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_14

    .line 581
    :cond_7c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->muscle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v4

    if-eqz v4, :cond_84

    move v4, v5

    goto :goto_28

    :cond_84
    iget-boolean v4, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v4, :cond_8a

    move v4, v1

    goto :goto_28

    .line 582
    :cond_8a
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    if-eqz v1, :cond_92

    move v4, v6

    goto :goto_28

    :cond_92
    const/4 v1, 0x1

    move v4, v1

    goto :goto_28

    .line 588
    :catchall_95
    move-exception v0

    :try_start_96
    monitor-exit v6
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v0

    :cond_98
    move v0, v3

    .line 598
    goto :goto_70

    :cond_9a
    move v1, v2

    goto :goto_4a
.end method

.method static haptic(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 335
    if-eqz p0, :cond_6

    .line 336
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    .line 340
    :cond_6
    :goto_6
    return-void

    .line 338
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public static holding(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 142
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static ids(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 562
    sget v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idSave:I

    if-eqz v0, :cond_5

    .line 571
    :goto_4
    return-void

    .line 565
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "pauseMaValue"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idPauseMa:I

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "pauseHzValue"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idPauseHz:I

    .line 568
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "pulsePauseLabel"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idLabel:I

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "paulsestop"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idAmount:I

    .line 570
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "save"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idSave:I

    goto :goto_4
.end method

.method static leave(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;Z)V
    .registers 9

    .prologue
    .line 272
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    monitor-enter v1

    .line 273
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_30

    .line 275
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->clearSecond(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 276
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->changed(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 277
    if-eqz p2, :cond_2f

    if-eqz p1, :cond_2f

    .line 278
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v1, "Double impulse"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->title(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 1 \u21c4 \u0438\u043c\u043f\u0443\u043b\u0441 2 \u00b7 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438\u0442\u0435 \u0441\u0430 \u0437\u0430 \u0433\u043b\u0430\u0432\u043d\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v2, "Impulse 1 \u21c4 impulse 2 \u00b7 the controls set the main impulse"

    .line 279
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x3ef9

    const-wide/16 v4, 0xa28

    move-object v0, p1

    .line 278
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 282
    :cond_2f
    return-void

    .line 274
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method static muscle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 189
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 190
    :goto_7
    if-eqz v1, :cond_10

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-ne v1, v0, :cond_10

    :goto_d
    return v0

    .line 189
    :cond_e
    const/4 v1, 0x0

    goto :goto_7

    .line 190
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static noteSetup(Landroid/view/View;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 8

    .prologue
    .line 343
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 2 \u00b7 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430"

    const-string v1, "Impulse 2 \u00b7 setup"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->title(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u0417\u0430\u0434\u0440\u044a\u0436 \u0431\u0443\u0442\u043e\u043d\u0430 \u0437\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u00b7 \u043a\u043b\u0438\u043a\u043d\u0438 \u043f\u0430\u043a \u0437\u0430 \u0432\u0440\u044a\u0449\u0430\u043d\u0435 \u0432 \u0440\u0435\u0436\u0438\u043c \u0441 \u043f\u0430\u0443\u0437\u0430"

    const-string v2, "Hold the button to sync \u00b7 tap again to go back to the pause"

    .line 344
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x3ef9

    const-wide/16 v4, 0x0

    move-object v0, p0

    .line 343
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 346
    return-void
.end method

.method static off(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V
    .registers 8

    .prologue
    .line 255
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    monitor-enter v1

    .line 256
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3c

    .line 258
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_12

    .line 260
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 262
    :cond_12
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->clearSecond(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 263
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->save(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 264
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->haptic(Landroid/view/View;)V

    .line 265
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->changed(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 266
    const-string v0, "\u0420\u0435\u0436\u0438\u043c \u0441 \u043f\u0430\u0443\u0437\u0430"

    const-string v1, "Pause mode"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->title(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u0412\u0442\u043e\u0440\u0438\u044f\u0442 \u0438\u043c\u043f\u0443\u043b\u0441 \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v2, "The second impulse is off"

    .line 267
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0x4f413b

    const-wide/16 v4, 0x960

    move-object v0, p1

    .line 266
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 268
    return-void

    .line 257
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public static paint(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;[Landroid/view/View;[Landroid/view/View;)V
    .registers 15

    .prologue
    .line 487
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 535
    :cond_4
    :goto_4
    return-void

    .line 490
    :cond_5
    :try_start_5
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->row(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 491
    if-eqz v3, :cond_4

    .line 494
    sget v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idSave:I

    if-eqz v0, :cond_79

    sget v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idSave:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    .line 495
    :goto_16
    if-eqz v2, :cond_3f

    .line 496
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->BUTTONS:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    if-nez v0, :cond_3c

    .line 498
    new-instance v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;-><init>(F)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 500
    :cond_3c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->face(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 502
    :cond_3f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v4

    .line 503
    sget v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idPauseMa:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 504
    sget v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idPauseHz:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 505
    const/4 v0, 0x2

    new-array v7, v0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object v5, v7, v0

    const/4 v0, 0x1

    aput-object v6, v7, v0

    array-length v8, v7

    const/4 v0, 0x0

    move v1, v0

    :goto_5b
    if-ge v1, v8, :cond_7e

    aget-object v9, v7, v1

    .line 506
    if-eqz v9, :cond_75

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v10, 0x8

    if-eq v0, v10, :cond_75

    .line 507
    if-eqz v4, :cond_7c

    const/4 v0, 0x0

    .line 508
    :goto_6c
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v0, :cond_75

    .line 509
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 505
    :cond_75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5b

    .line 494
    :cond_79
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_16

    .line 507
    :cond_7c
    const/4 v0, 0x4

    goto :goto_6c

    .line 513
    :cond_7e
    if-eqz v4, :cond_108

    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->BLINK:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_108

    .line 514
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 515
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 516
    sget v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idLabel:I

    if-eqz v0, :cond_103

    sget v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idLabel:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 517
    :goto_9d
    sget v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idAmount:I

    if-eqz v0, :cond_106

    sget v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idAmount:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 518
    :goto_a7
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    const/4 v8, 0x0

    aput-object v5, v3, v8

    const/4 v8, 0x1

    aput-object v6, v3, v8

    const/4 v8, 0x2

    aput-object p1, v3, v8

    const/4 v8, 0x3

    aput-object v2, v3, v8

    const/4 v2, 0x4

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->add(Ljava/util/List;[Landroid/view/View;)V

    .line 519
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v5, v0, v1

    const/4 v1, 0x2

    aput-object v6, v0, v1

    invoke-static {v7, v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->add(Ljava/util/List;[Landroid/view/View;)V

    .line 520
    if-eqz p2, :cond_d0

    .line 521
    invoke-static {v4, p2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->add(Ljava/util/List;[Landroid/view/View;)V

    .line 523
    :cond_d0
    if-eqz p3, :cond_d8

    .line 524
    invoke-static {v4, p3}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->add(Ljava/util/List;[Landroid/view/View;)V

    .line 525
    invoke-static {v7, p3}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->add(Ljava/util/List;[Landroid/view/View;)V

    .line 527
    :cond_d8
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/PartPick;->icons(Landroid/view/View;)[Landroid/view/View;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->add(Ljava/util/List;[Landroid/view/View;)V

    .line 528
    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->start(Ljava/util/List;Ljava/util/List;)V
    :try_end_e6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e6} :catch_e8

    goto/16 :goto_4

    .line 532
    :catch_e8
    move-exception v0

    .line 533
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "double paint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 516
    :cond_103
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_9d

    .line 517
    :cond_106
    const/4 v0, 0x0

    goto :goto_a7

    .line 529
    :cond_108
    if-nez v4, :cond_4

    .line 530
    :try_start_10a
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->BLINK:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10f
    .catch Ljava/lang/Throwable; {:try_start_10a .. :try_end_10f} :catch_e8

    goto/16 :goto_4
.end method

.method static row(Landroid/view/View;)Landroid/view/View;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 550
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->ids(Landroid/content/Context;)V

    .line 552
    const/4 v2, 0x0

    move-object v0, p0

    :goto_a
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1d

    if-eqz v0, :cond_1d

    .line 553
    sget v3, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idSave:I

    if-eqz v3, :cond_1e

    sget v3, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->idSave:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1e

    move-object v1, v0

    .line 558
    :cond_1d
    return-object v1

    .line 556
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 552
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2f
    move-object v0, v1

    .line 556
    goto :goto_2c
.end method

.method static rows()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    sget-object v2, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    monitor-enter v2

    .line 168
    :try_start_8
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 169
    if-eqz v0, :cond_12

    .line 170
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 173
    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    .line 174
    return-object v1
.end method

.method static run()V
    .registers 4

    .prologue
    .line 384
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->runner:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Runner;

    if-nez v0, :cond_b

    .line 385
    new-instance v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Runner;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Runner;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->runner:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Runner;

    .line 387
    :cond_b
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->running:Z

    if-nez v0, :cond_1b

    .line 388
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->running:Z

    .line 389
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->runner:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Runner;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    :cond_1b
    return-void
.end method

.method static save(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .prologue
    .line 325
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_9

    .line 327
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 331
    :cond_9
    :goto_9
    return-void

    .line 329
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method static snapshot(Lcom/isaigu/gymapp/train/model/TrainItem;)[I
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 362
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->snapshot(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v4

    .line 363
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    .line 364
    if-eqz v5, :cond_2a

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    .line 366
    :goto_f
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-eqz v1, :cond_2c

    move v1, v2

    move v3, v2

    .line 367
    :goto_15
    iget-object v6, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v6, v6

    if-ge v1, v6, :cond_2d

    const/16 v6, 0x1e

    if-ge v1, v6, :cond_2d

    .line 368
    iget-object v6, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_27

    .line 369
    const/4 v6, 0x1

    shl-int/2addr v6, v1

    or-int/2addr v3, v6

    .line 367
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 364
    :cond_2a
    const/4 v0, 0x0

    goto :goto_f

    :cond_2c
    move v3, v2

    .line 373
    :cond_2d
    array-length v1, v4

    add-int/lit8 v1, v1, 0x3

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 374
    array-length v6, v4

    if-eqz v0, :cond_5c

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    :goto_3b
    aput v0, v1, v6

    .line 375
    array-length v0, v4

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    .line 376
    array-length v0, v4

    add-int/lit8 v0, v0, 0x2

    if-eqz v5, :cond_59

    iget-object v3, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v3, :cond_59

    iget-object v3, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v3, :cond_59

    .line 377
    iget-object v2, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    :cond_59
    aput v2, v1, v0

    .line 378
    return-object v1

    :cond_5c
    move v0, v2

    .line 374
    goto :goto_3b
.end method

.method static step(J)Z
    .registers 16

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 412
    .line 413
    invoke-static {v12}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->blocked(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    move v2, v3

    .line 414
    :goto_a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v4

    :cond_13
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 416
    sget-object v7, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    monitor-enter v7

    .line 417
    :try_start_22
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;

    .line 418
    monitor-exit v7
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_4b

    .line 419
    if-eqz v1, :cond_13

    .line 422
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v7

    .line 423
    if-eqz v7, :cond_45

    iget-boolean v7, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v7, :cond_45

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_45

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->muscle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v7

    if-nez v7, :cond_45

    if-eqz v2, :cond_4e

    .line 424
    :cond_45
    invoke-static {v0, v12, v4}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->leave(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;Z)V

    goto :goto_13

    :cond_49
    move v2, v4

    .line 413
    goto :goto_a

    .line 418
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v7
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0

    .line 427
    :cond_4e
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->snapshot(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v7

    .line 428
    iget-object v8, v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;->seen:[I

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 429
    iput-object v7, v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;->seen:[I

    .line 430
    iput-wide p0, v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;->last:J

    .line 432
    :cond_5e
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->button(Lcom/isaigu/gymapp/train/model/TrainItem;)Landroid/view/View;

    move-result-object v7

    .line 433
    iget-wide v8, v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;->last:J

    sub-long v8, p0, v8

    const-wide/16 v10, 0x1388

    cmp-long v1, v8, v10

    if-ltz v1, :cond_70

    .line 434
    invoke-static {v0, v7, v3}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->leave(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;Z)V

    goto :goto_13

    .line 438
    :cond_70
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->face(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    move v5, v3

    .line 439
    goto :goto_13

    .line 440
    :cond_75
    if-eqz v5, :cond_a0

    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->showing()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 441
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 442
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->button(Lcom/isaigu/gymapp/train/model/TrainItem;)Landroid/view/View;

    move-result-object v2

    .line 443
    if-eqz v2, :cond_85

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 444
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->noteSetup(Landroid/view/View;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 449
    :cond_a0
    if-nez v5, :cond_a5

    .line 450
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->hideSticky()V

    .line 452
    :cond_a5
    return v5
.end method

.method static sync(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_17

    iget-boolean v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_17

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->muscle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->blocked(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 301
    :cond_17
    :goto_17
    return v0

    .line 290
    :cond_18
    const/16 v1, 0x64

    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 291
    iget-object v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_3d

    iget-object v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v0, :cond_3d

    .line 292
    iget-object v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 293
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 295
    :cond_3d
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->touch(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 296
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->save(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 297
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->changed(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 298
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 2 = \u0438\u043c\u043f\u0443\u043b\u0441 1"

    const-string v1, "Impulse 2 = impulse 1"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->title(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0421\u0438\u043b\u0430 \u0438 \u043a\u0430\u043d\u0430\u043b\u0438 \u0438\u0437\u0440\u0430\u0432\u043d\u0435\u043d\u0438 \u00b7 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u043e\u0441\u0442\u0430\u0432\u0430 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Hz"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Strength and channels matched \u00b7 the frequency stays "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xbc5fb9

    const-wide/16 v4, 0xa28

    move-object v0, p1

    .line 298
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 301
    const/4 v0, 0x1

    goto :goto_17
.end method

.method static title(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 351
    if-eqz p0, :cond_3a

    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 352
    :goto_12
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_39

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_38} :catch_3c

    move-result-object p1

    .line 357
    :cond_39
    :goto_39
    return-object p1

    .line 351
    :cond_3a
    const/4 v0, 0x0

    goto :goto_12

    .line 355
    :catch_3c
    move-exception v0

    goto :goto_39
.end method

.method public static touch(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .prologue
    .line 147
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    monitor-enter v1

    .line 148
    if-eqz p0, :cond_17

    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;

    .line 149
    :goto_d
    if-eqz v0, :cond_15

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;->last:J

    .line 152
    :cond_15
    monitor-exit v1

    .line 153
    return-void

    .line 148
    :cond_17
    const/4 v0, 0x0

    goto :goto_d

    .line 152
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static touchAll()V
    .registers 5

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 158
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    monitor-enter v1

    .line 159
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->SETUP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;

    .line 160
    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Setup;->last:J

    goto :goto_11

    .line 162
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    .line 163
    return-void
.end method
