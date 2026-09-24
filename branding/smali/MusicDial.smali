.class final Lcom/isaigu/gymapp/dialog/MusicDial;
.super Ljava/lang/Object;
.source "MusicDial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;
    }
.end annotation


# static fields
.field private static final BTN_DP:I = 0x2d

.field private static final DRAWABLE_GREEN:Ljava/lang/String; = "light_green_button_drawable_r30"

.field private static final DRAWABLE_RED:Ljava/lang/String; = "round_circle_drawable_r20_red"

.field private static final DRAWABLE_YELLOW:Ljava/lang/String; = "light_yellow_button_drawable_r30"

.field private static final FRAME_DP:I = 0x124

.field private static final GAP_DP:I = 0x5

.field private static final SIZE_DP:I = 0xc0

.field private static dialog:Landroid/support/v7/app/AlertDialog;

.field private static lastX:I

.field private static lastY:I

.field private static ring:Lcom/isaigu/gymapp/widget/TimerRingView;

.field private static time:Landroid/widget/TextView;

.field private static title:Landroid/widget/TextView;

.field private static viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/high16 v0, -0x80000000

    sput v0, Lcom/isaigu/gymapp/dialog/MusicDial;->lastX:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method private static addButton(Landroid/app/Activity;Landroid/widget/FrameLayout;Ljava/lang/String;FLjava/lang/String;FLandroid/view/View$OnClickListener;)V
    .registers 19

    .prologue
    .line 155
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {p0, p2, p3, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 156
    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 157
    const/4 v2, 0x0

    .line 159
    :try_start_c
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1b} :catch_a4

    move-result v2

    .line 162
    :goto_1c
    if-eqz v2, :cond_90

    .line 163
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 167
    :goto_21
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setElevation(F)V

    .line 168
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 170
    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 171
    const/high16 v4, 0x43400000    # 192.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 172
    const/high16 v5, 0x43920000    # 292.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 173
    move/from16 v0, p5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 174
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 175
    const v9, 0x800033

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 176
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float/2addr v9, v4

    add-float/2addr v9, v5

    int-to-float v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 177
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v4, v6

    sub-float v4, v5, v4

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 178
    invoke-virtual {p1, v3, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void

    .line 165
    :cond_90
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v4, 0x41b80000    # 23.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_21

    .line 160
    :catch_a4
    move-exception v4

    goto/16 :goto_1c
.end method

.method static dismiss()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 182
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_22

    .line 184
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1d

    .line 186
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sput v1, Lcom/isaigu/gymapp/dialog/MusicDial;->lastX:I

    .line 187
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sput v0, Lcom/isaigu/gymapp/dialog/MusicDial;->lastY:I

    .line 189
    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_22} :catch_2d

    .line 193
    :cond_22
    :goto_22
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 194
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 195
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    .line 196
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    .line 197
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    .line 198
    return-void

    .line 190
    :catch_2d
    move-exception v0

    goto :goto_22
.end method

.method private static fmt(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 230
    const/4 v0, 0x0

    div-int/lit16 v1, p0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, v1, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v0, v1, 0x3c

    const/16 v3, 0xa

    if-ge v0, v3, :cond_2f

    const-string v0, "0"

    :goto_20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2f
    const-string v0, ""

    goto :goto_20
.end method

.method static isShowing()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 50
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_f

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 52
    :cond_e
    :goto_e
    return v0

    .line 51
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method static refresh()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    if-nez v2, :cond_b

    .line 227
    :cond_a
    :goto_a
    return-void

    .line 206
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v4

    .line 207
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v5

    .line 208
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v2

    if-eqz v2, :cond_8a

    move v3, v0

    .line 209
    :goto_20
    if-eqz v3, :cond_8c

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v2

    if-nez v2, :cond_8c

    move v2, v0

    .line 210
    :goto_29
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-lez v4, :cond_8e

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v6, v5

    int-to-float v4, v4

    div-float v4, v6, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_37
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 211
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v2, :cond_90

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_40
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->setProgressColor(I)V

    .line 212
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    if-eqz v3, :cond_93

    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/MusicDial;->fmt(I)Ljava/lang/String;

    move-result-object v0

    :goto_4b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    if-eqz v2, :cond_96

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_54
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v0

    .line 215
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 216
    const-string v0, "\u0437\u0430\u0440\u0435\u0436\u0434\u0430\u2026"

    const-string v1, "loading\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_6b
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_a

    .line 219
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 220
    if-eqz v2, :cond_a

    .line 221
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setLiveLevel(I)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_82} :catch_83

    goto :goto_a

    .line 224
    :catch_83
    move-exception v0

    .line 225
    const-string v1, "MusicDial.refresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_8a
    move v3, v1

    .line 208
    goto :goto_20

    :cond_8c
    move v2, v1

    .line 209
    goto :goto_29

    .line 210
    :cond_8e
    const/4 v0, 0x0

    goto :goto_37

    .line 211
    :cond_90
    :try_start_90
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_40

    .line 212
    :cond_93
    const-string v0, "\u25b6"

    goto :goto_4b

    .line 213
    :cond_96
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_54

    .line 217
    :cond_99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_b3

    if-nez v2, :cond_b3

    const-string v1, "\u275a\u275a  "

    :goto_a4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_b6

    :goto_aa
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6b

    :cond_b3
    const-string v1, ""

    goto :goto_a4

    :cond_b6
    const-string v0, "\u041d\u044f\u043c\u0430 \u043f\u0435\u0441\u0435\u043d \u2014 \u2630"

    const-string v3, "No song \u2014 \u2630"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_bd} :catch_83

    move-result-object v0

    goto :goto_aa
.end method

.method static show(Landroid/app/Activity;)V
    .registers 14

    .prologue
    const/high16 v12, -0x80000000

    const/high16 v4, 0x43400000    # 192.0f

    const/high16 v11, 0x41900000    # 18.0f

    const/16 v10, 0x11

    const/4 v9, 0x0

    .line 57
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 151
    :cond_11
    :goto_11
    return-void

    .line 60
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_23

    .line 62
    :try_start_16
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 63
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_11

    .line 65
    :catch_1f
    move-exception v0

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 69
    :cond_23
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 70
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    const/high16 v0, 0x43920000    # 292.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 72
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 74
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v3, Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/TimerRingView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 76
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxDiameterDp(F)V

    .line 77
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setProgressColor(I)V

    .line 78
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v3, Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    .line 80
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    const v4, 0x3ea3d70a    # 0.32f

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setAlpha(F)V

    .line 81
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 83
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 84
    const-string v4, "0:00"

    const/high16 v5, 0x42300000    # 44.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x1

    invoke-static {p0, v4, v5, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    .line 85
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 86
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    const v5, -0x430a3d71    # -0.03f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 87
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    const-string v4, ""

    const/high16 v5, 0x41480000    # 12.5f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v4, v5, v6, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    .line 89
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 91
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 92
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 93
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v9, v5, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 97
    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v3, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;

    invoke-direct {v3}, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v0, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const-string v2, "\u00d7"

    const/high16 v3, 0x41b00000    # 22.0f

    const-string v4, "round_circle_drawable_r20_red"

    const/high16 v5, 0x42340000    # 45.0f

    new-instance v6, Lcom/isaigu/gymapp/dialog/MusicDial$1;

    invoke-direct {v6}, Lcom/isaigu/gymapp/dialog/MusicDial$1;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/dialog/MusicDial;->addButton(Landroid/app/Activity;Landroid/widget/FrameLayout;Ljava/lang/String;FLjava/lang/String;FLandroid/view/View$OnClickListener;)V

    .line 107
    const-string v2, "\u23ed"

    const-string v4, "light_green_button_drawable_r30"

    const/high16 v5, 0x42b40000    # 90.0f

    new-instance v6, Lcom/isaigu/gymapp/dialog/MusicDial$2;

    invoke-direct {v6}, Lcom/isaigu/gymapp/dialog/MusicDial$2;-><init>()V

    move-object v0, p0

    move v3, v11

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/dialog/MusicDial;->addButton(Landroid/app/Activity;Landroid/widget/FrameLayout;Ljava/lang/String;FLjava/lang/String;FLandroid/view/View$OnClickListener;)V

    .line 113
    const-string v2, "\u2630"

    const-string v4, "light_yellow_button_drawable_r30"

    const/high16 v5, 0x43070000    # 135.0f

    new-instance v6, Lcom/isaigu/gymapp/dialog/MusicDial$3;

    invoke-direct {v6}, Lcom/isaigu/gymapp/dialog/MusicDial$3;-><init>()V

    move-object v0, p0

    move v3, v11

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/dialog/MusicDial;->addButton(Landroid/app/Activity;Landroid/widget/FrameLayout;Ljava/lang/String;FLjava/lang/String;FLandroid/view/View$OnClickListener;)V

    .line 121
    :try_start_11a
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 127
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 128
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 129
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_189

    .line 131
    const v0, 0x106000d

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 132
    const v0, 0x800033

    invoke-virtual {v1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 133
    invoke-virtual {v1, v7, v7}, Landroid/view/Window;->setLayout(II)V

    .line 134
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 135
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 136
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 137
    sget v0, Lcom/isaigu/gymapp/dialog/MusicDial;->lastX:I

    if-eq v0, v12, :cond_199

    sget v0, Lcom/isaigu/gymapp/dialog/MusicDial;->lastX:I

    :goto_16b
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 138
    sget v0, Lcom/isaigu/gymapp/dialog/MusicDial;->lastX:I

    if-eq v0, v12, :cond_1a0

    sget v0, Lcom/isaigu/gymapp/dialog/MusicDial;->lastY:I

    :goto_173
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 139
    const/4 v0, 0x0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 140
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x20

    and-int/lit8 v0, v0, -0x3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 143
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 144
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 146
    :cond_189
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V
    :try_end_18c
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_18c} :catch_18e

    goto/16 :goto_11

    .line 147
    :catch_18e
    move-exception v0

    .line 148
    const-string v1, "music_dial_show"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_11

    .line 137
    :cond_199
    const/high16 v0, 0x41a00000    # 20.0f

    :try_start_19b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    goto :goto_16b

    .line 138
    :cond_1a0
    const/high16 v0, 0x43960000    # 300.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I
    :try_end_1a5
    .catch Ljava/lang/Throwable; {:try_start_19b .. :try_end_1a5} :catch_18e

    move-result v0

    goto :goto_173
.end method
