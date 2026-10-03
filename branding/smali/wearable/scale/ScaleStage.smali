.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.super Ljava/lang/Object;
.source "ScaleStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Next;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breathe;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Pulse;
    }
.end annotation


# static fields
.field static final P_CONNECT:I = 0x0

.field static final P_DONE:I = 0x6

.field static final P_NO_BT:I = 0x7

.field static final P_REVIEW:I = 0x4

.field static final P_SCAN:I = 0x3

.field static final P_SETTLE:I = 0x2

.field static final P_STEP_OFF:I = 0x5

.field static final P_STEP_ON:I = 0x1

.field static final SCAN_S:D = 9.0

.field static final STEADY_KG:D = 0.15

.field static final STEADY_MS:J = 0x5dcL


# instance fields
.field final a:Landroid/app/Activity;

.field anchorKg:D

.field anchorT:J

.field breathe:Landroid/animation/ValueAnimator;

.field final chip:Landroid/widget/TextView;

.field final cover:Landroid/view/View;

.field final female:Z

.field final film:Landroid/view/TextureView;

.field filmOn:Z

.field filmReady:Z

.field final hero:Landroid/widget/ImageView;

.field final live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

.field final main:Landroid/os/Handler;

.field needOff:Z

.field phase:I

.field player:Landroid/media/MediaPlayer;

.field final quality:Landroid/widget/LinearLayout;

.field final results:Landroid/widget/TextView;

.field final root:Landroid/widget/LinearLayout;

.field final round:Landroid/widget/TextView;

.field scanStart:J

.field final stableChip:Landroid/widget/TextView;

.field final steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

.field final sub:Landroid/widget/TextView;

.field final theatre:Landroid/widget/FrameLayout;

.field final tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

.field final title:Landroid/widget/TextView;

.field final unit:Landroid/widget/TextView;

.field final weight:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .registers 15

    .prologue
    const/high16 v11, 0x41400000    # 12.0f

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    .line 85
    iput v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    .line 89
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    .line 96
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->a:Landroid/app/Activity;

    .line 97
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->female:Z

    .line 98
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 102
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    .line 103
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    const v2, -0xfaf8f5

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v0

    int-to-float v3, v0

    if-eqz p2, :cond_2bc

    const v0, -0xc138

    :goto_46
    const/16 v4, 0x5a

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v4

    .line 103
    invoke-static {v2, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 108
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->film:Landroid/view/TextureView;

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->film:Landroid/view/TextureView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->film:Landroid/view/TextureView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->cover:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->cover:Landroid/view/View;

    const v1, -0xfaf8f5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->cover:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xems/body/scale/measure/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_2c1

    const-string v0, "female"

    :goto_d0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-hero.webp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->load(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_e9

    .line 121
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    :cond_e9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    const-string v0, ""

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {p1, v0, v1, v8, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->chip:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->chip:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 127
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800033

    invoke-direct {v0, v9, v9, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 129
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 130
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->chip:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    const-string v0, "8 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0430 \u00b7 20 \u0438 100 kHz \u00b7 5 \u0437\u043e\u043d\u0438"

    const-string v1, "8 electrodes \u00b7 20 and 100 kHz \u00b7 5 zones"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x66000001

    invoke-static {p1, v0, v11, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x800055

    invoke-direct {v1, v9, v9, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 135
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 136
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    .line 142
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42900000    # 72.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    const-string v1, ""

    const/high16 v2, 0x41f00000    # 30.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p1, v1, v2, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    .line 144
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const/16 v2, 0xe

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    const-string v1, ""

    const/high16 v2, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    .line 146
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 147
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 149
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 150
    const-string v2, "\u2014"

    const/high16 v3, 0x42880000    # 68.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    .line 151
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 152
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    const-string v2, " \u043a\u0433"

    const-string v3, " kg"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->unit:Landroid/widget/TextView;

    .line 154
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->unit:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    invoke-virtual {v2, v7, v7, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 155
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->unit:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    .line 158
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v4

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 159
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 162
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    .line 165
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v8, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 167
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 168
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->round:Landroid/widget/TextView;

    .line 169
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->round:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    .line 171
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    const-string v1, "\u0420\u0435\u0437\u0443\u043b\u0442\u0430\u0442\u0438 \u203a"

    const-string v2, "Results \u203a"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->results:Landroid/widget/TextView;

    .line 174
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 176
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->results:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 179
    return-void

    .line 103
    :cond_2bc
    const v0, -0xc74208

    goto/16 :goto_46

    .line 119
    :cond_2c1
    const-string v0, "male"

    goto/16 :goto_d0
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 569
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_15

    move-result-object v1

    .line 571
    :try_start_8
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_10

    move-result-object v0

    .line 573
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 576
    :goto_f
    return-object v0

    .line 573
    :catchall_10
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 574
    throw v0
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_15

    .line 575
    :catch_15
    move-exception v0

    .line 576
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static videoFile(Landroid/content/Context;Z)Ljava/io/File;
    .registers 8

    .prologue
    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_44

    const-string v0, "female"

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xems_scale_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_47

    .line 563
    :goto_43
    return-object v0

    .line 542
    :cond_44
    const-string v0, "male"

    goto :goto_9

    .line 548
    :cond_47
    :try_start_47
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xems/body/scale/measure/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 549
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_67} :catch_7f

    .line 551
    const v3, 0x8000

    :try_start_6a
    new-array v3, v3, [B

    .line 553
    :goto_6c
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_87

    .line 554
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_76
    .catchall {:try_start_6a .. :try_end_76} :catchall_77

    goto :goto_6c

    .line 557
    :catchall_77
    move-exception v0

    :try_start_78
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 558
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 559
    throw v0
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7f} :catch_7f

    .line 561
    :catch_7f
    move-exception v0

    .line 562
    const-string v1, "ScaleStage.videoFile"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 563
    const/4 v0, 0x0

    goto :goto_43

    .line 557
    :cond_87
    :try_start_87
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 558
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8d} :catch_7f

    goto :goto_43
.end method


# virtual methods
.method addQ(Ljava/lang/String;Z)V
    .registers 11

    .prologue
    const/4 v7, -0x2

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v5, 0x40a00000    # 5.0f

    .line 296
    if-eqz p2, :cond_71

    const v0, -0xdd3aa2

    .line 297
    :goto_a
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_75

    const-string v1, "\u2713 "

    :goto_15
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41500000    # 13.0f

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 298
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 299
    const/16 v2, 0x1e

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x8c

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 302
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 303
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 305
    return-void

    .line 296
    :cond_71
    const v0, -0xa61f5

    goto :goto_a

    .line 297
    :cond_75
    const-string v1, "! "

    goto :goto_15
.end method

.method breathe(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 449
    if-eqz p1, :cond_36

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_36

    .line 450
    new-array v0, v4, [F

    fill-array-data v0, :array_54

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe:Landroid/animation/ValueAnimator;

    .line 451
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x960

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 452
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 453
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 454
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breathe;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breathe;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 455
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 463
    :cond_35
    :goto_35
    return-void

    .line 456
    :cond_36
    if-nez p1, :cond_35

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_35

    .line 457
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe:Landroid/animation/ValueAnimator;

    .line 459
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 460
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 461
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_35

    .line 450
    :array_54
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method finished(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 319
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 320
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    return-void
.end method

.method fit(II)V
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 517
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->film:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->film:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    .line 518
    if-lez p1, :cond_16

    if-lez p2, :cond_16

    if-lez v0, :cond_16

    if-gtz v1, :cond_17

    .line 525
    :cond_16
    :goto_16
    return-void

    .line 521
    :cond_17
    int-to-float v2, v0

    int-to-float v3, p1

    div-float/2addr v2, v3

    int-to-float v3, v1

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 522
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 523
    int-to-float v4, p1

    mul-float/2addr v4, v2

    int-to-float v5, v0

    div-float/2addr v4, v5

    int-to-float v5, p2

    mul-float/2addr v2, v5

    int-to-float v5, v1

    div-float/2addr v2, v5

    int-to-float v0, v0

    div-float/2addr v0, v6

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 524
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->film:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_16
.end method

.method linkState(I)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x7

    .line 188
    packed-switch p1, :pswitch_data_24

    .line 206
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 191
    :pswitch_6
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-ne v0, v1, :cond_5

    .line 192
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_5

    .line 196
    :pswitch_13
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-le v0, v2, :cond_1b

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-ne v0, v1, :cond_5

    .line 197
    :cond_1b
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_5

    .line 201
    :pswitch_1f
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_5

    .line 188
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_13
        :pswitch_5
        :pswitch_5
        :pswitch_1f
    .end packed-switch
.end method

.method liveWeight(DZ)V
    .registers 21

    .prologue
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const/4 v13, 0x2

    const/4 v5, 0x1

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    const/4 v12, 0x3

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    mul-double v6, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    if-eqz p3, :cond_66

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_22
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->add(DZ)V

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 213
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorKg:D

    sub-double v8, p1, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fc3333333333333L    # 0.15

    cmpl-double v4, v8, v10

    if-lez v4, :cond_69

    .line 214
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorKg:D

    .line 215
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorT:J

    .line 219
    :cond_51
    :goto_51
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->needOff:Z

    if-eqz v4, :cond_89

    .line 220
    cmpg-double v4, p1, v14

    if-gez v4, :cond_7b

    .line 221
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->needOff:Z

    .line 222
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 241
    :cond_65
    :goto_65
    return-void

    .line 210
    :cond_66
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_22

    .line 216
    :cond_69
    cmpl-double v4, p1, v14

    if-ltz v4, :cond_51

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorT:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-ltz v4, :cond_51

    move/from16 p3, v5

    .line 217
    goto :goto_51

    .line 223
    :cond_7b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_65

    .line 224
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_65

    .line 228
    :cond_89
    cmpg-double v4, p1, v14

    if-gez v4, :cond_9f

    .line 229
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v4, v13, :cond_99

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-ne v4, v12, :cond_65

    .line 230
    :cond_99
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_65

    .line 234
    :cond_9f
    if-eqz p3, :cond_ad

    .line 235
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v4, v12, :cond_65

    .line 236
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_65

    .line 238
    :cond_ad
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v4, v13, :cond_65

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v4, v12, :cond_65

    .line 239
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_65
.end method

.method openFilm(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    .prologue
    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->a:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->female:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->videoFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 498
    if-nez v0, :cond_b

    .line 513
    :goto_a
    return-void

    .line 501
    :cond_b
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    .line 502
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 503
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 505
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 506
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V

    .line 507
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 508
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 509
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_a

    .line 510
    :catch_47
    move-exception v0

    .line 511
    const-string v1, "ScaleStage.film"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method phase(I)V
    .registers 13

    .prologue
    const v1, -0xdd3aa2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v10, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 336
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-ne p1, v0, :cond_f

    if-eqz p1, :cond_f

    .line 426
    :cond_e
    :goto_e
    return-void

    .line 339
    :cond_f
    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    .line 340
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    .line 341
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->female:Z

    if-eqz v0, :cond_a3

    const v0, -0xc138

    .line 344
    :goto_1a
    packed-switch p1, :pswitch_data_1de

    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0412\u043a\u043b\u044e\u0447\u0438 Bluetooth"

    const-string v2, "Turn Bluetooth on"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u0411\u0435\u0437 Bluetooth \u0442\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u043d\u0435 \u0447\u0443\u0432\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430."

    const-string v2, "Without Bluetooth the tablet cannot hear the scale."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    const-string v1, "BLUETOOTH"

    .line 403
    const v0, -0x10bbbc

    .line 404
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    move-object v2, v1

    .line 407
    :goto_42
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->chip:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->chip:Landroid/widget/TextView;

    const/16 v2, 0x46

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const/16 v8, 0xc8

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v8

    invoke-static {v2, v7, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stable(I)V

    .line 410
    if-eq p1, v4, :cond_6e

    if-nez p1, :cond_1cd

    .line 411
    :cond_6e
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe(Z)V

    .line 416
    :goto_71
    const/4 v0, 0x2

    if-eq p1, v0, :cond_7c

    if-eq p1, v10, :cond_7c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7c

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1d2

    :cond_7c
    move v0, v4

    :goto_7d
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->showFilm(Z)V

    .line 417
    if-eq p1, v10, :cond_9a

    .line 418
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 419
    const/4 v0, 0x4

    if-eq p1, v0, :cond_9a

    .line 420
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1d5

    move v1, v5

    :goto_92
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1d9

    const-string v0, "\u2713"

    :goto_97
    invoke-virtual {v2, v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ring(FLjava/lang/String;)V

    .line 423
    :cond_9a
    if-eq v6, p1, :cond_e

    .line 424
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto/16 :goto_e

    .line 341
    :cond_a3
    const v0, -0xc74208

    goto/16 :goto_1a

    .line 346
    :pswitch_a8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0422\u044a\u0440\u0441\u044f \u043a\u0430\u043d\u0442\u0430\u0440\u0430\u2026"

    const-string v2, "Looking for the scale\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u0421\u0442\u044a\u043f\u0438 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430 \u2014 \u0442\u043e\u0439 \u0441\u0435 \u0441\u044a\u0431\u0443\u0436\u0434\u0430 \u0438 \u0442\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u0433\u043e \u043d\u0430\u043c\u0438\u0440\u0430 \u0441\u0430\u043c."

    const-string v2, "Step on the scale \u2014 it wakes up and the tablet finds it by itself."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    const-string v0, "\u0412\u0420\u042a\u0417\u041a\u0410"

    const-string v1, "LINK"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    const v0, -0x6b5c48

    .line 351
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    move-object v2, v1

    .line 352
    goto/16 :goto_42

    .line 354
    :pswitch_d5
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v2, "\u0421\u0442\u044a\u043f\u0438 \u0431\u043e\u0441 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v7, "Step on barefoot"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v2, "\u041f\u0435\u0442\u0438\u0442\u0435 \u0432\u044a\u0440\u0445\u0443 \u0437\u0430\u0434\u043d\u0438\u0442\u0435 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438, \u0445\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0441 \u0434\u0432\u0435\u0442\u0435 \u0440\u044a\u0446\u0435, \u0440\u044a\u0446\u0435\u0442\u0435 \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0438 \u043d\u0430\u0434\u043e\u043b\u0443."

    const-string v7, "Heels on the back electrodes, both hands on the handle, arms relaxed down."

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    const-string v1, "\u0427\u0410\u041a\u0410\u041c"

    const-string v2, "WAITING"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    move-object v2, v1

    .line 360
    goto/16 :goto_42

    .line 362
    :pswitch_ff
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0421\u0442\u043e\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e\u2026"

    const-string v2, "Stand still\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u0422\u0435\u0433\u043b\u043e\u0442\u043e \u0441\u0435 \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430 \u2014 \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435, \u0431\u0435\u0437 \u0433\u043e\u0432\u043e\u0440\u0435\u043d\u0435."

    const-string v2, "The weight settles \u2014 no moving, no talking."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    const-string v0, "\u0422\u0415\u0413\u041b\u041e"

    const-string v1, "WEIGHT"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    const v0, -0xa61f5

    .line 366
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    move-object v2, v1

    .line 367
    goto/16 :goto_42

    .line 369
    :pswitch_12d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v2, "\u041c\u0435\u0440\u0438 \u2014 \u043d\u0435 \u043f\u0443\u0441\u043a\u0430\u0439 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430"

    const-string v7, "Measuring \u2014 keep holding"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v2, "\u0421\u043b\u0430\u0431 \u0442\u043e\u043a \u043c\u0438\u043d\u0430\u0432\u0430 \u043f\u0440\u0435\u0437 \u0440\u044a\u0446\u0435\u0442\u0435, \u0442\u044f\u043b\u043e\u0442\u043e \u0438 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u043d\u0430 \u0434\u0432\u0435 \u0447\u0435\u0441\u0442\u043e\u0442\u0438. \u041d\u0435 \u0441\u0435 \u0443\u0441\u0435\u0449\u0430."

    const-string v7, "A faint current passes through arms, trunk and legs at two frequencies. It is not felt."

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    const-string v0, "\u0421\u041a\u0410\u041d\u0418\u0420\u0410\u041d\u0415"

    const-string v2, "SCANNING"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->scanStart:J

    .line 376
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 378
    goto/16 :goto_42

    .line 380
    :pswitch_16b
    const-string v0, "\u041f\u0420\u041e\u0412\u0415\u0420\u041a\u0410"

    const-string v2, "CHECK"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v0, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    .line 383
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    const-string v7, "\u2713"

    invoke-virtual {v0, v5, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ring(FLjava/lang/String;)V

    move v0, v1

    .line 384
    goto/16 :goto_42

    .line 386
    :pswitch_182
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0421\u043b\u0435\u0437 \u043e\u0442 \u043a\u0430\u043d\u0442\u0430\u0440\u0430 \u0437\u0430 \u043c\u043e\u043c\u0435\u043d\u0442"

    const-string v2, "Step off for a moment"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u041f\u043e\u0441\u043b\u0435 \u0441\u0442\u044a\u043f\u0438 \u043f\u0430\u043a \u2014 \u043a\u0430\u043d\u0442\u0430\u0440\u044a\u0442 \u043c\u0435\u0440\u0438 \u043d\u0430\u043d\u043e\u0432\u043e \u043f\u0440\u0438 \u0432\u0441\u044f\u043a\u043e \u0441\u0442\u044a\u043f\u0432\u0430\u043d\u0435."

    const-string v2, "Then step on again \u2014 the scale measures anew at every step-on."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    const-string v0, "\u0421\u041b\u0415\u0417"

    const-string v1, "STEP OFF"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    const v0, -0xa61f5

    .line 391
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    move-object v2, v1

    .line 392
    goto/16 :goto_42

    .line 394
    :pswitch_1af
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v2, "\u2713 \u0413\u043e\u0442\u043e\u0432\u043e \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0441\u043b\u0435\u0437\u0435"

    const-string v7, "\u2713 Done \u2014 step off"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    const-string v0, "\u0413\u041e\u0422\u041e\u0412\u041e"

    const-string v2, "DONE"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    move v0, v1

    .line 398
    goto/16 :goto_42

    .line 413
    :cond_1cd
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe(Z)V

    goto/16 :goto_71

    :cond_1d2
    move v0, v3

    .line 416
    goto/16 :goto_7d

    .line 420
    :cond_1d5
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_92

    :cond_1d9
    const-string v0, ""

    goto/16 :goto_97

    .line 344
    nop

    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_d5
        :pswitch_ff
        :pswitch_12d
        :pswitch_16b
        :pswitch_182
        :pswitch_1af
    .end packed-switch
.end method

.method release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 529
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breathe(Z)V

    .line 530
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmReady:Z

    .line 531
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_17

    .line 533
    :try_start_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_18

    .line 536
    :goto_15
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    .line 538
    :cond_17
    return-void

    .line 534
    :catch_18
    move-exception v0

    goto :goto_15
.end method

.method reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 325
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->needOff:Z

    .line 326
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 327
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->round:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->clear()V

    .line 329
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 331
    return-void
.end method

.method roundText(Lcom/isaigu/gymapp/wearable/scale/ScaleSession;)V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->count()I

    move-result v4

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->planned()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    .line 310
    :goto_14
    if-ge v3, v5, :cond_24

    .line 311
    if-ge v3, v4, :cond_21

    const-string v0, "\u25cf"

    :goto_1a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_14

    .line 311
    :cond_21
    const-string v0, "\u25cb"

    goto :goto_1a

    .line 313
    :cond_24
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->round:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0441\u0442\u044a\u043f\u0432\u0430\u043d\u0435 "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->need:I

    if-nez v0, :cond_92

    move v0, v1

    :goto_45
    add-int/2addr v0, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " \u043e\u0442 "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "step-on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 314
    iget v8, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->need:I

    if-nez v8, :cond_94

    :goto_6b
    add-int/2addr v1, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    return-void

    :cond_92
    move v0, v2

    .line 313
    goto :goto_45

    :cond_94
    move v1, v2

    .line 314
    goto :goto_6b
.end method

.method scanTick()V
    .registers 11

    .prologue
    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->scanStart:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 442
    const-wide v2, 0x3fee666666666666L    # 0.95

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    neg-double v6, v0

    const-wide v8, 0x400bb13b13b13b13L    # 3.4615384615384612

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 443
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    sub-double v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0441"

    const-string v4, " s"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ring(FLjava/lang/String;)V

    .line 444
    return-void
.end method

.method showFilm(Z)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x1f4

    const-wide/16 v4, 0x190

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 466
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmOn:Z

    .line 467
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmOn:Z

    .line 468
    if-eqz p1, :cond_56

    .line 469
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4e

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmReady:Z

    if-eqz v1, :cond_4e

    .line 471
    if-eqz v0, :cond_1f

    :try_start_17
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 472
    :cond_1f
    if-nez v0, :cond_27

    .line 473
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 475
    :cond_27
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2c} :catch_4f

    .line 480
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->cover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 481
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 493
    :cond_4e
    :goto_4e
    return-void

    .line 477
    :catch_4f
    move-exception v0

    .line 478
    const-string v1, "ScaleStage.play"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c

    .line 484
    :cond_56
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->cover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 485
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 486
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4e

    .line 488
    :try_start_7c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_81} :catch_82

    goto :goto_4e

    .line 489
    :catch_82
    move-exception v0

    goto :goto_4e
.end method

.method stable(I)V
    .registers 5

    .prologue
    .line 429
    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 430
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const-string v1, "\u25cf \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430 \u0441\u0435"

    const-string v2, "\u25cf settling"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const v1, -0xa61f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    :goto_18
    return-void

    .line 432
    :cond_19
    const/4 v0, 0x3

    if-eq p1, v0, :cond_22

    const/4 v0, 0x4

    if-eq p1, v0, :cond_22

    const/4 v0, 0x6

    if-ne p1, v0, :cond_38

    .line 433
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const-string v1, "\u2713 \u0441\u0442\u0430\u0431\u0438\u043b\u043d\u043e"

    const-string v2, "\u2713 steady"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const v1, -0xdd3aa2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_18

    .line 436
    :cond_38
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18
.end method

.method stepResult(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleSession;)V
    .registers 12

    .prologue
    const/4 v8, 0x4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->done()V

    .line 248
    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->lastQuality()Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;

    move-result-object v3

    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 250
    const-string v0, "\u0420\u044a\u0446\u0435"

    const-string v4, "Hands"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_c9

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    if-eqz v0, :cond_c9

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->arms:Z

    if-eqz v0, :cond_c9

    move v0, v1

    :goto_3f
    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->addQ(Ljava/lang/String;Z)V

    .line 251
    const-string v0, "\u041a\u0440\u0430\u043a\u0430"

    const-string v4, "Feet"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_cc

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    if-eqz v0, :cond_cc

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->legs:Z

    if-eqz v0, :cond_cc

    move v0, v1

    :goto_55
    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->addQ(Ljava/lang/String;Z)V

    .line 252
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->hasTrunk()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 253
    const-string v0, "\u0422\u044f\u043b\u043e"

    const-string v4, "Trunk"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_71

    iget-boolean v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    if-eqz v4, :cond_71

    iget-boolean v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->trunk:Z

    if-eqz v4, :cond_71

    move v2, v1

    :cond_71
    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->addQ(Ljava/lang/String;Z)V

    .line 255
    :cond_74
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->roundText(Lcom/isaigu/gymapp/wearable/scale/ScaleSession;)V

    .line 256
    iget v0, p2, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->need:I

    if-nez v0, :cond_d7

    .line 257
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 258
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v2, "\u2713 \u041c\u0435\u0440\u0435\u043d\u043e"

    const-string v3, "\u2713 Measured"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->count()I

    move-result v0

    if-le v0, v1, :cond_ce

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0441\u0442\u044a\u043f\u0432\u0430\u043d\u0438\u044f \u2014 \u043b\u043e\u0448\u0438\u0442\u0435 \u0438\u0437\u0432\u044a\u043d \u0441\u043c\u0435\u0442\u043a\u0430\u0442\u0430, \u043e\u0441\u0442\u0430\u043d\u0430\u043b\u0438\u0442\u0435 \u043e\u0441\u0440\u0435\u0434\u043d\u0435\u043d\u0438"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->count()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " step-ons \u2014 the bad ones out, the rest averaged"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :goto_c8
    return-void

    :cond_c9
    move v0, v2

    .line 250
    goto/16 :goto_3f

    :cond_cc
    move v0, v2

    .line 251
    goto :goto_55

    .line 261
    :cond_ce
    const-string v0, "\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u044a\u0442 \u0435 \u0434\u043e\u0431\u044a\u0440, \u0442\u044f\u043b\u043e\u0442\u043e \u0435 \u043a\u0430\u043a\u0442\u043e \u043e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d\u043e"

    const-string v1, "Good contact, the body is as usual"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    .line 264
    :cond_d7
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->needOff:Z

    .line 265
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 266
    iget v0, p2, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->need:I

    packed-switch v0, :pswitch_data_178

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u041e\u0449\u0435 \u0435\u0434\u043d\u043e \u2014 \u0434\u0432\u0435\u0442\u0435 \u0441\u0435 \u0440\u0430\u0437\u043c\u0438\u043d\u0430\u0432\u0430\u0442"

    const-string v2, "One more \u2014 the two differ"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u0422\u0440\u0435\u0442\u043e\u0442\u043e \u0440\u0435\u0448\u0430\u0432\u0430: \u0441\u0440\u0435\u0434\u043d\u043e\u0442\u043e \u043e\u0442 \u0442\u0440\u0438\u0442\u0435, \u0431\u0435\u0437 \u043a\u0440\u0430\u0439\u043d\u043e\u0442\u043e."

    const-string v2, "The third decides: the middle of the three."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :goto_fb
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Next;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Next;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V

    const-wide/16 v2, 0x960

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c8

    .line 268
    :pswitch_108
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u041e\u0449\u0435 \u0432\u0435\u0434\u043d\u044a\u0436 \u2014 \u043f\u043e-\u0434\u043e\u0431\u044a\u0440 \u043a\u043e\u043d\u0442\u0430\u043a\u0442"

    const-string v2, "Once more \u2014 better contact"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    if-eqz v3, :cond_129

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    if-nez v0, :cond_129

    const-string v0, "\u0420\u044a\u0446\u0435\u0442\u0435 \u043d\u0435 \u0434\u044a\u0440\u0436\u0430\u0445\u0430 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430. \u0421\u043b\u0435\u0437, \u0441\u0442\u044a\u043f\u0438 \u043f\u0430\u043a \u0438 \u0445\u0432\u0430\u043d\u0438 \u0441 \u0434\u0432\u0435\u0442\u0435 \u0440\u044a\u0446\u0435."

    const-string v2, "The hands were off the handle. Step off, on again, both hands on it."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_125
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_fb

    .line 271
    :cond_129
    if-eqz v3, :cond_138

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->arms:Z

    if-nez v0, :cond_138

    const-string v0, "\u0415\u0434\u043d\u0430\u0442\u0430 \u0440\u044a\u043a\u0430 \u043d\u0435 \u0445\u0432\u0430\u0449\u0430 \u0434\u043e\u0431\u0440\u0435 \u2014 \u0446\u044f\u043b\u0430\u0442\u0430 \u0434\u043b\u0430\u043d \u0432\u044a\u0440\u0445\u0443 \u043c\u0435\u0442\u0430\u043b\u043d\u043e\u0442\u043e, \u0440\u044a\u0446\u0435\u0442\u0435 \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0438."

    const-string v2, "One hand is not on well \u2014 the whole palm on the metal, arms relaxed."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_125

    .line 273
    :cond_138
    const-string v0, "\u0421\u0442\u044a\u043f\u0430\u043b\u0430\u0442\u0430: \u0431\u043e\u0441\u0438, \u0441\u0443\u0445\u0438, \u043f\u0435\u0442\u0438\u0442\u0435 \u0432\u044a\u0440\u0445\u0443 \u0437\u0430\u0434\u043d\u0438\u0442\u0435 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438."

    const-string v2, "The feet: bare, dry, heels on the back electrodes."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_125

    .line 277
    :pswitch_141
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u041e\u0449\u0435 \u0435\u0434\u043d\u043e \u2014 \u0437\u0430 \u0431\u0430\u0437\u0430"

    const-string v2, "One more \u2014 for the baseline"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u041f\u044a\u0440\u0432\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430: \u0434\u0432\u0435 \u0441\u0442\u044a\u043f\u0432\u0430\u043d\u0438\u044f \u0434\u0430\u0432\u0430\u0442 \u0441\u0442\u0430\u0431\u0438\u043b\u043d\u0430 \u043e\u0442\u043f\u0440\u0430\u0432\u043d\u0430 \u0442\u043e\u0447\u043a\u0430. \u0421\u043b\u0435\u0437 \u0438 \u0441\u0442\u044a\u043f\u0438 \u043f\u0430\u043a."

    const-string v2, "The client\'s first: two step-ons give a steady starting point. Step off and on again."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_fb

    .line 282
    :pswitch_15c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u041e\u0449\u0435 \u0435\u0434\u043d\u043e \u2014 \u0437\u0430 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430"

    const-string v2, "One more \u2014 to check"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u0420\u0435\u0437\u0443\u043b\u0442\u0430\u0442\u044a\u0442 \u0435 \u0434\u0430\u043b\u0435\u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 \u0434\u043d\u0438, \u0430 \u0442\u044f\u043b\u043e\u0442\u043e \u043d\u0435 \u0441\u0435 \u043c\u0435\u043d\u0438 \u0442\u043e\u043b\u043a\u043e\u0432\u0430 \u0431\u044a\u0440\u0437\u043e. \u0421\u043b\u0435\u0437 \u0438 \u0441\u0442\u044a\u043f\u0438 \u043f\u0430\u043a."

    const-string v2, "The result is far from the last days, and the body does not change that fast. Step off and on again."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_fb

    .line 266
    nop

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_108
        :pswitch_141
        :pswitch_15c
    .end packed-switch
.end method

.method view()Landroid/view/View;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    return-object v0
.end method
