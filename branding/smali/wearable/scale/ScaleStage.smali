.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.super Ljava/lang/Object;
.source "ScaleStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;
    }
.end annotation


# static fields
.field static final P_DONE:I = 0x4

.field static final P_LINK:I = 0x1

.field static final P_NO_BT:I = 0x5

.field static final P_SCAN:I = 0x3

.field static final P_SETTLE:I = 0x2

.field static final P_WAIT:I = 0x0

.field static final SCAN_S:D = 9.0

.field static final STEADY_KG:D = 0.15

.field static final STEADY_MS:J = 0x5dcL


# instance fields
.field final a:Landroid/app/Activity;

.field anchorKg:D

.field anchorT:J

.field final chip:Landroid/widget/TextView;

.field final cover:Landroid/view/View;

.field final female:Z

.field final film:Landroid/view/TextureView;

.field filmOn:Z

.field filmReady:Z

.field filmShown:Z

.field final fx:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;

.field final hero:Landroid/widget/ImageView;

.field final live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

.field final main:Landroid/os/Handler;

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

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    .line 93
    iput v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    .line 97
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    .line 104
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->a:Landroid/app/Activity;

    .line 105
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->female:Z

    .line 106
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    .line 107
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 108
    if-eqz p2, :cond_2cf

    const v0, -0xc138

    .line 112
    :goto_33
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    .line 113
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    const v2, -0xfaf8f5

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x5a

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 115
    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->film:Landroid/view/TextureView;

    .line 116
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->film:Landroid/view/TextureView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 117
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->film:Landroid/view/TextureView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->cover:Landroid/view/View;

    .line 120
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->cover:Landroid/view/View;

    const v2, -0xfaf8f5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->cover:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    .line 124
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xems/body/scale/measure/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2d4

    const-string v1, "female"

    :goto_d0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-hero.webp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->load(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_e9

    .line 128
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    :cond_e9
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;

    invoke-direct {v1, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fx:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;

    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fx:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const-string v0, ""

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {p1, v0, v1, v7, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->chip:Landroid/widget/TextView;

    .line 136
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

    .line 137
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800033

    invoke-direct {v0, v9, v9, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 139
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 140
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->chip:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const-string v0, "8 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0430 \u00b7 20 \u0438 100 kHz \u00b7 5 \u0437\u043e\u043d\u0438"

    const-string v1, "8 electrodes \u00b7 20 and 100 kHz \u00b7 5 zones"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x66000001

    invoke-static {p1, v0, v11, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 143
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x800055

    invoke-direct {v1, v9, v9, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 145
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 146
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    .line 152
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42900000    # 72.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const-string v1, ""

    const/high16 v2, 0x41f00000    # 30.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p1, v1, v2, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const/16 v2, 0xe

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const-string v1, ""

    const/high16 v2, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v1, v2, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    .line 156
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 157
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 159
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 160
    const-string v2, "\u2014"

    const/high16 v3, 0x42880000    # 68.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    .line 161
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 162
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    const-string v2, " \u043a\u0433"

    const-string v3, " kg"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->unit:Landroid/widget/TextView;

    .line 164
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->unit:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    invoke-virtual {v2, v8, v8, v8, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 165
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->unit:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    .line 168
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

    .line 169
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 172
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    .line 175
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 177
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 178
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->round:Landroid/widget/TextView;

    .line 179
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->round:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v8, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    .line 181
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    const-string v1, "\u0420\u0435\u0437\u0443\u043b\u0442\u0430\u0442\u0438 \u203a"

    const-string v2, "Results \u203a"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->results:Landroid/widget/TextView;

    .line 184
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    invoke-direct {v1, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 185
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 186
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->results:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 189
    return-void

    .line 108
    :cond_2cf
    const v0, -0xc74208

    goto/16 :goto_33

    .line 126
    :cond_2d4
    const-string v1, "male"

    goto/16 :goto_d0
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 529
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_15

    move-result-object v1

    .line 531
    :try_start_8
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_10

    move-result-object v0

    .line 533
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 536
    :goto_f
    return-object v0

    .line 533
    :catchall_10
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 534
    throw v0
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_15

    .line 535
    :catch_15
    move-exception v0

    .line 536
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static log(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 69
    const-string v0, "scale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method static now()F
    .registers 4

    .prologue
    .line 544
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static videoFile(Landroid/content/Context;Z)Ljava/io/File;
    .registers 10

    .prologue
    .line 501
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

    move-result-object v2

    .line 502
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xems_scale_v2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    cmp-long v1, v4, v6

    if-lez v1, :cond_47

    .line 523
    :cond_43
    :goto_43
    return-object v0

    .line 501
    :cond_44
    const-string v0, "male"

    goto :goto_9

    .line 506
    :cond_47
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xems_scale_v2_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 508
    :try_start_69
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xems/body/scale/measure/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 509
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_89} :catch_a1

    .line 511
    const v4, 0x8000

    :try_start_8c
    new-array v4, v4, [B

    .line 513
    :goto_8e
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_a9

    .line 514
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_98
    .catchall {:try_start_8c .. :try_end_98} :catchall_99

    goto :goto_8e

    .line 517
    :catchall_99
    move-exception v0

    :try_start_9a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 518
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 519
    throw v0
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_a1} :catch_a1

    .line 521
    :catch_a1
    move-exception v0

    .line 522
    const-string v1, "ScaleStage.videoFile"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    const/4 v0, 0x0

    goto :goto_43

    .line 517
    :cond_a9
    :try_start_a9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 518
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 520
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_b2} :catch_a1

    move-result v2

    if-nez v2, :cond_43

    move-object v0, v1

    goto :goto_43
.end method


# virtual methods
.method addQ(Ljava/lang/String;Z)V
    .registers 11

    .prologue
    const/4 v7, -0x2

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v5, 0x40a00000    # 5.0f

    .line 273
    if-eqz p2, :cond_71

    const v0, -0xdd3aa2

    .line 274
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

    .line 275
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 276
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

    .line 277
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 279
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 280
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 282
    return-void

    .line 273
    :cond_71
    const v0, -0xa61f5

    goto :goto_a

    .line 274
    :cond_75
    const-string v1, "! "

    goto :goto_15
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method finished(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 289
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 290
    if-eqz p2, :cond_19

    .line 291
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u2713 \u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v2, "\u2713 Done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :goto_18
    return-void

    .line 294
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0421\u0430\u043c\u043e \u0442\u0435\u0433\u043b\u043e"

    const-string v2, "Weight only"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u0420\u044a\u0446\u0435\u0442\u0435 \u043d\u0435 \u0431\u044f\u0445\u0430 \u043d\u0430 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430, \u0437\u0430\u0442\u043e\u0432\u0430 \u043d\u044f\u043c\u0430 \u0441\u044a\u0441\u0442\u0430\u0432. \u0425\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0441 \u0446\u0435\u043b\u0438 \u0434\u043b\u0430\u043d\u0438 \u2014 \u0430\u043a\u043e \u043a\u0430\u043d\u0442\u0430\u0440\u044a\u0442 \u043d\u0435 \u043f\u0440\u0435\u043c\u0435\u0440\u0438 \u0441\u0430\u043c, \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u041c\u0435\u0440\u0438 \u043f\u0430\u043a\u201c."

    const-string v2, "The hands were off the handle, so there is no composition. Hold the handle with whole palms \u2014 if the scale does not measure again, tap \"Measure again\"."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18
.end method

.method fit(II)V
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 476
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->film:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->film:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    .line 477
    if-lez p1, :cond_16

    if-lez p2, :cond_16

    if-lez v0, :cond_16

    if-gtz v1, :cond_17

    .line 484
    :cond_16
    :goto_16
    return-void

    .line 480
    :cond_17
    int-to-float v2, v0

    int-to-float v3, p1

    div-float/2addr v2, v3

    int-to-float v3, v1

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 481
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 482
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

    .line 483
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->film:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_16
.end method

.method frame()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x1c2

    const/4 v1, 0x0

    .line 443
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmOn:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmShown:Z

    if-nez v0, :cond_35

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmShown:Z

    .line 445
    const-string v0, "film on screen"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->log(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->cover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 447
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 449
    :cond_35
    return-void
.end method

.method linkState(I)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x5

    .line 199
    packed-switch p1, :pswitch_data_24

    .line 218
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 201
    :pswitch_6
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-ne v0, v2, :cond_5

    .line 202
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_5

    .line 208
    :pswitch_13
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-ne v0, v1, :cond_5

    .line 209
    :cond_1b
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_5

    .line 213
    :pswitch_1f
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_5

    .line 199
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_6
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_5
        :pswitch_1f
    .end packed-switch
.end method

.method liveWeight(DZ)V
    .registers 21

    .prologue
    const/4 v5, 0x1

    const/4 v15, 0x2

    const/4 v14, 0x3

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    .line 221
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_26

    .line 222
    cmpl-double v4, p1, v12

    if-ltz v4, :cond_25

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    mul-double v6, p1, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_25
    :goto_25
    return-void

    .line 227
    :cond_26
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    cmpl-double v4, p1, v12

    if-ltz v4, :cond_8e

    mul-double v8, p1, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    :goto_3a
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    if-eqz p3, :cond_91

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_45
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    cmpl-double v4, p1, v12

    if-ltz v4, :cond_57

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->add(DZ)V

    .line 232
    :cond_57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 233
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorKg:D

    sub-double v8, p1, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fc3333333333333L    # 0.15

    cmpl-double v4, v8, v10

    if-lez v4, :cond_94

    .line 234
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorKg:D

    .line 235
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorT:J

    .line 239
    :cond_78
    :goto_78
    cmpg-double v4, p1, v12

    if-gez v4, :cond_a6

    .line 240
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v4, v15, :cond_88

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-ne v4, v14, :cond_25

    .line 241
    :cond_88
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_25

    .line 227
    :cond_8e
    const-string v4, "\u2014"

    goto :goto_3a

    .line 228
    :cond_91
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_45

    .line 236
    :cond_94
    cmpl-double v4, p1, v12

    if-ltz v4, :cond_78

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorT:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-ltz v4, :cond_78

    move/from16 p3, v5

    .line 237
    goto :goto_78

    .line 245
    :cond_a6
    if-eqz p3, :cond_b5

    .line 246
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v4, v14, :cond_25

    .line 247
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto/16 :goto_25

    .line 249
    :cond_b5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v4, v15, :cond_25

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v4, v14, :cond_25

    .line 250
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto/16 :goto_25
.end method

.method openFilm(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->a:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->female:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->videoFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 454
    if-nez v0, :cond_10

    .line 455
    const-string v0, "film: no file"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->log(Ljava/lang/String;)V

    .line 472
    :goto_f
    return-void

    .line 458
    :cond_10
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    .line 459
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 460
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 462
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 463
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V

    .line 464
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 465
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 466
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 467
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_50} :catch_51

    goto :goto_f

    .line 468
    :catch_51
    move-exception v0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "film: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->log(Ljava/lang/String;)V

    .line 470
    const-string v1, "ScaleStage.film"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method phase(I)V
    .registers 13

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x4

    .line 316
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-ne p1, v0, :cond_a

    .line 387
    :cond_9
    :goto_9
    return-void

    .line 319
    :cond_a
    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    .line 320
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    .line 321
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->female:Z

    if-eqz v0, :cond_99

    const v0, -0xc138

    .line 324
    :goto_15
    packed-switch p1, :pswitch_data_18a

    .line 366
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0412\u043a\u043b\u044e\u0447\u0438 Bluetooth"

    const-string v7, "Turn Bluetooth on"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u0411\u0435\u0437 Bluetooth \u0442\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u043d\u0435 \u0447\u0443\u0432\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430."

    const-string v7, "Without Bluetooth the tablet cannot hear the scale."

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    const-string v1, "BLUETOOTH"

    .line 369
    const v0, -0x10bbbc

    .line 370
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v7, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    .line 373
    :goto_3c
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->chip:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->chip:Landroid/widget/TextView;

    const/16 v7, 0x46

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v8

    int-to-float v8, v8

    const/16 v9, 0xc8

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v9

    invoke-static {v7, v8, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stable(I)V

    .line 377
    if-eq p1, v3, :cond_6e

    if-eq p1, v5, :cond_6e

    if-eq p1, v4, :cond_6e

    if-ne p1, v10, :cond_171

    :cond_6e
    move v0, v3

    .line 378
    :goto_6f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fx:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;

    if-nez p1, :cond_174

    :goto_73
    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->mode(I)V

    .line 379
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->showFilm(Z)V

    .line 380
    if-eq p1, v4, :cond_90

    .line 381
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    if-ne p1, v10, :cond_181

    const/high16 v0, 0x3f800000    # 1.0f

    move v1, v0

    :goto_89
    if-ne p1, v10, :cond_185

    const-string v0, "\u2713"

    :goto_8d
    invoke-virtual {v2, v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ring(FLjava/lang/String;)V

    .line 384
    :cond_90
    if-eq v6, p1, :cond_9

    .line 385
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto/16 :goto_9

    .line 321
    :cond_99
    const v0, -0xc74208

    goto/16 :goto_15

    .line 326
    :pswitch_9e
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v7, "\u0421\u0442\u044a\u043f\u0438 \u0431\u043e\u0441 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v8, "Step on barefoot"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v7, "\u041f\u0435\u0442\u0438\u0442\u0435 \u0432\u044a\u0440\u0445\u0443 \u0437\u0430\u0434\u043d\u0438\u0442\u0435 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438, \u0434\u0432\u0435\u0442\u0435 \u0440\u044a\u0446\u0435 \u043d\u0430 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430, \u0440\u044a\u0446\u0435\u0442\u0435 \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0438 \u043d\u0430\u0434\u043e\u043b\u0443. \u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442 \u0441\u0435 \u0441\u044a\u0431\u0443\u0436\u0434\u0430 \u0438 \u0442\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u0433\u043e \u043d\u0430\u043c\u0438\u0440\u0430 \u0441\u0430\u043c."

    const-string v8, "Heels on the back electrodes, both hands on the handle, arms relaxed down. The scale wakes up and the tablet finds it by itself."

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    const-string v1, "\u0427\u0410\u041a\u0410\u041c"

    const-string v7, "WAITING"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v7, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    goto/16 :goto_3c

    .line 335
    :pswitch_c7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u0441\u0435 \u2014 \u043e\u0441\u0442\u0430\u043d\u0438 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v7, "Connecting \u2014 stay on the scale"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u0425\u0432\u0430\u043d\u0438 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0441 \u0446\u0435\u043b\u0438 \u0434\u043b\u0430\u043d\u0438 \u0438 \u0441\u0442\u043e\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e."

    const-string v7, "Hold the handle with whole palms and stand still."

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const-string v0, "\u0412\u0420\u042a\u0417\u041a\u0410"

    const-string v1, "LINK"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    const v0, -0x6b5c48

    .line 340
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v7, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    goto/16 :goto_3c

    .line 343
    :pswitch_f3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0421\u0442\u043e\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e\u2026"

    const-string v7, "Stand still\u2026"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u0422\u0435\u0433\u043b\u043e\u0442\u043e \u0441\u0435 \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430 \u2014 \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435, \u0431\u0435\u0437 \u0433\u043e\u0432\u043e\u0440\u0435\u043d\u0435."

    const-string v7, "The weight settles \u2014 no moving, no talking."

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const-string v0, "\u0422\u0415\u0413\u041b\u041e"

    const-string v1, "WEIGHT"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    const v0, -0xa61f5

    .line 347
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v7, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    goto/16 :goto_3c

    .line 350
    :pswitch_11f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u041c\u0435\u0440\u0438 \u2014 \u043d\u0435 \u043f\u0443\u0441\u043a\u0430\u0439 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430"

    const-string v7, "Measuring \u2014 keep holding"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u0421\u043b\u0430\u0431 \u0442\u043e\u043a \u043c\u0438\u043d\u0430\u0432\u0430 \u043f\u0440\u0435\u0437 \u0440\u044a\u0446\u0435\u0442\u0435, \u0442\u044f\u043b\u043e\u0442\u043e \u0438 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u043d\u0430 \u0434\u0432\u0435 \u0447\u0435\u0441\u0442\u043e\u0442\u0438. \u041d\u0435 \u0441\u0435 \u0443\u0441\u0435\u0449\u0430."

    const-string v7, "A faint current passes through arms, trunk and legs at two frequencies. It is not felt."

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const-string v0, "\u0410\u041d\u0410\u041b\u0418\u0417"

    const-string v1, "ANALYSIS"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    const v0, -0xdd3aa2

    .line 355
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v7, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->scanStart:J

    .line 357
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3c

    .line 361
    :pswitch_15f
    const-string v0, "\u0413\u041e\u0422\u041e\u0412\u041e"

    const-string v1, "DONE"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    const v0, -0xdd3aa2

    .line 363
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v7, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    goto/16 :goto_3c

    :cond_171
    move v0, v2

    .line 377
    goto/16 :goto_6f

    .line 378
    :cond_174
    if-ne p1, v10, :cond_179

    move v3, v4

    goto/16 :goto_73

    :cond_179
    if-eqz v0, :cond_17e

    move v3, v5

    goto/16 :goto_73

    :cond_17e
    move v3, v2

    goto/16 :goto_73

    .line 382
    :cond_181
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_89

    :cond_185
    const-string v0, ""

    goto/16 :goto_8d

    .line 324
    nop

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_c7
        :pswitch_f3
        :pswitch_11f
        :pswitch_15f
    .end packed-switch
.end method

.method release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 487
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 488
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmReady:Z

    .line 489
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmShown:Z

    .line 490
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_16

    .line 492
    :try_start_f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_17

    .line 495
    :goto_14
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    .line 497
    :cond_16
    return-void

    .line 493
    :catch_17
    move-exception v0

    goto :goto_14
.end method

.method reset()V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->round:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->clear()V

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorKg:D

    .line 309
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 311
    return-void
.end method

.method scanTick()V
    .registers 11

    .prologue
    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->scanStart:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 403
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

    .line 404
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

    .line 405
    return-void
.end method

.method showFilm(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 410
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmOn:Z

    .line 411
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmOn:Z

    .line 412
    if-eqz p1, :cond_3f

    .line 413
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmReady:Z

    if-eqz v1, :cond_26

    .line 415
    if-nez v0, :cond_19

    .line 416
    :try_start_13
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 418
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_26

    .line 419
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_26} :catch_27

    .line 439
    :cond_26
    :goto_26
    return-void

    .line 421
    :catch_27
    move-exception v0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->log(Ljava/lang/String;)V

    goto :goto_26

    .line 427
    :cond_3f
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmShown:Z

    .line 428
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->cover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 429
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->cover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 430
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 431
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 432
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_26

    .line 434
    :try_start_61
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_66} :catch_67

    goto :goto_26

    .line 435
    :catch_67
    move-exception v0

    goto :goto_26
.end method

.method stable(I)V
    .registers 5

    .prologue
    .line 390
    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 391
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const-string v1, "\u25cf \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430 \u0441\u0435"

    const-string v2, "\u25cf settling"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const v1, -0xa61f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    :goto_18
    return-void

    .line 393
    :cond_19
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x4

    if-ne p1, v0, :cond_35

    .line 394
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const-string v1, "\u2713 \u0441\u0442\u0430\u0431\u0438\u043b\u043d\u043e"

    const-string v2, "\u2713 steady"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const v1, -0xdd3aa2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_18

    .line 397
    :cond_35
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18
.end method

.method sweep(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleSession;)V
    .registers 11

    .prologue
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 256
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

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->done()V

    .line 259
    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->lastQuality()Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;

    move-result-object v3

    .line 260
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 261
    const-string v0, "\u0420\u044a\u0446\u0435"

    const-string v4, "Hands"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_87

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    if-eqz v0, :cond_87

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->arms:Z

    if-eqz v0, :cond_87

    move v0, v1

    :goto_3e
    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->addQ(Ljava/lang/String;Z)V

    .line 262
    const-string v0, "\u041a\u0440\u0430\u043a\u0430"

    const-string v4, "Feet"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_89

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    if-eqz v0, :cond_89

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->legs:Z

    if-eqz v0, :cond_89

    move v0, v1

    :goto_54
    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->addQ(Ljava/lang/String;Z)V

    .line 263
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->hasTrunk()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 264
    const-string v0, "\u0422\u044f\u043b\u043e"

    const-string v4, "Trunk"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_70

    iget-boolean v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    if-eqz v4, :cond_70

    iget-boolean v3, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->trunk:Z

    if-eqz v3, :cond_70

    move v2, v1

    :cond_70
    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->addQ(Ljava/lang/String;Z)V

    .line 266
    :cond_73
    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->count()I

    move-result v2

    .line 267
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->round:Landroid/widget/TextView;

    if-gt v2, v1, :cond_8b

    const-string v0, "1 \u043e\u0442\u0447\u0438\u0442\u0430\u043d\u0435"

    const-string v1, "1 sweep"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_83
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-void

    :cond_87
    move v0, v2

    .line 261
    goto :goto_3e

    :cond_89
    move v0, v2

    .line 262
    goto :goto_54

    .line 268
    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043e\u0442\u0447\u0438\u0442\u0430\u043d\u0438\u044f \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->spread()Z

    move-result v0

    if-eqz v0, :cond_ce

    const-string v0, "\u0440\u0430\u0437\u043c\u0438\u043d\u0430\u0432\u0430\u0442 \u0441\u0435 \u2014 \u043e\u0441\u0440\u0435\u0434\u043d\u0435\u043d\u0438"

    :goto_a2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sweeps \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->spread()Z

    move-result v0

    if-eqz v0, :cond_d1

    const-string v0, "they differ \u2014 averaged"

    :goto_c1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_83

    :cond_ce
    const-string v0, "\u043e\u0441\u0440\u0435\u0434\u043d\u0435\u043d\u0438"

    goto :goto_a2

    .line 269
    :cond_d1
    const-string v0, "averaged"

    goto :goto_c1
.end method

.method view()Landroid/view/View;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    return-object v0
.end method
