.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
.super Ljava/lang/Object;
.source "FaceStudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceStudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Studio"
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field caption:Landroid/widget/TextView;

.field captionSub:Landroid/widget/TextView;

.field closed:Z

.field contra:Z

.field final dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

.field face:Lcom/isaigu/gymapp/wearable/face/FaceView;

.field faceH:I

.field floor:Landroid/widget/LinearLayout;

.field hint:Landroid/widget/TextView;

.field lastShown:[I

.field final main:Landroid/os/Handler;

.field pauseBtn:Landroid/widget/TextView;

.field final prefs:Landroid/content/SharedPreferences;

.field prepareError:Ljava/lang/String;

.field prepared:Z

.field primary:Landroid/widget/TextView;

.field program:I

.field recorded:Z

.field right:Landroid/widget/LinearLayout;

.field ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

.field s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field statusLine:Landroid/widget/TextView;

.field step:I

.field stopBtn:Landroid/widget/TextView;

.field final tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

.field final values:[Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/face/FaceDevice;I)V
    .registers 10

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    .line 123
    iput v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    .line 140
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    .line 144
    new-array v0, v3, [I

    fill-array-data v0, :array_56

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    .line 147
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 148
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    .line 149
    iput p3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    .line 150
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "xems_face"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prefs:Landroid/content/SharedPreferences;

    .line 152
    invoke-interface {p2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->programs()[I

    move-result-object v4

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_3d
    if-ge v2, v5, :cond_4b

    aget v0, v4, v2

    .line 153
    if-ne v0, p3, :cond_49

    const/4 v0, 0x1

    :goto_44
    or-int/2addr v3, v0

    .line 152
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3d

    :cond_49
    move v0, v1

    .line 153
    goto :goto_44

    .line 155
    :cond_4b
    if-nez v3, :cond_55

    .line 156
    invoke-interface {p2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->programs()[I

    move-result-object v0

    aget v0, v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    .line 158
    :cond_55
    return-void

    .line 144
    :array_56
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static enable(Landroid/widget/TextView;Z)V
    .registers 3

    .prologue
    .line 798
    if-nez p0, :cond_3

    .line 803
    :goto_2
    return-void

    .line 801
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 802
    if-eqz p1, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2

    :cond_e
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_a
.end method


# virtual methods
.method back()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 908
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 909
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;

    if-eqz v0, :cond_1e

    .line 910
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_18

    .line 911
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 916
    :cond_18
    :goto_18
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    .line 917
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    .line 921
    :cond_1d
    :goto_1d
    return-void

    .line 914
    :cond_1e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->cancel()V

    goto :goto_18

    .line 918
    :cond_24
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v0, v3, :cond_1d

    .line 919
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_1d
.end method

.method buildDone()V
    .registers 16

    .prologue
    const/high16 v14, 0x41200000    # 10.0f

    const/high16 v13, 0x41900000    # 18.0f

    const/4 v12, 0x1

    const/16 v11, 0x11

    const/4 v10, 0x0

    .line 678
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v1

    .line 679
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    .line 680
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v3

    .line 681
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 682
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 683
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    invoke-virtual {v4, v10, v0, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 684
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v5, "\u2713"

    const/high16 v6, 0x42300000    # 44.0f

    const/4 v7, -0x1

    invoke-static {v0, v5, v6, v7, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 685
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 686
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6, v10, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 687
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42b00000    # 88.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    const/high16 v7, 0x42b00000    # 88.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    iget-boolean v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->recorded:Z

    .line 689
    if-eqz v5, :cond_1a9

    .line 690
    iget v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    if-lez v0, :cond_180

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0421\u0435\u0441\u0438\u044f "

    const-string v7, "Session "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->done:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u043e\u0442 "

    const-string v7, " of "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u0435 \u0433\u043e\u0442\u043e\u0432\u0430"

    const-string v7, " done"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    :goto_99
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v7, 0x41c00000    # 24.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v6, v0, v7, v8, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 694
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 695
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {v0, v10, v6, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 696
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 697
    iget v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    if-lez v0, :cond_cc

    if-eqz v5, :cond_cc

    .line 698
    invoke-virtual {p0, v3, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->courseBar(Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;Lcom/isaigu/gymapp/wearable/face/FaceProgram;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43d20000    # 420.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {p0, v14}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    :cond_cc
    iget-wide v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_10e

    .line 701
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449\u0430: "

    const-string v6, "Next: "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->when(JJZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v0, v1, v2, v5, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 703
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 704
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 705
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 707
    :cond_10e
    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->finished:Z

    if-eqz v0, :cond_135

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-nez v0, :cond_135

    .line 708
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u041a\u0443\u0440\u0441\u044a\u0442 \u0437\u0430 \u043b\u0438\u0444\u0442\u0438\u043d\u0433 \u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0435\u043d \u2014 \u043e\u0442\u0442\u0443\u043a \u201e\u0421\u0442\u0435\u0433\u043d\u0430\u0442 \u043e\u0432\u0430\u043b\u201c 2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u043f\u0430\u0437\u0438 \u0435\u0444\u0435\u043a\u0442\u0430."

    const-string v2, "The lift course is complete \u2014 from here Firm contour 2\u20133 times a week keeps the effect."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v1, v2, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 710
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 711
    invoke-virtual {p0, v14}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 712
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 714
    :cond_135
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u041b\u0435\u043a\u0430 \u0447\u0435\u0440\u0432\u0435\u043d\u0438\u043d\u0430 \u043f\u043e\u0434 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u0435 \u043d\u043e\u0440\u043c\u0430\u043b\u043d\u0430 \u0438 \u043c\u0438\u043d\u0430\u0432\u0430 \u0434\u043e 20 \u043c\u0438\u043d\u0443\u0442\u0438."

    const-string v2, "A light redness under the pads is normal and fades within 20 minutes."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 716
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 717
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 718
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 719
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 721
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v1, "Done"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Finish;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Finish;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {p0, v0, v10, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 722
    return-void

    .line 691
    :cond_180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0421\u0435\u0441\u0438\u044f "

    const-string v7, "Session "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->done:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u0435 \u0433\u043e\u0442\u043e\u0432\u0430"

    const-string v7, " done"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_99

    .line 692
    :cond_1a9
    const-string v0, "\u0421\u043f\u0440\u044f\u043d\u043e \u0440\u0430\u043d\u043e \u2014 \u043d\u0435 \u0441\u0435 \u0431\u0440\u043e\u0438 \u0432 \u043a\u0443\u0440\u0441\u0430"

    const-string v6, "Stopped early \u2014 not counted in the course"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_99
.end method

.method buildPick()V
    .registers 11

    .prologue
    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 357
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v1, "\u041a\u0430\u043a\u044a\u0432 \u0435\u0444\u0435\u043a\u0442 \u0442\u044a\u0440\u0441\u0438\u043c \u0434\u043d\u0435\u0441?"

    const-string v2, "What effect today?"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->title(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->programs()[I

    move-result-object v4

    .line 359
    const/4 v0, 0x0

    move v2, v3

    .line 360
    :goto_1f
    array-length v1, v4

    if-ge v2, v1, :cond_5f

    .line 361
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_3b

    .line 362
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 363
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    if-nez v2, :cond_5c

    const/4 v0, 0x6

    :goto_33
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 365
    :cond_3b
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v3, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 366
    rem-int/lit8 v5, v2, 0x2

    if-ne v5, v7, :cond_4b

    .line 367
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 369
    :cond_4b
    aget v5, v4, v2

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->programCard(Lcom/isaigu/gymapp/wearable/face/FaceProgram;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1f

    .line 363
    :cond_5c
    const/16 v0, 0xa

    goto :goto_33

    .line 371
    :cond_5f
    array-length v1, v4

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v7, :cond_7b

    if-eqz v0, :cond_7b

    .line 372
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 373
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 374
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    :cond_7b
    const-string v0, "\u041a\u044a\u043c \u043f\u043e\u0441\u0442\u0430\u0432\u044f\u043d\u0435\u0442\u043e  \u2192"

    const-string v1, "To the placement  \u2192"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v1, p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 377
    return-void
.end method

.method buildPlace()V
    .registers 14

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x2

    const/high16 v10, 0x41600000    # 14.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 471
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v5

    .line 472
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v6

    .line 473
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v3, "\u041f\u043e\u0441\u0442\u0430\u0432\u044f\u043d\u0435 \u043d\u0430 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435"

    const-string v4, "Placing the pads"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->title(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_4d

    move v0, v1

    :goto_29
    invoke-virtual {v6, v5, v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->place(ZZ)[Ljava/lang/String;

    move-result-object v7

    move v0, v2

    .line 475
    :goto_2e
    array-length v3, v7

    if-ge v0, v3, :cond_57

    .line 476
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4f

    const-string v3, "\u2713"

    :goto_37
    aget-object v9, v7, v0

    if-nez v0, :cond_54

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_3d
    invoke-virtual {p0, v3, v9, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->placeRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 477
    invoke-static {v4, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 476
    invoke-virtual {v8, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_4d
    move v0, v2

    .line 474
    goto :goto_29

    .line 476
    :cond_4f
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_37

    :cond_54
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_3d

    .line 479
    :cond_57
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_f3

    .line 480
    iget v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    if-ne v0, v11, :cond_e7

    move v0, v1

    .line 481
    :goto_64
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v4, "\u21c4"

    if-eqz v0, :cond_ea

    .line 482
    const-string v0, "\u041a\u0430\u0431\u0435\u043b\u0438\u0442\u0435 \u0437\u0430 \u0440\u044a\u0446\u0435\u0442\u0435: \u043b\u0435\u0432\u0438\u044f\u0442 \u043a\u044a\u043c \u043b\u044f\u0432\u0430\u0442\u0430 \u043f\u043e\u043b\u043e\u0432\u0438\u043d\u0430 \u043d\u0430 \u0447\u0435\u043b\u043e\u0442\u043e, \u0434\u0435\u0441\u043d\u0438\u044f\u0442 \u043a\u044a\u043c \u0434\u044f\u0441\u043d\u0430\u0442\u0430. \u0414\u0440\u0443\u0433\u0438\u0442\u0435 \u043a\u0430\u043d\u0430\u043b\u0438 \u0441\u0430 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u0438."

    const-string v6, "The arm cables: left to the left half of the forehead, right to the right. Every other channel is off."

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    :goto_72
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 481
    invoke-virtual {p0, v4, v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->placeRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 486
    invoke-static {v4, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 481
    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    :cond_81
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-interface {v0, v3, v5}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->notReady(IZ)Ljava/lang/String;

    move-result-object v3

    .line 498
    if-eqz v3, :cond_a0

    .line 499
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v3, v10, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 500
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0xc

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    :cond_a0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_15f

    .line 504
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v1, "\u2713"

    const-string v3, "\u0411\u043e\u0442\u043e\u043a\u0441 / \u0444\u0438\u043b\u044a\u0440 \u0434\u043e 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438: \u043d\u0435"

    const-string v4, "Botox / filler within 2 weeks: no"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {p0, v1, v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->placeRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 505
    invoke-static {v3, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 504
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    const-string v0, "\u2190  \u0415\u0444\u0435\u043a\u0442"

    const-string v1, "\u2190  Effect"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 507
    const-string v0, "\u041a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430  \u2192"

    const-string v1, "To the strength  \u2192"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v1, p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 535
    :goto_e6
    return-void

    :cond_e7
    move v0, v2

    .line 480
    goto/16 :goto_64

    .line 484
    :cond_ea
    const-string v0, "\u041a\u0430\u0431\u0435\u043b\u0438\u0442\u0435 \u0437\u0430 \u0440\u044a\u0446\u0435\u0442\u0435: \u043b\u0435\u0432\u0438\u044f\u0442 \u043a\u044a\u043c \u043b\u044f\u0432\u0430\u0442\u0430 \u0431\u0443\u0437\u0430, \u0434\u0435\u0441\u043d\u0438\u044f\u0442 \u043a\u044a\u043c \u0434\u044f\u0441\u043d\u0430\u0442\u0430. \u0414\u0440\u0443\u0433\u0438\u0442\u0435 \u043a\u0430\u043d\u0430\u043b\u0438 \u0441\u0430 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u0438."

    const-string v6, "The arm cables: left to the left cheek, right to the right. Every other channel is off."

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_72

    :cond_f3
    move v0, v2

    .line 488
    :goto_f4
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ge v0, v3, :cond_81

    .line 489
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v3

    if-eqz v3, :cond_81

    .line 492
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v3, v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->battery(I)I

    move-result v3

    .line 493
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v6, "\u25c9"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v8, v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channelName(IZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  \u00b7  Bluetens \u2713"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ltz v3, :cond_15c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  \u00b7  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " %"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_142
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {p0, v6, v3, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->placeRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 494
    invoke-static {v6, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 493
    invoke-virtual {v4, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_f4

    .line 493
    :cond_15c
    const-string v3, ""

    goto :goto_142

    .line 511
    :cond_15f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 512
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 513
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_267

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_182
    const/16 v5, 0x1c

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    int-to-float v6, v0

    .line 514
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_26b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_195
    const/16 v7, 0x88

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    .line 513
    invoke-static {v5, v6, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 515
    const-string v0, "\u0411\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u043f\u0440\u0435\u0437 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438, \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440, \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442, \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f \u0438\u043b\u0438 \u0440\u0430\u0437\u0434\u0440\u0430\u0437\u043d\u0435\u043d\u0430 \u043a\u043e\u0436\u0430?"

    const-string v5, "Botox or filler within 2 weeks, a pacemaker, pregnancy, epilepsy or irritated skin?"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v0, v6, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 518
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_1dd

    .line 519
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v5, "\u0414\u043d\u0435\u0441 \u0431\u0435\u0437 \u043b\u0438\u0446\u0435. \u0421\u043b\u0435\u0434 \u0431\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u2014 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438: \u0442\u043e\u043a\u044a\u0442 \u0437\u0430\u0441\u0438\u043b\u0432\u0430 \u0438 \u0440\u0430\u0437\u043d\u0430\u0441\u044f \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435\u0442\u043e \u0438\u043c."

    const-string v6, "No face today. After botox or filler \u2014 2 weeks: the current strengthens and spreads them."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {v0, v5, v10, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 522
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {v0, v2, v5, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 523
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 525
    :cond_1dd
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0x12

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    const-string v0, "\u2190  \u041d\u0430\u0437\u0430\u0434"

    const-string v4, "\u2190  Back"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v4, p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_26f

    const-string v0, "\u041f\u0440\u043e\u043c\u0435\u043d\u0438 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0430"

    const-string v5, "Change the answer"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_208
    invoke-static {v4, v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 528
    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x42600000    # 56.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 530
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 531
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v5, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    const-string v0, "\u2713  \u041d\u0435 \u00b7 \u043a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v4, "\u2713  No \u00b7 to the strength"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v4, p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v2, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 533
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-nez v0, :cond_278

    if-eqz v3, :cond_250

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v0

    if-lez v0, :cond_278

    :cond_250
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-eqz v0, :cond_260

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v0

    if-lez v0, :cond_278

    .line 534
    :cond_260
    :goto_260
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->enable(Landroid/widget/TextView;Z)V

    goto/16 :goto_e6

    .line 513
    :cond_267
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_182

    .line 514
    :cond_26b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_195

    .line 527
    :cond_26f
    const-string v0, "\u0414\u0430, \u0438\u043c\u0430"

    const-string v5, "Yes"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_208

    :cond_278
    move v1, v2

    .line 533
    goto :goto_260
.end method

.method buildRun()V
    .registers 15

    .prologue
    const/high16 v13, 0x439b0000    # 310.0f

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x42600000    # 56.0f

    const/4 v9, 0x0

    .line 633
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v6

    .line 634
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 635
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 636
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceRing;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    .line 637
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const v2, -0x906f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v8, 0x30

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->setColors(IIIII)V

    .line 638
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v3, "Wake-up"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->name(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v4, "Let go"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "\u0421\u0422\u042f\u0413\u0410\u041d\u0415"

    const-string v3, "HOLD"

    .line 639
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u041e\u0422\u0414\u0418\u0425"

    const-string v4, "REST"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u041f\u0410\u0423\u0417\u0410"

    const-string v5, "PAUSED"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 638
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->setWords([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    if-eqz v0, :cond_95

    .line 641
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17a

    const-string v0, "\u041d\u0415\u0416\u0415\u041d \u0422\u041e\u041a"

    const-string v2, "GENTLE CURRENT"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_92
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->setSteady(Ljava/lang/String;)V

    .line 643
    :cond_95
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 645
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 646
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3, v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    .line 647
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 648
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v9, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->strengthRow()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->canPause()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 652
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v2, "\u275a\u275a  Pause"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    .line 653
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    :cond_126
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-direct {v2, v9, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v9, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 658
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1, v6}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->stopLabel(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    .line 659
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Stop;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Stop;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 662
    return-void

    .line 641
    :cond_17a
    const-string v0, "\u041f\u041e\u0422\u0423\u041f\u0412\u0410\u041d\u0415"

    const-string v2, "TAPPING"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_92
.end method

.method buildStrength()V
    .registers 13

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x41600000    # 14.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 553
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v3

    .line 554
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v4

    .line 555
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    if-nez v0, :cond_29

    .line 556
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->minutes()I

    move-result v6

    invoke-interface {v0, v5, v6, v3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->prepare(IIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    if-nez v0, :cond_138

    move v0, v1

    :goto_27
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    .line 559
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v5, "\u0421\u0438\u043b\u0430"

    const-string v6, "Strength"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->title(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 560
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 561
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 562
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 563
    iget v5, v4, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget v7, v4, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/16 v8, 0x77

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v6, "\u25c9"

    const/high16 v7, 0x41900000    # 18.0f

    iget v8, v4, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    invoke-static {v5, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->strengthGoal(Z)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v3, v4, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 566
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 567
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v2, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    if-eqz v0, :cond_cf

    .line 570
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {v3, v4, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    :cond_cf
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->strengthRow()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v4, 0x12

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_107

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u0415\u0434\u043d\u0430 \u0441\u0438\u043b\u0430 \u0437\u0430 \u0434\u0432\u0435\u0442\u0435 \u0431\u0443\u0437\u0438 \u2014 \u0437\u0430\u0442\u043e\u0432\u0430 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u0441\u0442\u043e\u044f\u0442 \u0435\u0434\u043d\u0430\u043a\u0432\u043e \u043e\u0442 \u0434\u0432\u0435\u0442\u0435 \u0441\u0442\u0440\u0430\u043d\u0438."

    const-string v3, "One strength for both cheeks \u2014 so the pads sit the same on both sides."

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v3, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    :cond_107
    const-string v0, "\u2190  \u041d\u0430\u0437\u0430\u0434"

    const-string v1, "\u2190  Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Back;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Back;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_13b

    const-string v0, "\u25b6  \u0421\u0442\u0430\u0440\u0442"

    const-string v1, "\u25b6  Start"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_127
    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Start;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Start;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 581
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->enable(Landroid/widget/TextView;Z)V

    .line 582
    return-void

    :cond_138
    move v0, v2

    .line 557
    goto/16 :goto_27

    .line 579
    :cond_13b
    const-string v0, "\u2713  \u0414\u043e\u0431\u0440\u0435 \u0435 \u00b7 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v1, "\u2713  Good \u00b7 go on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_127
.end method

.method close()V
    .registers 3

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    .line 275
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hide()V

    .line 277
    :try_start_6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->cancel()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_16

    .line 281
    :goto_b
    # getter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$000()Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    move-result-object v0

    if-ne v0, p0, :cond_15

    .line 282
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$002(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 284
    :cond_15
    return-void

    .line 278
    :catch_16
    move-exception v0

    .line 279
    const-string v1, "FaceStudio.cancel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method closeTapped()V
    .registers 3

    .prologue
    .line 262
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->active()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 263
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hide()V

    .line 271
    :goto_10
    return-void

    .line 266
    :cond_11
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 267
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->finishDone()V

    goto :goto_10

    .line 270
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->close()V

    goto :goto_10
.end method

.method courseBar(Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;Lcom/isaigu/gymapp/wearable/face/FaceProgram;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v7, -0x1

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 725
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 726
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 727
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v5, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 728
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 729
    iget v2, p2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v5, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 730
    iget v2, p1, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->done:I

    int-to-float v2, v2

    const/4 v3, 0x1

    iget v4, p1, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 731
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sub-float v2, v6, v2

    invoke-direct {v3, v5, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 734
    return-object v0
.end method

.method courseCard()Landroid/view/View;
    .registers 16

    .prologue
    const/high16 v14, 0x41000000    # 8.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v12, 0x41600000    # 14.0f

    const/4 v11, 0x0

    .line 432
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v1

    .line 433
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    .line 434
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v3

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 436
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 437
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 438
    iget v0, v2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/16 v7, 0x14

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget v8, v2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/16 v9, 0x55

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v8

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-static {v0, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 440
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 441
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->name(Z)Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/4 v10, 0x1

    invoke-static {v7, v8, v12, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 442
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  \u00b7  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->line(Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v7, v8, v12, v9, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 443
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v11, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    iget v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    if-lez v0, :cond_b7

    .line 446
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-virtual {p0, v14}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 447
    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 448
    invoke-virtual {p0, v3, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->courseBar(Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;Lcom/isaigu/gymapp/wearable/face/FaceProgram;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    :cond_b7
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 452
    iget-boolean v7, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->finished:Z

    if-eqz v7, :cond_de

    iget v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-nez v7, :cond_de

    .line 453
    const-string v0, "\u041a\u0443\u0440\u0441\u044a\u0442 \u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0435\u043d \u2014 \u201e\u0421\u0442\u0435\u0433\u043d\u0430\u0442 \u043e\u0432\u0430\u043b\u201c 2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u043f\u0430\u0437\u0438 \u0435\u0444\u0435\u043a\u0442\u0430"

    const-string v1, "The course is complete \u2014 Firm contour 2\u20133 times a week keeps the effect"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 462
    :goto_cb
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v2, v1, v3, v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 463
    invoke-virtual {p0, v14}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v11, v1, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 464
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    return-object v6

    .line 456
    :cond_de
    iget-wide v8, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    cmp-long v7, v8, v4

    if-lez v7, :cond_106

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0441\u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430 \u2014 \u043d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 "

    const-string v7, "The muscle recovers \u2014 best "

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    invoke-static {v2, v3, v4, v5, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->when(JJZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_cb

    .line 460
    :cond_106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->course(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  \u00b7  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscle(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_cb
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method finishDone()V
    .registers 3

    .prologue
    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    .line 754
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hide()V

    .line 755
    # getter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$000()Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    move-result-object v0

    if-ne v0, p0, :cond_10

    .line 756
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$002(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 758
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_1e

    .line 760
    :try_start_18
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->finishAssisted()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1f

    .line 765
    :goto_1b
    :try_start_1b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_26

    .line 770
    :cond_1e
    :goto_1e
    return-void

    .line 761
    :catch_1f
    move-exception v0

    .line 762
    const-string v1, "FaceStudio.report"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 766
    :catch_26
    move-exception v0

    .line 767
    const-string v1, "FaceStudio.closeAuto"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .registers 12

    .prologue
    const/high16 v7, 0x42600000    # 56.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v5, 0x0

    .line 781
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 782
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 785
    :cond_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 786
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    return-object v0
.end method

.method ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 8

    .prologue
    .line 792
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 793
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    return-void
.end method

.method go(I)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 289
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    .line 290
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 291
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 292
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aput-object v3, v2, v1

    .line 293
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aput-object v3, v2, v0

    .line 294
    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    .line 295
    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    .line 296
    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    .line 297
    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    .line 298
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    aput v4, v2, v1

    .line 299
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    aput v4, v2, v0

    .line 300
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v3

    iget v3, v3, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    if-ne v3, v0, :cond_75

    :goto_34
    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->focusChin(Z)V

    .line 301
    const/4 v0, 0x2

    if-gt p1, v0, :cond_49

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->progress(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    :cond_49
    packed-switch p1, :pswitch_data_88

    .line 309
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildDone()V

    .line 311
    :goto_4f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->floor:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 312
    const/4 v0, 0x4

    if-eq p1, v0, :cond_66

    .line 313
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->floor:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->courseCard()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    :cond_66
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->updateCaption()V

    .line 316
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->updateBadge()V

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 318
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->refresh()V

    .line 319
    return-void

    :cond_75
    move v0, v1

    .line 300
    goto :goto_34

    .line 305
    :pswitch_77
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildPick()V

    goto :goto_4f

    .line 306
    :pswitch_7b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildPlace()V

    goto :goto_4f

    .line 307
    :pswitch_7f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildStrength()V

    goto :goto_4f

    .line 308
    :pswitch_83
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildRun()V

    goto :goto_4f

    .line 304
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_77
        :pswitch_7b
        :pswitch_7f
        :pswitch_83
    .end packed-switch
.end method

.method hide()V
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    :try_start_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_12

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_12} :catch_13

    .line 258
    :cond_12
    :goto_12
    return-void

    .line 256
    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method minutes()I
    .registers 5

    .prologue
    const/16 v0, 0x14

    const/16 v1, 0xa

    .line 622
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    packed-switch v2, :pswitch_data_1a

    :pswitch_9
    move v0, v1

    .line 626
    :cond_a
    :goto_a
    :pswitch_a
    return v0

    .line 623
    :pswitch_b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->week:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_a

    move v0, v1

    goto :goto_a

    .line 625
    :pswitch_16
    const/16 v0, 0xf

    goto :goto_a

    .line 622
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_16
    .end packed-switch
.end method

.method next(I)V
    .registers 3

    .prologue
    .line 901
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_8

    .line 905
    :goto_7
    return-void

    .line 904
    :cond_8
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_7
.end method

.method pick(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 892
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-eq p1, v0, :cond_9

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eqz v0, :cond_a

    .line 898
    :cond_9
    :goto_9
    return-void

    .line 895
    :cond_a
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    .line 896
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    .line 897
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_9
.end method

.method placeRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .registers 14

    .prologue
    const/high16 v9, 0x41f00000    # 30.0f

    const/high16 v8, 0x41700000    # 15.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 538
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 539
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 540
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, p3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 541
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 542
    const/16 v2, 0x26

    invoke-static {p3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x99

    invoke-static {p3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, p2, v8, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 545
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 546
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    return-object v0
.end method

.method prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    return-object v0
.end method

.method programCard(Lcom/isaigu/gymapp/wearable/face/FaceProgram;)Landroid/view/View;
    .registers 15

    .prologue
    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v12, 0x41000000    # 8.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 381
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-ne v0, v3, :cond_192

    move v0, v1

    .line 382
    :goto_f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v4

    .line 383
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 384
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 385
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    int-to-float v6, v3

    .line 386
    if-eqz v0, :cond_195

    .line 387
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/16 v7, 0x24

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    iget v7, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/16 v8, 0xdd

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 388
    :goto_55
    iget v7, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    .line 386
    invoke-static {v3, v7, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 390
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pick;

    iget v6, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    invoke-direct {v3, p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pick;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 392
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 393
    const/16 v3, 0x10

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 394
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-object v8, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->glyph:Ljava/lang/String;

    const/high16 v9, 0x41980000    # 19.0f

    if-eqz v0, :cond_1a3

    const/4 v3, -0x1

    :goto_82
    invoke-static {v7, v8, v9, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 395
    const/16 v3, 0x11

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 396
    if-eqz v0, :cond_1a7

    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_8f
    const/high16 v8, 0x41980000    # 19.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v3, v8, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42180000    # 38.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    const/high16 v9, 0x42180000    # 38.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 399
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-virtual {v7, v3, v2, v8, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 400
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->name(Z)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41900000    # 18.0f

    if-eqz v0, :cond_1b1

    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_d0
    invoke-static {v8, v9, v10, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 401
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 402
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 403
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->stars()Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41300000    # 11.0f

    if-eqz v0, :cond_1b5

    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_eb
    invoke-static {v8, v9, v10, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 405
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v3, v2, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v7, "i"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v10, 0x22

    invoke-static {v3, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 408
    new-instance v7, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;

    iget v8, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    invoke-direct {v7, p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42080000    # 34.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    const/high16 v9, 0x42080000    # 34.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tag(Z)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41680000    # 14.5f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v6, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 412
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 413
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {v3, v2, v6, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 414
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 416
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {v6, v2, v3, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 417
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->rhythm(Z)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_1b9

    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_15d
    invoke-static {v7, v8, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 418
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 419
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->course(Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1bc

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    :goto_171
    invoke-static {v3, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 421
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 422
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 423
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 424
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 425
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    return-object v5

    :cond_192
    move v0, v2

    .line 381
    goto/16 :goto_f

    .line 388
    :cond_195
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    goto/16 :goto_55

    .line 394
    :cond_1a3
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    goto/16 :goto_82

    .line 396
    :cond_1a7
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/16 v8, 0x30

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    goto/16 :goto_8f

    .line 400
    :cond_1b1
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_d0

    .line 404
    :cond_1b5
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_eb

    .line 417
    :cond_1b9
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_15d

    .line 420
    :cond_1bc
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_171
.end method

.method progress(I)Landroid/view/View;
    .registers 15

    .prologue
    const/high16 v12, 0x41d00000    # 26.0f

    const/high16 v11, 0x41500000    # 13.0f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 324
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 325
    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "\u0415\u0444\u0435\u043a\u0442"

    const-string v3, "Effect"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    const-string v0, "\u041f\u043e\u0441\u0442\u0430\u0432\u044f\u043d\u0435"

    const-string v3, "Placement"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    const/4 v0, 0x2

    const-string v3, "\u0421\u0438\u043b\u0430"

    const-string v4, "Strength"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v0

    move v6, v2

    .line 326
    :goto_36
    const/4 v0, 0x3

    if-ge v6, v0, :cond_f0

    .line 327
    if-ne v6, p1, :cond_c5

    move v5, v1

    .line 328
    :goto_3c
    if-ge v6, p1, :cond_c8

    move v0, v1

    .line 329
    :goto_3f
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    if-eqz v0, :cond_cb

    const-string v3, "\u2713"

    move-object v4, v3

    :goto_46
    if-eqz v5, :cond_d4

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_4a
    invoke-static {v9, v4, v11, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 330
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 331
    if-eqz v5, :cond_de

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 332
    :goto_57
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    int-to-float v4, v4

    .line 331
    invoke-static {v0, v4, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    aget-object v4, v8, v6

    const/high16 v9, 0x41600000    # 14.0f

    if-eqz v5, :cond_ed

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_7d
    invoke-static {v3, v4, v9, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 335
    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 336
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    const/4 v0, 0x2

    if-ge v6, v0, :cond_c0

    .line 338
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 339
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v4, 0x44

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 340
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 341
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 342
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    :cond_c0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_36

    :cond_c5
    move v5, v2

    .line 327
    goto/16 :goto_3c

    :cond_c8
    move v0, v2

    .line 328
    goto/16 :goto_3f

    .line 329
    :cond_cb
    add-int/lit8 v3, v6, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_46

    :cond_d4
    if-eqz v0, :cond_da

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_4a

    :cond_da
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_4a

    .line 331
    :cond_de
    if-eqz v0, :cond_ea

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_e2
    const/16 v4, 0x26

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto/16 :goto_57

    :cond_ea
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_e2

    .line 334
    :cond_ed
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_7d

    .line 345
    :cond_f0
    return-object v7
.end method

.method record()V
    .registers 7

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->recorded:Z

    if-eqz v0, :cond_5

    .line 750
    :cond_4
    :goto_4
    return-void

    .line 741
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->doneShare()D

    move-result-wide v0

    .line 742
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->courseKey()Ljava/lang/String;

    move-result-object v2

    .line 743
    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpg-double v0, v0, v4

    if-ltz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 746
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->decode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->encode(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->recorded:Z

    goto :goto_4
.end method

.method refresh()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 808
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_b

    .line 862
    :cond_a
    :goto_a
    return-void

    .line 811
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v2

    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 813
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    if-eqz v0, :cond_6e

    .line 814
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v3

    .line 815
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->line(Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;Z)Ljava/lang/String;

    move-result-object v0

    .line 816
    iget-wide v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_95

    .line 817
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "  \u00b7  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0441\u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430 \u2014 \u043d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 "

    const-string v7, "the muscle recovers \u2014 best "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    .line 818
    invoke-static {v6, v7, v4, v5, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->when(JJZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 823
    :goto_59
    iget-boolean v3, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->finished:Z

    if-eqz v3, :cond_69

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-nez v3, :cond_69

    .line 824
    const-string v0, "\u041a\u0443\u0440\u0441\u044a\u0442 \u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0435\u043d \u2014 \u0437\u0430 \u043f\u043e\u0434\u0434\u0440\u044a\u0436\u043a\u0430 \u0438\u0437\u0431\u0435\u0440\u0438 \u201e\u0422\u043e\u043d\u0443\u0441\u201c"

    const-string v3, "The course is complete \u2014 for upkeep pick Tone"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    :cond_69
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6e
    move v0, v1

    .line 828
    :goto_6f
    if-ge v0, v8, :cond_9d

    .line 829
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    if-eqz v3, :cond_92

    .line 830
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v3, v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->strength(I)I

    move-result v3

    .line 831
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    aget v6, v6, v0

    if-eq v3, v6, :cond_92

    .line 832
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    aput v3, v6, v0

    .line 833
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aget-object v6, v6, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 821
    :cond_95
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_59

    .line 837
    :cond_9d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v0, v8, :cond_cc

    .line 838
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    if-eqz v0, :cond_13d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->canStart()Z

    move-result v0

    if-eqz v0, :cond_13d

    const/4 v0, 0x1

    :goto_b0
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->enable(Landroid/widget/TextView;Z)V

    .line 839
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    if-eqz v0, :cond_149

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_140

    .line 840
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0434\u0430\u0432\u0430 \u0440\u0438\u0442\u044a\u043c\u0430 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u2014 \u043a\u0430\u0447\u0432\u0430\u0439 \u043f\u043e \u0435\u0434\u043d\u043e"

    const-string v3, "The suit runs the program\'s rhythm \u2014 raise one step at a time"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    :goto_c9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    :cond_cc
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 844
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v1

    .line 845
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    if-eqz v0, :cond_ec

    .line 846
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->phases()[J

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v4}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->paused()Z

    move-result v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->set([JLcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)V

    .line 848
    :cond_ec
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    if-eqz v0, :cond_f9

    .line 849
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->runLine(Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    :cond_f9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_112

    .line 852
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->paused()Z

    move-result v0

    if-eqz v0, :cond_14d

    const-string v0, "\u25b6  \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v4, "\u25b6  Resume"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10f
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    :cond_112
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_121

    .line 855
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v3, v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->stopLabel(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    :cond_121
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v3

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    invoke-virtual {v3, v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->runHint(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->finished()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 859
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->toDone()V

    goto/16 :goto_a

    :cond_13d
    move v0, v1

    .line 838
    goto/16 :goto_b0

    .line 841
    :cond_140
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0442\u0435\u0447\u0435 \u2014 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e \u0435 \u0432\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435\u0442\u043e"

    const-string v3, "The program runs \u2014 it starts with the wake-up"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c9

    :cond_149
    const-string v0, ""

    goto/16 :goto_c9

    .line 852
    :cond_14d
    const-string v0, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v4, "\u275a\u275a  Pause"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10f
.end method

.method reshow(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 248
    :goto_e
    return-void

    .line 241
    :cond_f
    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    if-eq p1, v0, :cond_17

    .line 242
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 244
    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->show()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_e

    .line 245
    :catch_1b
    move-exception v0

    .line 246
    const-string v1, "FaceStudio.reshow"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method runLine(Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)Ljava/lang/String;
    .registers 6

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->name(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tag(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->rhythm(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method show()V
    .registers 12

    .prologue
    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u041b\u0438\u0446\u0435"

    const-string v2, "Face"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->subtitle()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x500

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Close;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Close;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Info;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 182
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 185
    const/high16 v2, 0x43be0000    # 380.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v3, 0x43320000    # 178.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->faceH:I

    .line 186
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 187
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    .line 188
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_1bc

    const v0, -0xa11501

    :goto_9f
    const v4, -0x906f

    const v5, -0xa5a6

    invoke-virtual {v3, v0, v4, v5}, Lcom/isaigu/gymapp/wearable/face/FaceView;->setColors(III)V

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceView;->setSource(Lcom/isaigu/gymapp/wearable/face/FaceView$Source;)V

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 192
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {v0, v3, v7, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 193
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v4, ""

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v8, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    .line 194
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v4, ""

    const/high16 v5, 0x41500000    # 13.0f

    const v6, -0x33190c01

    invoke-static {v3, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    .line 195
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 196
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x50

    invoke-direct {v3, v8, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 200
    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->faceH:I

    invoke-direct {v0, v7, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 205
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v2, v7}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 207
    invoke-virtual {v2, v9}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 208
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    .line 209
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 210
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->floor:Landroid/widget/LinearLayout;

    .line 212
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->floor:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->faceH:I

    const v4, 0x3f8f5c29    # 1.12f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 214
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 215
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 223
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    return-void

    .line 188
    :cond_1bc
    const v0, -0xc82f15

    goto/16 :goto_9f
.end method

.method start()V
    .registers 3

    .prologue
    .line 924
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->canStart()Z

    move-result v0

    if-nez v0, :cond_9

    .line 929
    :goto_8
    return-void

    .line 927
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->start(Landroid/content/Context;)V

    .line 928
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_8
.end method

.method stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;
    .registers 5

    .prologue
    .line 773
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->courseKey()Ljava/lang/String;

    move-result-object v0

    .line 774
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_40

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->decode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 775
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->stats(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceProgram;J)Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v0

    return-object v0

    .line 774
    :cond_40
    const-string v0, ""

    goto :goto_2f
.end method

.method strengthRow()Landroid/view/View;
    .registers 13

    .prologue
    .line 586
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 587
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 588
    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_113

    const/4 v3, 0x2

    if-ge v0, v3, :cond_113

    .line 589
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 590
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 591
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 592
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v6

    invoke-interface {v5, v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channelName(IZ)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41600000    # 14.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 594
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 595
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 596
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 597
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 598
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v6, "\u2212"

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v9, 0x3c

    invoke-static {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v5

    .line 599
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v7, "+"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v10, 0x3c

    invoke-static {v6, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v6

    .line 601
    new-instance v7, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;

    invoke-direct {v7, p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    const/4 v8, -0x1

    invoke-static {v5, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 602
    new-instance v7, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;

    invoke-direct {v7, p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v8, "0"

    const/high16 v9, 0x42300000    # 44.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 604
    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 605
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aput-object v7, v8, v0

    .line 606
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42700000    # 60.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    const/high16 v10, 0x42700000    # 60.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42d00000    # 104.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42700000    # 60.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    const/high16 v8, 0x42700000    # 60.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 611
    if-lez v0, :cond_10c

    .line 612
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 614
    :cond_10c
    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    .line 616
    :cond_113
    return-object v1
.end method

.method subtitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->clientName()Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_36

    .line 231
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c XEMS \u00b7 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u043d\u0430 \u0438\u0437\u0445\u043e\u0434\u0438\u0442\u0435 \u0437\u0430 \u0440\u044a\u0446\u0435"

    const-string v2, "XEMS suit \u00b7 pads on the arm outputs"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_16
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_35
    return-object v0

    .line 232
    :cond_36
    const-string v0, "Bluetens \u00b7 \u043f\u043e \u0435\u0434\u043d\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u043d\u0430 \u0431\u0443\u0437\u0430"

    const-string v2, "Bluetens \u00b7 a pad per cheek"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method tickNow()V
    .registers 5

    .prologue
    .line 933
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->refresh()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_1f

    .line 937
    :goto_3
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 938
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 940
    :cond_1e
    return-void

    .line 934
    :catch_1f
    move-exception v0

    .line 935
    const-string v1, "FaceStudio.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method title(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 349
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v1, 0x41b00000    # 22.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 350
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 351
    return-object v0
.end method

.method toDone()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 667
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-eqz v0, :cond_a

    .line 675
    :cond_9
    :goto_9
    return-void

    .line 670
    :cond_a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->record()V

    .line 671
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_20

    .line 672
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->reshow(Landroid/app/Activity;)V

    .line 674
    :cond_20
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_9
.end method

.method updateBadge()V
    .registers 4

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v0

    .line 886
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->line(Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 887
    return-void
.end method

.method updateCaption()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 870
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v1

    .line 871
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    .line 872
    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v3, v0, :cond_45

    .line 873
    iget v1, v2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    .line 874
    :goto_12
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    const-string v1, "1 \u0438 2 \u2014 \u043d\u0430 \u0447\u0435\u043b\u043e\u0442\u043e, \u043d\u0430\u0434 \u0432\u0435\u0436\u0434\u0438\u0442\u0435"

    const-string v3, "1 and 2 \u2014 on the forehead, above the brows"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    const-string v0, "\u2298 \u043d\u0435: \u043f\u043e-\u0431\u043b\u0438\u0437\u043e \u043e\u0442 2 \u043f\u0440\u044a\u0441\u0442\u0430 \u0434\u043e \u043e\u043a\u043e\u0442\u043e"

    const-string v2, "\u2298 never: closer than 2 fingers to the eye"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    :goto_30
    return-void

    .line 873
    :cond_31
    const/4 v0, 0x0

    goto :goto_12

    .line 875
    :cond_33
    const-string v1, "1 \u0438 2 \u2014 \u0434\u0432\u043e\u0439\u043a\u0430\u0442\u0430 \u0435 \u043e\u0442 \u0435\u0434\u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0430"

    const-string v3, "1 and 2 \u2014 the pair stays on one side"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 877
    :cond_3c
    const-string v0, "\u2298 \u043d\u0435: \u043e\u043a\u043e\u043b\u043e \u043e\u043a\u043e\u0442\u043e, \u043f\u0440\u0435\u0434 \u0443\u0445\u043e\u0442\u043e, \u043e\u0442\u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0448\u0438\u044f\u0442\u0430"

    const-string v2, "\u2298 never: around the eye, in front of the ear, the side of the neck"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 879
    :cond_45
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscle(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->latin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30
.end method
