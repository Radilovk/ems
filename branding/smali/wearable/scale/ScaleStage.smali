.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.super Ljava/lang/Object;
.source "ScaleStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breather;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;
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

.field final breather:Ljava/lang/Runnable;

.field final chip:Landroid/widget/TextView;

.field final female:Z

.field final fx:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;

.field final hero:Landroid/widget/ImageView;

.field final live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

.field final main:Landroid/os/Handler;

.field phase:I

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

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    .line 77
    iput v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    .line 81
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    .line 398
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breather;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breather;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breather:Ljava/lang/Runnable;

    .line 88
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->a:Landroid/app/Activity;

    .line 89
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->female:Z

    .line 90
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 92
    if-eqz p2, :cond_29e

    const v0, -0xc138

    .line 95
    :goto_3a
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    .line 96
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

    .line 97
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 98
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    .line 99
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
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

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xems/body/scale/measure/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2a3

    const-string v1, "female"

    :goto_9f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-hero.webp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->load(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_b8

    .line 103
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    :cond_b8
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;

    invoke-direct {v1, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fx:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fx:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const-string v0, ""

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {p1, v0, v1, v8, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->chip:Landroid/widget/TextView;

    .line 111
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

    .line 112
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800033

    invoke-direct {v0, v9, v9, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 114
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->chip:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    const-string v0, "8 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0430 \u00b7 20 \u0438 100 kHz \u00b7 5 \u0437\u043e\u043d\u0438"

    const-string v1, "8 electrodes \u00b7 20 and 100 kHz \u00b7 5 zones"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x66000001

    invoke-static {p1, v0, v11, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x800055

    invoke-direct {v1, v9, v9, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 120
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 121
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->theatre:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    .line 127
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42900000    # 72.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const-string v1, ""

    const/high16 v2, 0x41f00000    # 30.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p1, v1, v2, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    .line 129
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const/16 v2, 0xe

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    const-string v1, ""

    const/high16 v2, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    .line 131
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 132
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 134
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 135
    const-string v2, "\u2014"

    const/high16 v3, 0x42880000    # 68.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    .line 136
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 137
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    const-string v2, " \u043a\u0433"

    const-string v3, " kg"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->unit:Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->unit:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    invoke-virtual {v2, v7, v7, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 140
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->unit:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    .line 143
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

    .line 144
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 147
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    .line 150
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v8, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 152
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 153
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->round:Landroid/widget/TextView;

    .line 154
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->round:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    .line 156
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    const-string v1, "\u0420\u0435\u0437\u0443\u043b\u0442\u0430\u0442\u0438 \u203a"

    const-string v2, "Results \u203a"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->results:Landroid/widget/TextView;

    .line 159
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 161
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->results:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 164
    return-void

    .line 92
    :cond_29e
    const v0, -0xc74208

    goto/16 :goto_3a

    .line 101
    :cond_2a3
    const-string v1, "male"

    goto/16 :goto_9f
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 406
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_15

    move-result-object v1

    .line 408
    :try_start_8
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_10

    move-result-object v0

    .line 410
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 413
    :goto_f
    return-object v0

    .line 410
    :catchall_10
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 411
    throw v0
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_15

    .line 412
    :catch_15
    move-exception v0

    .line 413
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static log(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 61
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

    .line 62
    return-void
.end method

.method static now()F
    .registers 4

    .prologue
    .line 421
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
    .line 57
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addQ(Ljava/lang/String;Z)V
    .registers 11

    .prologue
    const/4 v7, -0x2

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v5, 0x40a00000    # 5.0f

    .line 246
    if-eqz p2, :cond_71

    const v0, -0xdd3aa2

    .line 247
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

    .line 248
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 249
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

    .line 250
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 253
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 255
    return-void

    .line 246
    :cond_71
    const v0, -0xa61f5

    goto :goto_a

    .line 247
    :cond_75
    const-string v1, "! "

    goto :goto_15
.end method

.method breath(Z)V
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 389
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breather:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    if-eqz p1, :cond_13

    .line 391
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breather:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    :goto_12
    return-void

    .line 393
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 394
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_12
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method finished(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 262
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 263
    if-eqz p2, :cond_19

    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v2, "Done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_18
    return-void

    .line 267
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0421\u0430\u043c\u043e \u0442\u0435\u0433\u043b\u043e"

    const-string v2, "Weight only"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u041d\u044f\u043c\u0430 \u043a\u043e\u043d\u0442\u0430\u043a\u0442 \u0441 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430. \u0425\u0432\u0430\u043d\u0435\u0442\u0435 \u044f \u0441 \u0446\u0435\u043b\u0438 \u0434\u043b\u0430\u043d\u0438 \u0438 \u043e\u0441\u0442\u0430\u043d\u0435\u0442\u0435 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430 \u0438\u043b\u0438 \u0437\u0430\u043f\u043e\u0447\u043d\u0435\u0442\u0435 \u043d\u043e\u0432\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435."

    const-string v2, "No contact with the handle. Hold it with whole palms and stay on the scale, or start a new measurement."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18
.end method

.method linkState(I)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x5

    .line 174
    packed-switch p1, :pswitch_data_24

    .line 193
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 176
    :pswitch_6
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-ne v0, v2, :cond_5

    .line 177
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_5

    .line 183
    :pswitch_13
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-ne v0, v1, :cond_5

    .line 184
    :cond_1b
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_5

    .line 188
    :pswitch_1f
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_5

    .line 174
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

    .line 196
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_26

    .line 197
    cmpl-double v4, p1, v12

    if-ltz v4, :cond_25

    .line 198
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

    .line 227
    :cond_25
    :goto_25
    return-void

    .line 202
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

    .line 203
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    if-eqz p3, :cond_91

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_45
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    cmpl-double v4, p1, v12

    if-ltz v4, :cond_57

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->add(DZ)V

    .line 207
    :cond_57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 208
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorKg:D

    sub-double v8, p1, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fc3333333333333L    # 0.15

    cmpl-double v4, v8, v10

    if-lez v4, :cond_94

    .line 209
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorKg:D

    .line 210
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorT:J

    .line 214
    :cond_78
    :goto_78
    cmpg-double v4, p1, v12

    if-gez v4, :cond_a6

    .line 215
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v4, v15, :cond_88

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-ne v4, v14, :cond_25

    .line 216
    :cond_88
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto :goto_25

    .line 202
    :cond_8e
    const-string v4, "\u2014"

    goto :goto_3a

    .line 203
    :cond_91
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_45

    .line 211
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

    .line 212
    goto :goto_78

    .line 220
    :cond_a6
    if-eqz p3, :cond_b5

    .line 221
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v4, v14, :cond_25

    .line 222
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto/16 :goto_25

    .line 224
    :cond_b5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v4, v15, :cond_25

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-eq v4, v14, :cond_25

    .line 225
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    goto/16 :goto_25
.end method

.method phase(I)V
    .registers 13

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x4

    .line 295
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-ne p1, v0, :cond_a

    .line 365
    :cond_9
    :goto_9
    return-void

    .line 298
    :cond_a
    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    .line 299
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    .line 300
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->female:Z

    if-eqz v0, :cond_99

    const v0, -0xc138

    .line 303
    :goto_15
    packed-switch p1, :pswitch_data_18a

    .line 344
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0412\u043a\u043b\u044e\u0447\u0435\u0442\u0435 Bluetooth"

    const-string v7, "Turn Bluetooth on"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "Bluetooth \u0435 \u043d\u0443\u0436\u0435\u043d \u0437\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 \u043a\u0430\u043d\u0442\u0430\u0440\u0430."

    const-string v7, "Bluetooth is needed to connect to the scale."

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const-string v1, "BLUETOOTH"

    .line 347
    const v0, -0x10bbbc

    .line 348
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v7, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    .line 351
    :goto_3c
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->chip:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
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

    .line 353
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stable(I)V

    .line 355
    if-eq p1, v3, :cond_6e

    if-eq p1, v5, :cond_6e

    if-eq p1, v4, :cond_6e

    if-ne p1, v10, :cond_171

    :cond_6e
    move v0, v3

    .line 356
    :goto_6f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fx:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;

    if-nez p1, :cond_174

    :goto_73
    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$ScanFx;->mode(I)V

    .line 357
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->breath(Z)V

    .line 358
    if-eq p1, v4, :cond_90

    .line 359
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    if-ne p1, v10, :cond_181

    const/high16 v0, 0x3f800000    # 1.0f

    move v1, v0

    :goto_89
    if-ne p1, v10, :cond_185

    const-string v0, "\u2713"

    :goto_8d
    invoke-virtual {v2, v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->ring(FLjava/lang/String;)V

    .line 362
    :cond_90
    if-eq v6, p1, :cond_9

    .line 363
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto/16 :goto_9

    .line 300
    :cond_99
    const v0, -0xc74208

    goto/16 :goto_15

    .line 305
    :pswitch_9e
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v7, "\u0421\u0442\u044a\u043f\u0435\u0442\u0435 \u0431\u043e\u0441\u0438 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v8, "Step on the scale barefoot"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v7, "\u041f\u0435\u0442\u0438\u0442\u0435 \u0432\u044a\u0440\u0445\u0443 \u0437\u0430\u0434\u043d\u0438\u0442\u0435 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438, \u0434\u0432\u0435\u0442\u0435 \u0440\u044a\u0446\u0435 \u043d\u0430 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430, \u0440\u044a\u0446\u0435\u0442\u0435 \u0438\u0437\u043f\u044a\u043d\u0430\u0442\u0438 \u043d\u0430\u0434\u043e\u043b\u0443."

    const-string v8, "Heels on the rear electrodes, both hands on the handle, arms straight down."

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const-string v1, "\u0418\u0417\u0427\u0410\u041a\u0412\u0410\u041d\u0415"

    const-string v7, "WAITING"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v7, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    goto/16 :goto_3c

    .line 313
    :pswitch_c7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435\u2026"

    const-string v7, "Connecting\u2026"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u0425\u0432\u0430\u043d\u0435\u0442\u0435 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u0441 \u0446\u0435\u043b\u0438 \u0434\u043b\u0430\u043d\u0438 \u0438 \u0441\u0442\u043e\u0439\u0442\u0435 \u043d\u0435\u043f\u043e\u0434\u0432\u0438\u0436\u043d\u043e."

    const-string v7, "Hold the handle with whole palms and stand still."

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const-string v0, "\u0412\u0420\u042a\u0417\u041a\u0410"

    const-string v1, "LINK"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    const v0, -0x6b5c48

    .line 318
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v7, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    goto/16 :goto_3c

    .line 321
    :pswitch_f3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0421\u0442\u043e\u0439\u0442\u0435 \u043d\u0435\u043f\u043e\u0434\u0432\u0438\u0436\u043d\u043e"

    const-string v7, "Stand still"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u0422\u0435\u0433\u043b\u043e\u0442\u043e \u0441\u0435 \u0441\u0442\u0430\u0431\u0438\u043b\u0438\u0437\u0438\u0440\u0430."

    const-string v7, "The weight is stabilising."

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const-string v0, "\u0422\u0415\u0413\u041b\u041e"

    const-string v1, "WEIGHT"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    const v0, -0xa61f5

    .line 325
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v7, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    goto/16 :goto_3c

    .line 328
    :pswitch_11f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    const-string v1, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435\u2026"

    const-string v7, "Measuring\u2026"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    const-string v1, "\u041d\u0435 \u043f\u0443\u0441\u043a\u0430\u0439\u0442\u0435 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430. \u0418\u0437\u043c\u0435\u0440\u0432\u0430\u0442\u0435\u043b\u043d\u0438\u044f\u0442 \u0442\u043e\u043a \u043d\u0435 \u0441\u0435 \u0443\u0441\u0435\u0449\u0430."

    const-string v7, "Keep holding the handle. The measuring current cannot be felt."

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    const-string v0, "\u0410\u041d\u0410\u041b\u0418\u0417"

    const-string v1, "ANALYSIS"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    const v0, -0xdd3aa2

    .line 333
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v7, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->scanStart:J

    .line 335
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 336
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tick:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3c

    .line 339
    :pswitch_15f
    const-string v0, "\u0413\u041e\u0422\u041e\u0412\u041e"

    const-string v1, "DONE"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    const v0, -0xdd3aa2

    .line 341
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->steps:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v7, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->at(I)V

    goto/16 :goto_3c

    :cond_171
    move v0, v2

    .line 355
    goto/16 :goto_6f

    .line 356
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

    .line 360
    :cond_181
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_89

    :cond_185
    const-string v0, ""

    goto/16 :goto_8d

    .line 303
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
    .registers 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 402
    return-void
.end method

.method reset()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->round:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->clear()V

    .line 286
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->anchorKg:D

    .line 288
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 290
    return-void
.end method

.method scanTick()V
    .registers 11

    .prologue
    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->scanStart:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 381
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

    .line 382
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

    .line 383
    return-void
.end method

.method stable(I)V
    .registers 5

    .prologue
    .line 368
    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 369
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const-string v1, "\u25cf \u0441\u0442\u0430\u0431\u0438\u043b\u0438\u0437\u0438\u0440\u0430\u043d\u0435"

    const-string v2, "\u25cf stabilising"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const v1, -0xa61f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    :goto_18
    return-void

    .line 371
    :cond_19
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x4

    if-ne p1, v0, :cond_35

    .line 372
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const-string v1, "\u2713 \u0441\u0442\u0430\u0431\u0438\u043b\u043d\u043e"

    const-string v2, "\u2713 stable"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const v1, -0xdd3aa2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_18

    .line 375
    :cond_35
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->stableChip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18
.end method

.method stopped(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 276
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 277
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->sub:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method sweep(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleSession;)V
    .registers 11

    .prologue
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 231
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

    .line 232
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->weight:Landroid/widget/TextView;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->live:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Live;->done()V

    .line 234
    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->lastQuality()Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;

    move-result-object v3

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->quality:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 236
    const-string v0, "\u0420\u044a\u0446\u0435"

    const-string v4, "Hands"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_81

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    if-eqz v0, :cond_81

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->arms:Z

    if-eqz v0, :cond_81

    move v0, v1

    :goto_3e
    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->addQ(Ljava/lang/String;Z)V

    .line 237
    const-string v0, "\u041a\u0440\u0430\u043a\u0430"

    const-string v4, "Feet"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_83

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    if-eqz v0, :cond_83

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->legs:Z

    if-eqz v0, :cond_83

    move v0, v1

    :goto_54
    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->addQ(Ljava/lang/String;Z)V

    .line 238
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->hasTrunk()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 239
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

    .line 241
    :cond_73
    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->count()I

    move-result v0

    .line 242
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->round:Landroid/widget/TextView;

    if-gt v0, v1, :cond_85

    const-string v0, ""

    :goto_7d
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void

    :cond_81
    move v0, v2

    .line 236
    goto :goto_3e

    :cond_83
    move v0, v2

    .line 237
    goto :goto_54

    .line 242
    :cond_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u043e\u0442\u0447\u0438\u0442\u0430\u043d\u0438\u044f \u00b7 \u043e\u0441\u0440\u0435\u0434\u043d\u0435\u043d\u0438"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " readings \u00b7 averaged"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7d
.end method

.method view()Landroid/view/View;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->root:Landroid/widget/LinearLayout;

    return-object v0
.end method
