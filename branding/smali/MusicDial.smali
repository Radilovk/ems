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

.field private static playView:Landroid/view/View;

.field private static ring:Lcom/isaigu/gymapp/widget/TimerRingView;

.field private static time:Landroid/widget/TextView;

.field private static title:Landroid/widget/TextView;

.field private static viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const/high16 v0, -0x80000000

    sput v0, Lcom/isaigu/gymapp/dialog/MusicDial;->lastX:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method private static addButton(Landroid/app/Activity;Landroid/widget/FrameLayout;Ljava/lang/String;FLjava/lang/String;FLandroid/view/View$OnClickListener;)V
    .registers 11

    .line 162
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p2, p3, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    .line 163
    const/16 p3, 0x11

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 164
    nop

    .line 166
    const/4 p3, 0x0

    :try_start_d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p4, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1c

    .line 168
    goto :goto_1e

    .line 167
    :catchall_1c
    move-exception p4

    const/4 p4, 0x0

    .line 169
    :goto_1e
    if-eqz p4, :cond_24

    .line 170
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_34

    .line 172
    :cond_24
    sget p4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v0, 0x41b80000    # 23.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p4, v0, p3, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :goto_34
    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setElevation(F)V

    .line 175
    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 177
    const/high16 p3, 0x42340000    # 45.0f

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p3

    .line 178
    const/high16 p4, 0x43400000    # 192.0f

    invoke-static {p0, p4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p4

    int-to-float p4, p4

    const/high16 p6, 0x40000000    # 2.0f

    div-float/2addr p4, p6

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p4, v0

    int-to-float v0, p3

    div-float/2addr v0, p6

    add-float/2addr p4, v0

    .line 179
    const/high16 v1, 0x43920000    # 292.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p6

    .line 180
    float-to-double p5, p5

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p5

    .line 181
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    const p3, 0x800033

    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 183
    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p3, v2

    mul-float p3, p3, p4

    add-float/2addr p3, p0

    sub-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 184
    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    double-to-float p3, p5

    mul-float p4, p4, p3

    sub-float/2addr p0, p4

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 185
    invoke-virtual {p1, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    return-void
.end method

.method static dismiss()V
    .registers 2

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_21

    .line 191
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_1a

    .line 193
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sput v1, Lcom/isaigu/gymapp/dialog/MusicDial;->lastX:I

    .line 194
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sput v0, Lcom/isaigu/gymapp/dialog/MusicDial;->lastY:I

    .line 196
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    .line 198
    goto :goto_21

    .line 197
    :catchall_20
    move-exception v0

    .line 200
    :cond_21
    :goto_21
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 201
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 202
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    .line 203
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    .line 204
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->playView:Landroid/view/View;

    .line 205
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    .line 206
    return-void
.end method

.method private static fmt(I)Ljava/lang/String;
    .registers 3

    .line 242
    div-int/lit16 p0, p0, 0x3e8

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p0, p0, 0x3c

    const/16 v1, 0xa

    if-ge p0, v1, :cond_1f

    const-string v1, "0"

    goto :goto_21

    :cond_1f
    const-string v1, ""

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isShowing()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 53
    :catchall_f
    move-exception v1

    .line 54
    return v0
.end method

.method static refresh()V
    .registers 8

    .line 210
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_d5

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    if-nez v0, :cond_a

    goto/16 :goto_d5

    .line 214
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v0

    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v1

    .line 216
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    .line 217
    :goto_23
    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    .line 218
    :goto_2d
    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-lez v0, :cond_3b

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v1

    int-to-float v0, v0

    div-float/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    invoke-virtual {v5, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 219
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v3, :cond_46

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_48

    :cond_46
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_48
    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/widget/TimerRingView;->setProgressColor(I)V

    .line 220
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;
    :try_end_4d
    .catchall {:try_start_a .. :try_end_4d} :catchall_ce

    const-string v5, ""

    if-eqz v2, :cond_56

    :try_start_51
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicDial;->fmt(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_57

    :cond_56
    move-object v1, v5

    :goto_57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v2, :cond_62

    const/4 v6, 0x0

    goto :goto_64

    :cond_62
    const/16 v6, 0x8

    :goto_64
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->playView:Landroid/view/View;

    if-eqz v0, :cond_74

    .line 223
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->playView:Landroid/view/View;

    if-eqz v2, :cond_71

    const/16 v4, 0x8

    :cond_71
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_74
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    if-eqz v3, :cond_7b

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_7d

    :cond_7b
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_7d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v0

    .line 227
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v4

    if-eqz v4, :cond_95

    .line 228
    const-string v0, "\u0437\u0430\u0440\u0435\u0436\u0434\u0430\u2026"

    const-string v2, "loading\u2026"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    .line 229
    :cond_95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_a0

    if-nez v3, :cond_a0

    const-string v5, "\u275a\u275a  "

    :cond_a0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a6

    :goto_a5
    goto :goto_af

    :cond_a6
    const-string v0, "\u041d\u044f\u043c\u0430 \u043f\u0435\u0441\u0435\u043d \u2014 \u2630"

    const-string v2, "No song \u2014 \u2630"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    :goto_af
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_b6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_cd

    .line 231
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 232
    if-eqz v3, :cond_cd

    .line 233
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setLiveLevel(I)V
    :try_end_cd
    .catchall {:try_start_51 .. :try_end_cd} :catchall_ce

    .line 238
    :cond_cd
    goto :goto_d4

    .line 236
    :catchall_ce
    move-exception v0

    .line 237
    const-string v1, "MusicDial.refresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    :goto_d4
    return-void

    .line 211
    :cond_d5
    :goto_d5
    return-void
.end method

.method static show(Landroid/app/Activity;)V
    .registers 14

    .line 59
    if-eqz p0, :cond_1be

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_1be

    .line 62
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 64
    :try_start_f
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 65
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_16

    .line 66
    return-void

    .line 67
    :catchall_16
    move-exception v0

    .line 68
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 71
    :cond_19
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/high16 v2, 0x43920000    # 292.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    .line 74
    const/high16 v2, 0x43400000    # 192.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 76
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v5, Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/widget/TimerRingView;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 78
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxDiameterDp(F)V

    .line 79
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/widget/TimerRingView;->setProgressColor(I)V

    .line 80
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicDial;->ring:Lcom/isaigu/gymapp/widget/TimerRingView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v2, Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    .line 82
    const v5, 0x3ea3d70a    # 0.32f

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setAlpha(F)V

    .line 83
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicDial;->viz:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 85
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 86
    const/high16 v6, 0x42300000    # 44.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x1

    const-string v10, "0:00"

    invoke-static {p0, v10, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    sput-object v6, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    .line 87
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    const v7, -0x430a3d71    # -0.03f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 89
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicDial;->time:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/isaigu/gymapp/dialog/MusicDial;->playView:Landroid/view/View;

    .line 91
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v8, 0x7

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-direct {v7, v8, v10}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicDial;->playView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 94
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicDial;->playView:Landroid/view/View;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42500000    # 52.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v7, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    const/high16 v6, 0x41480000    # 12.5f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const-string v8, ""

    const/4 v11, 0x0

    invoke-static {p0, v8, v6, v7, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    sput-object v6, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    .line 96
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 98
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 99
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    const/high16 v7, 0x42f00000    # 120.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 100
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v11, v7, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicDial;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 104
    invoke-virtual {v4, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;-><init>()V

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v7, 0x42340000    # 45.0f

    new-instance v8, Lcom/isaigu/gymapp/dialog/MusicDial$1;

    invoke-direct {v8}, Lcom/isaigu/gymapp/dialog/MusicDial$1;-><init>()V

    const-string v4, "\u00d7"

    const-string v6, "round_circle_drawable_r20_red"

    move-object v2, p0

    move-object v3, v0

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/dialog/MusicDial;->addButton(Landroid/app/Activity;Landroid/widget/FrameLayout;Ljava/lang/String;FLjava/lang/String;FLandroid/view/View$OnClickListener;)V

    .line 114
    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v7, 0x42b40000    # 90.0f

    new-instance v8, Lcom/isaigu/gymapp/dialog/MusicDial$2;

    invoke-direct {v8}, Lcom/isaigu/gymapp/dialog/MusicDial$2;-><init>()V

    const-string v4, "\u23ed"

    const-string v6, "light_green_button_drawable_r30"

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/dialog/MusicDial;->addButton(Landroid/app/Activity;Landroid/widget/FrameLayout;Ljava/lang/String;FLjava/lang/String;FLandroid/view/View$OnClickListener;)V

    .line 120
    const/high16 v7, 0x43070000    # 135.0f

    new-instance v8, Lcom/isaigu/gymapp/dialog/MusicDial$3;

    invoke-direct {v8}, Lcom/isaigu/gymapp/dialog/MusicDial$3;-><init>()V

    const-string v4, "\u2630"

    const-string v6, "light_yellow_button_drawable_r30"

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/dialog/MusicDial;->addButton(Landroid/app/Activity;Landroid/widget/FrameLayout;Ljava/lang/String;FLjava/lang/String;FLandroid/view/View$OnClickListener;)V

    .line 128
    :try_start_138
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 133
    invoke-virtual {v0, v11}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 134
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v11}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 135
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 136
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_1b1

    .line 138
    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 139
    const v2, 0x800033

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 140
    invoke-virtual {v0, v9, v9}, Landroid/view/Window;->setLayout(II)V

    .line 141
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 142
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 143
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 144
    sget v3, Lcom/isaigu/gymapp/dialog/MusicDial;->lastX:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_188

    sget v3, Lcom/isaigu/gymapp/dialog/MusicDial;->lastX:I

    goto :goto_18e

    :cond_188
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    :goto_18e
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 145
    sget v3, Lcom/isaigu/gymapp/dialog/MusicDial;->lastX:I

    if-eq v3, v4, :cond_197

    sget p0, Lcom/isaigu/gymapp/dialog/MusicDial;->lastY:I

    goto :goto_19d

    :cond_197
    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    :goto_19d
    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 146
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 147
    iget p0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p0, v10

    or-int/lit8 p0, p0, 0x20

    and-int/lit8 p0, p0, -0x3

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 150
    invoke-virtual {v0, v12}, Landroid/view/Window;->clearFlags(I)V

    .line 151
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 153
    :cond_1b1
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V
    :try_end_1b4
    .catchall {:try_start_138 .. :try_end_1b4} :catchall_1b5

    .line 157
    goto :goto_1bd

    .line 154
    :catchall_1b5
    move-exception p0

    .line 155
    const-string v0, "music_dial_show"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 158
    :goto_1bd
    return-void

    .line 60
    :cond_1be
    :goto_1be
    return-void
.end method
