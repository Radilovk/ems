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

    .line 144
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

    .line 138
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    .line 142
    new-array v0, v3, [I

    fill-array-data v0, :array_56

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    .line 145
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 146
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    .line 147
    iput p3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "xems_face"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prefs:Landroid/content/SharedPreferences;

    .line 150
    invoke-interface {p2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->programs()[I

    move-result-object v4

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_3d
    if-ge v2, v5, :cond_4b

    aget v0, v4, v2

    .line 151
    if-ne v0, p3, :cond_49

    const/4 v0, 0x1

    :goto_44
    or-int/2addr v3, v0

    .line 150
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3d

    :cond_49
    move v0, v1

    .line 151
    goto :goto_44

    .line 153
    :cond_4b
    if-nez v3, :cond_55

    .line 154
    invoke-interface {p2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->programs()[I

    move-result-object v0

    aget v0, v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    .line 156
    :cond_55
    return-void

    .line 142
    :array_56
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static enable(Landroid/widget/TextView;Z)V
    .registers 3

    .prologue
    .line 715
    if-nez p0, :cond_3

    .line 720
    :goto_2
    return-void

    .line 718
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 719
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

    .line 823
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 824
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;

    if-eqz v0, :cond_1e

    .line 825
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_18

    .line 826
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 831
    :cond_18
    :goto_18
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    .line 832
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    .line 836
    :cond_1d
    :goto_1d
    return-void

    .line 829
    :cond_1e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->cancel()V

    goto :goto_18

    .line 833
    :cond_24
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v0, v3, :cond_1d

    .line 834
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

    .line 595
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v1

    .line 596
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    .line 597
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v3

    .line 598
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 599
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 600
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    invoke-virtual {v4, v10, v0, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 601
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v5, "\u2713"

    const/high16 v6, 0x42300000    # 44.0f

    const/4 v7, -0x1

    invoke-static {v0, v5, v6, v7, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 602
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 603
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6, v10, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42b00000    # 88.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    const/high16 v7, 0x42b00000    # 88.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    iget-boolean v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->recorded:Z

    .line 606
    if-eqz v5, :cond_1a9

    .line 607
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

    .line 610
    :goto_99
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v7, 0x41c00000    # 24.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v6, v0, v7, v8, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 611
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 612
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {v0, v10, v6, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 613
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 614
    iget v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    if-lez v0, :cond_cc

    if-eqz v5, :cond_cc

    .line 615
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

    .line 617
    :cond_cc
    iget-wide v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_10e

    .line 618
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

    .line 620
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 621
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 622
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 624
    :cond_10e
    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->finished:Z

    if-eqz v0, :cond_135

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-nez v0, :cond_135

    .line 625
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u041a\u0443\u0440\u0441\u044a\u0442 \u0437\u0430 \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u043d\u0435 \u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0435\u043d \u2014 \u043e\u0442\u0442\u0443\u043a \u201e\u0422\u043e\u043d\u0443\u0441\u201c 2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u043f\u0430\u0437\u0438 \u0435\u0444\u0435\u043a\u0442\u0430."

    const-string v2, "The lift course is complete \u2014 from here Tone 2\u20133 times a week keeps the effect."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v1, v2, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 627
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 628
    invoke-virtual {p0, v14}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 629
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 631
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

    .line 633
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 634
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 635
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 636
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 638
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v1, "Done"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Finish;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Finish;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {p0, v0, v10, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 639
    return-void

    .line 608
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

    .line 609
    :cond_1a9
    const-string v0, "\u0421\u043f\u0440\u044f\u043d\u043e \u0440\u0430\u043d\u043e \u2014 \u043d\u0435 \u0441\u0435 \u0431\u0440\u043e\u0438 \u0432 \u043a\u0443\u0440\u0441\u0430"

    const-string v6, "Stopped early \u2014 not counted in the course"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_99
.end method

.method buildPick()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v2, "\u041a\u0430\u043a\u044a\u0432 \u0435\u0444\u0435\u043a\u0442 \u0442\u044a\u0440\u0441\u0438\u043c \u0434\u043d\u0435\u0441?"

    const-string v3, "What effect today?"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->title(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->programs()[I

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1a
    if-ge v0, v3, :cond_36

    aget v4, v2, v0

    .line 343
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->programCard(Lcom/isaigu/gymapp/wearable/face/FaceProgram;)Landroid/view/View;

    move-result-object v4

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v7, 0xc

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 345
    :cond_36
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    .line 346
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    const-string v0, "\u041a\u044a\u043c \u043f\u043e\u0441\u0442\u0430\u0432\u044f\u043d\u0435\u0442\u043e  \u2192"

    const-string v2, "To the placement  \u2192"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 348
    return-void
.end method

.method buildPlace()V
    .registers 14

    .prologue
    const/high16 v12, 0x41800000    # 16.0f

    const/16 v11, 0xa

    const/4 v4, 0x1

    const/high16 v10, 0x41600000    # 14.0f

    const/4 v1, 0x0

    .line 398
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v5

    .line 399
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    .line 400
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v3, "\u041f\u043e\u0441\u0442\u0430\u0432\u044f\u043d\u0435 \u043d\u0430 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435"

    const-string v6, "Placing the pads"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->title(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->place(Z)[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 402
    :goto_26
    array-length v2, v6

    if-ge v0, v2, :cond_4d

    .line 403
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    if-nez v0, :cond_45

    const-string v2, "\u2713"

    :goto_2f
    aget-object v8, v6, v0

    if-nez v0, :cond_4a

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_35
    invoke-virtual {p0, v2, v8, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->placeRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 404
    invoke-static {v3, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 403
    invoke-virtual {v7, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 403
    :cond_45
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    :cond_4a
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_35

    .line 406
    :cond_4d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_d7

    .line 407
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v2, "\u21c4"

    const-string v3, "\u041a\u0430\u0431\u0435\u043b\u0438\u0442\u0435 \u0437\u0430 \u0440\u044a\u0446\u0435\u0442\u0435: \u043b\u0435\u0432\u0438\u044f\u0442 \u043a\u044a\u043c \u043b\u044f\u0432\u0430\u0442\u0430 \u0431\u0443\u0437\u0430, \u0434\u0435\u0441\u043d\u0438\u044f\u0442 \u043a\u044a\u043c \u0434\u044f\u0441\u043d\u0430\u0442\u0430. \u0414\u0440\u0443\u0433\u0438\u0442\u0435 \u043a\u0430\u043d\u0430\u043b\u0438 \u0441\u0430 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u0438."

    const-string v6, "The arm cables: left to the left cheek, right to the right. Every other channel is off."

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {p0, v2, v3, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->placeRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 409
    invoke-static {v3, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 407
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    :cond_70
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-interface {v0, v2, v5}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->notReady(IZ)Ljava/lang/String;

    move-result-object v2

    .line 421
    if-eqz v2, :cond_8f

    .line 422
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v2, v10, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 423
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0xc

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    :cond_8f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_143

    .line 427
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v2, "\u2713"

    const-string v3, "\u0411\u043e\u0442\u043e\u043a\u0441 / \u0444\u0438\u043b\u044a\u0440 \u0434\u043e 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438: \u043d\u0435"

    const-string v4, "Botox / filler within 2 weeks: no"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->placeRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 428
    invoke-static {v3, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 427
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    const-string v0, "\u2190  \u0415\u0444\u0435\u043a\u0442"

    const-string v2, "\u2190  Effect"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v2, p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 430
    const-string v0, "\u041a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430  \u2192"

    const-string v2, "To the strength  \u2192"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 458
    :goto_d6
    return-void

    :cond_d7
    move v0, v1

    .line 411
    :goto_d8
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v0, v2, :cond_70

    .line 412
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v2

    if-eqz v2, :cond_70

    .line 415
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2, v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->battery(I)I

    move-result v2

    .line 416
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

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

    if-ltz v2, :cond_140

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  \u00b7  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " %"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_126
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {p0, v6, v2, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->placeRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 417
    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 416
    invoke-virtual {v3, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_d8

    .line 416
    :cond_140
    const-string v2, ""

    goto :goto_126

    .line 434
    :cond_143
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 435
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {v3, v0, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 436
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_248

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_162
    const/16 v5, 0x1c

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    int-to-float v6, v0

    .line 437
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_24c

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_173
    const/16 v7, 0x88

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    .line 436
    invoke-static {v5, v6, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    const-string v0, "\u0411\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u043f\u0440\u0435\u0437 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438, \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440, \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442, \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f \u0438\u043b\u0438 \u0440\u0430\u0437\u0434\u0440\u0430\u0437\u043d\u0435\u043d\u0430 \u043a\u043e\u0436\u0430?"

    const-string v5, "Botox or filler within 2 weeks, a pacemaker, pregnancy, epilepsy or irritated skin?"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v0, v6, v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_1bb

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v5, "\u0414\u043d\u0435\u0441 \u0431\u0435\u0437 \u043b\u0438\u0446\u0435. \u0421\u043b\u0435\u0434 \u0431\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u2014 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438: \u0442\u043e\u043a\u044a\u0442 \u0437\u0430\u0441\u0438\u043b\u0432\u0430 \u0438 \u0440\u0430\u0437\u043d\u0430\u0441\u044f \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435\u0442\u043e \u0438\u043c."

    const-string v6, "No face today. After botox or filler \u2014 2 weeks: the current strengthens and spreads them."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {v0, v5, v10, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 445
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {v0, v1, v5, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 446
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 448
    :cond_1bb
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0x12

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    const-string v0, "\u2190  \u041d\u0430\u0437\u0430\u0434"

    const-string v3, "\u2190  Back"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v3, p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_250

    const-string v0, "\u041f\u0440\u043e\u043c\u0435\u043d\u0438 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0430"

    const-string v5, "Change the answer"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e6
    const/4 v5, 0x2

    invoke-static {v3, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 451
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x42600000    # 56.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 453
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 454
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v5, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    const-string v0, "\u2713  \u041d\u0435 \u00b7 \u043a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v3, "\u2713  No \u00b7 to the strength"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    const/4 v5, 0x2

    invoke-direct {v3, p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 456
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-nez v0, :cond_241

    if-eqz v2, :cond_230

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v0

    if-lez v0, :cond_241

    :cond_230
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-eqz v0, :cond_240

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v0

    if-lez v0, :cond_241

    :cond_240
    move v1, v4

    .line 457
    :cond_241
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->enable(Landroid/widget/TextView;Z)V

    goto/16 :goto_d6

    .line 436
    :cond_248
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_162

    .line 437
    :cond_24c
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_173

    .line 450
    :cond_250
    const-string v0, "\u0414\u0430, \u0438\u043c\u0430"

    const-string v5, "Yes"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e6
.end method

.method buildRun()V
    .registers 15

    .prologue
    const/high16 v13, 0x43960000    # 300.0f

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x42600000    # 56.0f

    const/4 v9, 0x0

    .line 553
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v6

    .line 554
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 555
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 556
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceRing;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    .line 557
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

    .line 558
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

    .line 559
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

    .line 558
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->setWords([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 562
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 563
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3, v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    .line 564
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v9, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->strengthRow()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->canPause()Z

    move-result v0

    if-eqz v0, :cond_108

    .line 569
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v2, "\u275a\u275a  Pause"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    .line 570
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    :cond_108
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-direct {v2, v9, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v9, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 575
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1, v6}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->stopLabel(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    .line 576
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Stop;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Stop;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
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

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 579
    return-void
.end method

.method buildStrength()V
    .registers 13

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x41600000    # 14.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 476
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v3

    .line 477
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v4

    .line 478
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    if-nez v0, :cond_29

    .line 479
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->minutes()I

    move-result v6

    invoke-interface {v0, v5, v6, v3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->prepare(IIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    if-nez v0, :cond_138

    move v0, v1

    :goto_27
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    .line 482
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v5, "\u0421\u0438\u043b\u0430"

    const-string v6, "Strength"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->title(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 483
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 484
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 485
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 486
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

    .line 487
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v6, "\u25c9"

    const/high16 v7, 0x41900000    # 18.0f

    iget v8, v4, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    invoke-static {v5, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->strengthGoal(Z)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v3, v4, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 489
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 490
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v2, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    if-eqz v0, :cond_cf

    .line 493
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

    .line 495
    :cond_cf
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->strengthRow()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v4, 0x12

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_107

    .line 497
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u0415\u0434\u043d\u0430 \u0441\u0438\u043b\u0430 \u0437\u0430 \u0434\u0432\u0435\u0442\u0435 \u0431\u0443\u0437\u0438 \u2014 \u0437\u0430\u0442\u043e\u0432\u0430 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u0441\u0442\u043e\u044f\u0442 \u0435\u0434\u043d\u0430\u043a\u0432\u043e \u043e\u0442 \u0434\u0432\u0435\u0442\u0435 \u0441\u0442\u0440\u0430\u043d\u0438."

    const-string v3, "One strength for both cheeks \u2014 so the pads sit the same on both sides."

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v3, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    :cond_107
    const-string v0, "\u2190  \u041d\u0430\u0437\u0430\u0434"

    const-string v1, "\u2190  Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Back;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Back;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 502
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

    .line 504
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->enable(Landroid/widget/TextView;Z)V

    .line 505
    return-void

    :cond_138
    move v0, v2

    .line 480
    goto/16 :goto_27

    .line 502
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
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    .line 263
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hide()V

    .line 265
    :try_start_6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->cancel()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_16

    .line 269
    :goto_b
    # getter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$000()Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    move-result-object v0

    if-ne v0, p0, :cond_15

    .line 270
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$002(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 272
    :cond_15
    return-void

    .line 266
    :catch_16
    move-exception v0

    .line 267
    const-string v1, "FaceStudio.cancel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method closeTapped()V
    .registers 3

    .prologue
    .line 250
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->active()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 251
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hide()V

    .line 259
    :goto_10
    return-void

    .line 254
    :cond_11
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 255
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->finishDone()V

    goto :goto_10

    .line 258
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

    .line 642
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 643
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 644
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

    .line 645
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 646
    iget v2, p2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v5, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
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

    .line 648
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sub-float v2, v6, v2

    invoke-direct {v3, v5, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 651
    return-object v0
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method finishDone()V
    .registers 3

    .prologue
    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    .line 671
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hide()V

    .line 672
    # getter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$000()Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    move-result-object v0

    if-ne v0, p0, :cond_10

    .line 673
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$002(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 675
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_1e

    .line 677
    :try_start_18
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->finishAssisted()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1f

    .line 682
    :goto_1b
    :try_start_1b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_26

    .line 687
    :cond_1e
    :goto_1e
    return-void

    .line 678
    :catch_1f
    move-exception v0

    .line 679
    const-string v1, "FaceStudio.report"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 683
    :catch_26
    move-exception v0

    .line 684
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

    .line 698
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 699
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 702
    :cond_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 703
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
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

    .line 705
    return-object v0
.end method

.method ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 8

    .prologue
    .line 709
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 710
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    return-void
.end method

.method go(I)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 277
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    .line 278
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 279
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 280
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aput-object v3, v2, v1

    .line 281
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aput-object v3, v2, v0

    .line 282
    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    .line 283
    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    .line 284
    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    .line 285
    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    .line 286
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    aput v4, v2, v1

    .line 287
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    aput v4, v2, v0

    .line 288
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v3

    iget v3, v3, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    if-ne v3, v0, :cond_5e

    :goto_34
    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->focusChin(Z)V

    .line 289
    const/4 v0, 0x2

    if-gt p1, v0, :cond_49

    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->progress(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    :cond_49
    packed-switch p1, :pswitch_data_70

    .line 297
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildDone()V

    .line 299
    :goto_4f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->updateCaption()V

    .line 300
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->updateBadge()V

    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 302
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->refresh()V

    .line 303
    return-void

    :cond_5e
    move v0, v1

    .line 288
    goto :goto_34

    .line 293
    :pswitch_60
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildPick()V

    goto :goto_4f

    .line 294
    :pswitch_64
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildPlace()V

    goto :goto_4f

    .line 295
    :pswitch_68
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildStrength()V

    goto :goto_4f

    .line 296
    :pswitch_6c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildRun()V

    goto :goto_4f

    .line 292
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_60
        :pswitch_64
        :pswitch_68
        :pswitch_6c
    .end packed-switch
.end method

.method hide()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    :try_start_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_12

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_12} :catch_13

    .line 246
    :cond_12
    :goto_12
    return-void

    .line 244
    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method minutes()I
    .registers 4

    .prologue
    const/16 v0, 0xa

    .line 543
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v1

    .line 544
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-nez v2, :cond_11

    .line 545
    iget v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->week:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_11

    const/16 v0, 0x14

    .line 547
    :cond_11
    return v0
.end method

.method next(I)V
    .registers 3

    .prologue
    .line 816
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_8

    .line 820
    :goto_7
    return-void

    .line 819
    :cond_8
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_7
.end method

.method pick(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 807
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-eq p1, v0, :cond_9

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eqz v0, :cond_a

    .line 813
    :cond_9
    :goto_9
    return-void

    .line 810
    :cond_a
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    .line 811
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    .line 812
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

    .line 461
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 462
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 463
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, p3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 464
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 465
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

    .line 466
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, p2, v8, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 468
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 469
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    return-object v0
.end method

.method prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    return-object v0
.end method

.method programCard(Lcom/isaigu/gymapp/wearable/face/FaceProgram;)Landroid/view/View;
    .registers 15

    .prologue
    const/4 v12, -0x2

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v11, 0x42400000    # 48.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-ne v0, v3, :cond_1bc

    move v0, v1

    .line 352
    :goto_e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v5

    .line 353
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 354
    const/16 v3, 0x10

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 355
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-virtual {v6, v3, v4, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 356
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    int-to-float v4, v3

    .line 357
    if-eqz v0, :cond_1bf

    .line 358
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

    invoke-static {v3, v4, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 359
    :goto_57
    iget v7, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    .line 357
    invoke-static {v3, v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 361
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pick;

    iget v4, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    invoke-direct {v3, p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pick;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 363
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    if-nez v3, :cond_1cf

    const-string v3, "\u2197"

    move-object v4, v3

    :goto_79
    const/high16 v8, 0x41b00000    # 22.0f

    .line 364
    if-eqz v0, :cond_1dd

    const/4 v3, -0x1

    .line 363
    :goto_7e
    invoke-static {v7, v4, v8, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 365
    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 366
    if-eqz v0, :cond_1e1

    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_8b
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v3, v7, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 369
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {v4, v3, v2, v7, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 370
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 371
    const/16 v3, 0x10

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 372
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1, v5}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->name(Z)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41980000    # 19.0f

    if-eqz v0, :cond_1eb

    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_d3
    invoke-static {v8, v9, v10, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  \u00b7  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->result(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v8, 0x41700000    # 15.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v3, v8, v9, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 374
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscle(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "  \u00b7  "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->latin:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v7, 0x41500000    # 13.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v3, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 377
    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 378
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 380
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v3, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 381
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1, v5}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->rhythm(Z)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_1ef

    iget v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_14d
    invoke-static {v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1, v5}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->course(Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_1f3

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    :goto_15e
    invoke-static {v1, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 383
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 384
    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 385
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v12, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "i"

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 389
    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;

    iget v2, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    return-object v6

    :cond_1bc
    move v0, v2

    .line 351
    goto/16 :goto_e

    .line 359
    :cond_1bf
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-static {v3, v4, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    goto/16 :goto_57

    .line 363
    :cond_1cf
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    if-ne v3, v1, :cond_1d8

    const-string v3, "\u2248"

    move-object v4, v3

    goto/16 :goto_79

    :cond_1d8
    const-string v3, "\u25e1"

    move-object v4, v3

    goto/16 :goto_79

    .line 364
    :cond_1dd
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    goto/16 :goto_7e

    .line 366
    :cond_1e1
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/16 v7, 0x30

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    goto/16 :goto_8b

    .line 372
    :cond_1eb
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_d3

    .line 381
    :cond_1ef
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_14d

    .line 382
    :cond_1f3
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_15e
.end method

.method progress(I)Landroid/view/View;
    .registers 15

    .prologue
    const/high16 v12, 0x41d00000    # 26.0f

    const/high16 v11, 0x41500000    # 13.0f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 308
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 309
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

    .line 310
    :goto_36
    const/4 v0, 0x3

    if-ge v6, v0, :cond_f0

    .line 311
    if-ne v6, p1, :cond_c5

    move v5, v1

    .line 312
    :goto_3c
    if-ge v6, p1, :cond_c8

    move v0, v1

    .line 313
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

    .line 314
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 315
    if-eqz v5, :cond_de

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 316
    :goto_57
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    int-to-float v4, v4

    .line 315
    invoke-static {v0, v4, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    aget-object v4, v8, v6

    const/high16 v9, 0x41600000    # 14.0f

    if-eqz v5, :cond_ed

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_7d
    invoke-static {v3, v4, v9, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 319
    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 320
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 321
    const/4 v0, 0x2

    if-ge v6, v0, :cond_c0

    .line 322
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 323
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v4, 0x44

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 324
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 325
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 326
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    :cond_c0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_36

    :cond_c5
    move v5, v2

    .line 311
    goto/16 :goto_3c

    :cond_c8
    move v0, v2

    .line 312
    goto/16 :goto_3f

    .line 313
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

    .line 315
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

    .line 318
    :cond_ed
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_7d

    .line 329
    :cond_f0
    return-object v7
.end method

.method record()V
    .registers 7

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->recorded:Z

    if-eqz v0, :cond_5

    .line 667
    :cond_4
    :goto_4
    return-void

    .line 658
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->doneShare()D

    move-result-wide v0

    .line 659
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->courseKey()Ljava/lang/String;

    move-result-object v2

    .line 660
    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpg-double v0, v0, v4

    if-ltz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 663
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

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
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

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->recorded:Z

    goto :goto_4
.end method

.method refresh()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 725
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_b

    .line 780
    :cond_a
    :goto_a
    return-void

    .line 728
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v2

    .line 729
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 730
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    if-eqz v0, :cond_6e

    .line 731
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v3

    .line 732
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->line(Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;Z)Ljava/lang/String;

    move-result-object v0

    .line 733
    iget-wide v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_95

    .line 734
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

    .line 735
    invoke-static {v6, v7, v4, v5, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->when(JJZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 740
    :goto_59
    iget-boolean v3, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->finished:Z

    if-eqz v3, :cond_69

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-nez v3, :cond_69

    .line 741
    const-string v0, "\u041a\u0443\u0440\u0441\u044a\u0442 \u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0435\u043d \u2014 \u0437\u0430 \u043f\u043e\u0434\u0434\u0440\u044a\u0436\u043a\u0430 \u0438\u0437\u0431\u0435\u0440\u0438 \u201e\u0422\u043e\u043d\u0443\u0441\u201c"

    const-string v3, "The course is complete \u2014 for upkeep pick Tone"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 743
    :cond_69
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6e
    move v0, v1

    .line 745
    :goto_6f
    if-ge v0, v8, :cond_9d

    .line 746
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    if-eqz v3, :cond_92

    .line 747
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v3, v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->strength(I)I

    move-result v3

    .line 748
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    aget v6, v6, v0

    if-eq v3, v6, :cond_92

    .line 749
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    aput v3, v6, v0

    .line 750
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aget-object v6, v6, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 738
    :cond_95
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_59

    .line 754
    :cond_9d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v0, v8, :cond_cc

    .line 755
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    if-eqz v0, :cond_13f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->canStart()Z

    move-result v0

    if-eqz v0, :cond_13f

    const/4 v0, 0x1

    :goto_b0
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->enable(Landroid/widget/TextView;Z)V

    .line 756
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    if-eqz v0, :cond_14c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_142

    .line 757
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0434\u0430\u0432\u0430 \u0440\u0438\u0442\u044a\u043c\u0430 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u2014 \u043a\u0430\u0447\u0432\u0430\u0439 \u043f\u043e \u0435\u0434\u043d\u043e"

    const-string v3, "The suit runs the program\'s rhythm \u2014 raise one step at a time"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    :goto_c9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    :cond_cc
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 761
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v1

    .line 762
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    if-eqz v0, :cond_ec

    .line 763
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->phases()[J

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v4}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->paused()Z

    move-result v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->set([JLcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)V

    .line 765
    :cond_ec
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    if-eqz v0, :cond_f9

    .line 766
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->runLine(Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    :cond_f9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_112

    .line 769
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->paused()Z

    move-result v0

    if-eqz v0, :cond_150

    const-string v0, "\u25b6  \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v4, "\u25b6  Resume"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10f
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    :cond_112
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_121

    .line 772
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v3, v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->stopLabel(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    :cond_121
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    iget-boolean v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    if-eqz v0, :cond_159

    const-string v0, "\u041b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0440\u0430\u0431\u043e\u0442\u0438 \u0441\u0430\u043c"

    const-string v1, "Face relaxed \u2014 the muscle works by itself"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12f
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->finished()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 777
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->toDone()V

    goto/16 :goto_a

    :cond_13f
    move v0, v1

    .line 755
    goto/16 :goto_b0

    .line 758
    :cond_142
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0442\u0435\u0447\u0435 \u2014 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e \u0435 \u0432\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435\u0442\u043e"

    const-string v3, "The program runs \u2014 it starts with the wake-up"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c9

    :cond_14c
    const-string v0, ""

    goto/16 :goto_c9

    .line 769
    :cond_150
    const-string v0, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v4, "\u275a\u275a  Pause"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10f

    .line 775
    :cond_159
    const-string v0, "\u041e\u0442\u0434\u0438\u0445 \u2014 \u043a\u0440\u044a\u0432\u0442\u0430 \u0441\u0435 \u0432\u0440\u044a\u0449\u0430 \u0432 \u043c\u0443\u0441\u043a\u0443\u043b\u0430"

    const-string v1, "Rest \u2014 the blood returns to the muscle"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12f
.end method

.method reshow(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 236
    :goto_e
    return-void

    .line 229
    :cond_f
    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    if-eq p1, v0, :cond_17

    .line 230
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 232
    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->show()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_e

    .line 233
    :catch_1b
    move-exception v0

    .line 234
    const-string v1, "FaceStudio.reshow"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method runLine(Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)Ljava/lang/String;
    .registers 6

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->name(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscle(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz  \u00b7  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->onS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->offS:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method show()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x2

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 170
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

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Close;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Close;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Info;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v11}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 180
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 182
    const/high16 v2, 0x43be0000    # 380.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 183
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 184
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceView;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    .line 185
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_182

    const v0, -0xa11501

    :goto_9a
    const v5, -0x906f

    const v6, -0xa5a6

    invoke-virtual {v4, v0, v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceView;->setColors(III)V

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceView;->setSource(Lcom/isaigu/gymapp/wearable/face/FaceView$Source;)V

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 189
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {v0, v4, v8, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 190
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v4, v5, v6, v9, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    .line 191
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v5, ""

    const/high16 v6, 0x41500000    # 13.0f

    const v7, -0x33190c01

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    .line 192
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 193
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x50

    invoke-direct {v4, v9, v10, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 197
    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    .line 201
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3f8f5c29    # 1.12f

    invoke-direct {v0, v8, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 202
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 203
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 209
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 210
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 211
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 213
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    return-void

    .line 185
    :cond_182
    const v0, -0xc82f15

    goto/16 :goto_9a
.end method

.method start()V
    .registers 3

    .prologue
    .line 839
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->canStart()Z

    move-result v0

    if-nez v0, :cond_9

    .line 844
    :goto_8
    return-void

    .line 842
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->start(Landroid/content/Context;)V

    .line 843
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_8
.end method

.method stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;
    .registers 5

    .prologue
    .line 690
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->courseKey()Ljava/lang/String;

    move-result-object v0

    .line 691
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

    .line 692
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->stats(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceProgram;J)Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v0

    return-object v0

    .line 691
    :cond_40
    const-string v0, ""

    goto :goto_2f
.end method

.method strengthRow()Landroid/view/View;
    .registers 13

    .prologue
    .line 509
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 510
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 511
    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_113

    const/4 v3, 0x2

    if-ge v0, v3, :cond_113

    .line 512
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 513
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 514
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

    .line 515
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
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

    .line 517
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 518
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 519
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 520
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 521
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v6, "\u2212"

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v9, 0x3c

    invoke-static {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v5

    .line 522
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v7, "+"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v10, 0x3c

    invoke-static {v6, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v6

    .line 524
    new-instance v7, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;

    invoke-direct {v7, p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    const/4 v8, -0x1

    invoke-static {v5, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 525
    new-instance v7, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;

    invoke-direct {v7, p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v8, "0"

    const/high16 v9, 0x42300000    # 44.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 527
    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 528
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aput-object v7, v8, v0

    .line 529
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42700000    # 60.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    const/high16 v10, 0x42700000    # 60.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42d00000    # 104.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42700000    # 60.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    const/high16 v8, 0x42700000    # 60.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 534
    if-lez v0, :cond_10c

    .line 535
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 537
    :cond_10c
    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    .line 539
    :cond_113
    return-object v1
.end method

.method subtitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->clientName()Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_36

    .line 219
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c XEMS \u00b7 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u043d\u0430 \u0438\u0437\u0445\u043e\u0434\u0438\u0442\u0435 \u0437\u0430 \u0440\u044a\u0446\u0435"

    const-string v2, "XEMS suit \u00b7 pads on the arm outputs"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
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

    .line 220
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
    .line 848
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->refresh()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_1f

    .line 852
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

    .line 853
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 855
    :cond_1e
    return-void

    .line 849
    :catch_1f
    move-exception v0

    .line 850
    const-string v1, "FaceStudio.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method title(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 333
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v1, 0x41b00000    # 22.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 334
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 335
    return-object v0
.end method

.method toDone()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 584
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-eqz v0, :cond_a

    .line 592
    :cond_9
    :goto_9
    return-void

    .line 587
    :cond_a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->record()V

    .line 588
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_20

    .line 589
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->reshow(Landroid/app/Activity;)V

    .line 591
    :cond_20
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_9
.end method

.method updateBadge()V
    .registers 4

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v0

    .line 801
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

    .line 802
    return-void
.end method

.method updateCaption()V
    .registers 5

    .prologue
    .line 788
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v0

    .line 789
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v1

    .line 790
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 791
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    const-string v1, "1 \u0438 2 \u2014 \u0434\u0432\u043e\u0439\u043a\u0430\u0442\u0430 \u0435 \u043e\u0442 \u0435\u0434\u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0430"

    const-string v2, "1 and 2 \u2014 the pair stays on one side"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    const-string v1, "\u2298 \u043d\u0435: \u043e\u043a\u043e\u043b\u043e \u043e\u043a\u043e\u0442\u043e, \u043f\u0440\u0435\u0434 \u0443\u0445\u043e\u0442\u043e, \u043e\u0442\u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0448\u0438\u044f\u0442\u0430"

    const-string v2, "\u2298 never: around the eye, in front of the ear, the side of the neck"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    :goto_27
    return-void

    .line 794
    :cond_28
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscle(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->latin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method
