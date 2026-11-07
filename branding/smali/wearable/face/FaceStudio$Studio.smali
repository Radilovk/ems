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

.field final lastShown:[I

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
    const/16 v3, 0xc

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

    :goto_3b
    if-ge v2, v5, :cond_49

    aget v0, v4, v2

    .line 153
    if-ne v0, p3, :cond_47

    const/4 v0, 0x1

    :goto_42
    or-int/2addr v3, v0

    .line 152
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3b

    :cond_47
    move v0, v1

    .line 153
    goto :goto_42

    .line 155
    :cond_49
    if-nez v3, :cond_53

    .line 156
    invoke-interface {p2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->programs()[I

    move-result-object v0

    aget v0, v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    .line 158
    :cond_53
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-interface {p2, v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->select(I)V

    .line 159
    return-void
.end method

.method static enable(Landroid/widget/TextView;Z)V
    .registers 3

    .prologue
    .line 883
    if-nez p0, :cond_3

    .line 888
    :goto_2
    return-void

    .line 886
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 887
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

    .line 995
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 996
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;

    if-eqz v0, :cond_1e

    .line 997
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_18

    .line 998
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 1003
    :cond_18
    :goto_18
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    .line 1004
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    .line 1008
    :cond_1d
    :goto_1d
    return-void

    .line 1001
    :cond_1e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->cancel()V

    goto :goto_18

    .line 1005
    :cond_24
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v0, v3, :cond_1d

    .line 1006
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_1d
.end method

.method bigStepper(ILjava/lang/String;)Landroid/view/View;
    .registers 14

    .prologue
    const/16 v7, 0x38

    const/high16 v3, 0x41000000    # 8.0f

    const/16 v10, 0x11

    const/4 v9, 0x1

    const/high16 v8, 0x42600000    # 56.0f

    .line 649
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 650
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 651
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 652
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v2, 0x41580000    # 13.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, p2, v2, v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 654
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 655
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 656
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 657
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 658
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 659
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 660
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v3, "\u2212"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 661
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v4, "+"

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 662
    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;

    invoke-direct {v4, p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    const/4 v5, -0x1

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 663
    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;

    invoke-direct {v4, p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v5, "0"

    const/high16 v6, 0x42200000    # 40.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6, v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 665
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 666
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->slot(I)I

    move-result v6

    aput-object v4, v5, v6

    .line 667
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42b80000    # 92.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    return-object v0
.end method

.method buildDone()V
    .registers 16

    .prologue
    const/high16 v14, 0x41200000    # 10.0f

    const/high16 v13, 0x41900000    # 18.0f

    const/4 v12, 0x1

    const/16 v11, 0x11

    const/4 v10, 0x0

    .line 763
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v1

    .line 764
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    .line 765
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v3

    .line 766
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 767
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 768
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    invoke-virtual {v4, v10, v0, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 769
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v5, "\u2713"

    const/high16 v6, 0x42300000    # 44.0f

    const/4 v7, -0x1

    invoke-static {v0, v5, v6, v7, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 770
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 771
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6, v10, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 772
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42b00000    # 88.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    const/high16 v7, 0x42b00000    # 88.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    iget-boolean v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->recorded:Z

    .line 774
    if-eqz v5, :cond_1a9

    .line 775
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

    .line 778
    :goto_99
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v7, 0x41c00000    # 24.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v6, v0, v7, v8, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 779
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 780
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {v0, v10, v6, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 781
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 782
    iget v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    if-lez v0, :cond_cc

    if-eqz v5, :cond_cc

    .line 783
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

    .line 785
    :cond_cc
    iget-wide v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_10e

    .line 786
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

    .line 788
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 789
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 790
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 792
    :cond_10e
    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->finished:Z

    if-eqz v0, :cond_135

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-nez v0, :cond_135

    .line 793
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u041a\u0443\u0440\u0441\u044a\u0442 \u0437\u0430 \u043b\u0438\u0444\u0442\u0438\u043d\u0433 \u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0435\u043d \u2014 \u043e\u0442\u0442\u0443\u043a \u201e\u0421\u0442\u0435\u0433\u043d\u0430\u0442 \u043e\u0432\u0430\u043b\u201c 2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u043f\u0430\u0437\u0438 \u0435\u0444\u0435\u043a\u0442\u0430."

    const-string v2, "The lift course is complete \u2014 from here Firm contour 2\u20133 times a week keeps the effect."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v1, v2, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 795
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 796
    invoke-virtual {p0, v14}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 797
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 799
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

    .line 801
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 802
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 803
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 804
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 806
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v1, "Done"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Finish;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Finish;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {p0, v0, v10, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 807
    return-void

    .line 776
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

    .line 777
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

    .line 356
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v1, "\u041a\u0430\u043a\u044a\u0432 \u0435\u0444\u0435\u043a\u0442 \u0442\u044a\u0440\u0441\u0438\u043c \u0434\u043d\u0435\u0441?"

    const-string v2, "What effect today?"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->title(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->programs()[I

    move-result-object v4

    .line 358
    const/4 v0, 0x0

    move v2, v3

    .line 359
    :goto_1f
    array-length v1, v4

    if-ge v2, v1, :cond_5f

    .line 360
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_3b

    .line 361
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 362
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    if-nez v2, :cond_5c

    const/4 v0, 0x6

    :goto_33
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 364
    :cond_3b
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v3, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 365
    rem-int/lit8 v5, v2, 0x2

    if-ne v5, v7, :cond_4b

    .line 366
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 368
    :cond_4b
    aget v5, v4, v2

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->programCard(Lcom/isaigu/gymapp/wearable/face/FaceProgram;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1f

    .line 362
    :cond_5c
    const/16 v0, 0xa

    goto :goto_33

    .line 370
    :cond_5f
    array-length v1, v4

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v7, :cond_7b

    if-eqz v0, :cond_7b

    .line 371
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 372
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 373
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
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

    .line 376
    return-void
.end method

.method buildPlace()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v1, 0x1

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v2, 0x0

    .line 471
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v5

    .line 472
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v3

    .line 473
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v4, "\u041f\u043e\u0441\u0442\u0430\u0432\u044f\u043d\u0435 \u043d\u0430 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435"

    const-string v6, "Placing the pads"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->title(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_4f

    move v0, v1

    :goto_29
    invoke-virtual {v3, v5, v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->place(ZZ)[Ljava/lang/String;

    move-result-object v6

    move v0, v2

    .line 475
    :goto_2e
    array-length v3, v6

    if-ge v0, v3, :cond_59

    .line 476
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    if-nez v0, :cond_51

    const-string v3, "\u2713"

    :goto_37
    aget-object v8, v6, v0

    if-nez v0, :cond_56

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_3d
    invoke-virtual {p0, v3, v8, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->placeRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v8, 0xa

    .line 477
    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 476
    invoke-virtual {v7, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_4f
    move v0, v2

    .line 474
    goto :goto_29

    .line 476
    :cond_51
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_37

    :cond_56
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_3d

    .line 479
    :cond_59
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->socketTable(Z)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0xe

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-interface {v0, v3, v5}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->notReady(IZ)Ljava/lang/String;

    move-result-object v3

    .line 481
    if-eqz v3, :cond_89

    .line 482
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v3, v9, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 483
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0xc

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    :cond_89
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_d2

    .line 487
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

    const/16 v4, 0xa

    .line 488
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 487
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    const-string v0, "\u2190  \u0415\u0444\u0435\u043a\u0442"

    const-string v1, "\u2190  Effect"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 490
    const-string v0, "\u041a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430  \u2192"

    const-string v1, "To the strength  \u2192"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v1, p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 518
    :goto_d1
    return-void

    .line 494
    :cond_d2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 495
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 496
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_1d4

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_f1
    const/16 v5, 0x1c

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    int-to-float v6, v0

    .line 497
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_1d8

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_102
    const/16 v7, 0x88

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    .line 496
    invoke-static {v5, v6, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    const-string v0, "\u0411\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u043f\u0440\u0435\u0437 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438, \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440, \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442, \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f \u0438\u043b\u0438 \u0440\u0430\u0437\u0434\u0440\u0430\u0437\u043d\u0435\u043d\u0430 \u043a\u043e\u0436\u0430?"

    const-string v5, "Botox or filler within 2 weeks, a pacemaker, pregnancy, epilepsy or irritated skin?"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v0, v6, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_14a

    .line 502
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v5, "\u0414\u043d\u0435\u0441 \u0431\u0435\u0437 \u043b\u0438\u0446\u0435. \u0421\u043b\u0435\u0434 \u0431\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u2014 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438: \u0442\u043e\u043a\u044a\u0442 \u0437\u0430\u0441\u0438\u043b\u0432\u0430 \u0438 \u0440\u0430\u0437\u043d\u0430\u0441\u044f \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435\u0442\u043e \u0438\u043c."

    const-string v6, "No face today. After botox or filler \u2014 2 weeks: the current strengthens and spreads them."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {v0, v5, v9, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 505
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {v0, v2, v5, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 506
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 508
    :cond_14a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0x12

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    const-string v0, "\u2190  \u041d\u0430\u0437\u0430\u0434"

    const-string v4, "\u2190  Back"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v4, p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_1dc

    const-string v0, "\u041f\u0440\u043e\u043c\u0435\u043d\u0438 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0430"

    const-string v5, "Change the answer"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_175
    invoke-static {v4, v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 511
    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x42600000    # 56.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 513
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 514
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v5, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    const-string v0, "\u2713  \u041d\u0435 \u00b7 \u043a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v4, "\u2713  No \u00b7 to the strength"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v4, p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v2, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 516
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-nez v0, :cond_1e5

    if-eqz v3, :cond_1bd

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v0

    if-lez v0, :cond_1e5

    :cond_1bd
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-eqz v0, :cond_1cd

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v0

    if-lez v0, :cond_1e5

    .line 517
    :cond_1cd
    :goto_1cd
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->enable(Landroid/widget/TextView;Z)V

    goto/16 :goto_d1

    .line 496
    :cond_1d4
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_f1

    .line 497
    :cond_1d8
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_102

    .line 510
    :cond_1dc
    const-string v0, "\u0414\u0430, \u0438\u043c\u0430"

    const-string v5, "Yes"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_175

    :cond_1e5
    move v1, v2

    .line 516
    goto :goto_1cd
.end method

.method buildRun()V
    .registers 15

    .prologue
    const/high16 v13, 0x439b0000    # 310.0f

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x42600000    # 56.0f

    const/4 v9, 0x0

    .line 718
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v6

    .line 719
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 720
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 721
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceRing;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    .line 722
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

    .line 723
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

    .line 724
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

    .line 723
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->setWords([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    if-eqz v0, :cond_95

    .line 726
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

    .line 728
    :cond_95
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 730
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 731
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3, v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    .line 732
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 733
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v9, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->strengthRow()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->canPause()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 737
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v2, "\u275a\u275a  Pause"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    .line 738
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    :cond_126
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-direct {v2, v9, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v9, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 743
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1, v6}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->stopLabel(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    .line 744
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Stop;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Stop;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
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

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 747
    return-void

    .line 726
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

    .line 574
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v3

    .line 575
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v4

    .line 576
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    if-nez v0, :cond_29

    .line 577
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->minutes()I

    move-result v6

    invoke-interface {v0, v5, v6, v3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->prepare(IIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    if-nez v0, :cond_111

    move v0, v1

    :goto_27
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    .line 580
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v5, "\u0421\u0438\u043b\u0430"

    const-string v6, "Strength"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->title(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 581
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 582
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 583
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 584
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

    .line 585
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v6, "\u25c9"

    const/high16 v7, 0x41900000    # 18.0f

    iget v8, v4, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    invoke-static {v5, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 586
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->strengthGoal(Z)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v3, v4, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 587
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 588
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v2, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    if-eqz v0, :cond_cf

    .line 591
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

    .line 593
    :cond_cf
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->strengthRow()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v4, 0x12

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    const-string v0, "\u2190  \u041d\u0430\u0437\u0430\u0434"

    const-string v1, "\u2190  Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Back;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Back;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_114

    const-string v0, "\u25b6  \u0421\u0442\u0430\u0440\u0442"

    const-string v1, "\u25b6  Start"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_100
    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Start;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Start;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 597
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->enable(Landroid/widget/TextView;Z)V

    .line 598
    return-void

    :cond_111
    move v0, v2

    .line 578
    goto/16 :goto_27

    .line 595
    :cond_114
    const-string v0, "\u2713  \u0414\u043e\u0431\u0440\u0435 \u0435 \u00b7 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v1, "\u2713  Good \u00b7 go on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_100
.end method

.method close()V
    .registers 3

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    .line 276
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hide()V

    .line 278
    :try_start_6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->cancel()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_16

    .line 282
    :goto_b
    # getter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$000()Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    move-result-object v0

    if-ne v0, p0, :cond_15

    .line 283
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$002(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 285
    :cond_15
    return-void

    .line 279
    :catch_16
    move-exception v0

    .line 280
    const-string v1, "FaceStudio.cancel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method closeTapped()V
    .registers 3

    .prologue
    .line 263
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->active()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 264
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hide()V

    .line 272
    :goto_10
    return-void

    .line 267
    :cond_11
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 268
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->finishDone()V

    goto :goto_10

    .line 271
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

    .line 810
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 811
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 812
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

    .line 813
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 814
    iget v2, p2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v5, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 815
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

    .line 816
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sub-float v2, v6, v2

    invoke-direct {v3, v5, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 819
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
    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method finishDone()V
    .registers 3

    .prologue
    .line 838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    .line 839
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hide()V

    .line 840
    # getter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$000()Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    move-result-object v0

    if-ne v0, p0, :cond_10

    .line 841
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$002(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 843
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_1e

    .line 845
    :try_start_18
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->finishAssisted()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1f

    .line 850
    :goto_1b
    :try_start_1b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_26

    .line 855
    :cond_1e
    :goto_1e
    return-void

    .line 846
    :catch_1f
    move-exception v0

    .line 847
    const-string v1, "FaceStudio.report"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 851
    :catch_26
    move-exception v0

    .line 852
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

    .line 866
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 867
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 870
    :cond_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 871
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 872
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

    .line 873
    return-object v0
.end method

.method ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 8

    .prologue
    .line 877
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 878
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    return-void
.end method

.method go(I)V
    .registers 7

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 290
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    .line 291
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 292
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 293
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    .line 295
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    .line 296
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    .line 297
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    .line 298
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 299
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_7b

    const/4 v0, 0x1

    :goto_30
    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->focusChin(Z)V

    .line 300
    const/4 v0, 0x2

    if-gt p1, v0, :cond_45

    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->progress(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    :cond_45
    packed-switch p1, :pswitch_data_8e

    .line 308
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildDone()V

    .line 310
    :goto_4b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->floor:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 311
    if-eq p1, v4, :cond_6c

    if-nez p1, :cond_5d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->programs()[I

    move-result-object v0

    array-length v0, v0

    if-gt v0, v4, :cond_6c

    .line 312
    :cond_5d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->floor:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->courseCard()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    :cond_6c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->updateCaption()V

    .line 315
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->updateBadge()V

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 317
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->refresh()V

    .line 318
    return-void

    :cond_7b
    move v0, v1

    .line 299
    goto :goto_30

    .line 304
    :pswitch_7d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildPick()V

    goto :goto_4b

    .line 305
    :pswitch_81
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildPlace()V

    goto :goto_4b

    .line 306
    :pswitch_85
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildStrength()V

    goto :goto_4b

    .line 307
    :pswitch_89
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildRun()V

    goto :goto_4b

    .line 303
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_81
        :pswitch_85
        :pswitch_89
    .end packed-switch
.end method

.method hide()V
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    :try_start_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_12

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_12} :catch_13

    .line 259
    :cond_12
    :goto_12
    return-void

    .line 257
    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method minutes()I
    .registers 5

    .prologue
    const/16 v0, 0x14

    const/16 v1, 0xa

    .line 707
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    packed-switch v2, :pswitch_data_1a

    :pswitch_9
    move v0, v1

    .line 711
    :cond_a
    :goto_a
    :pswitch_a
    return v0

    .line 708
    :pswitch_b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->week:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_a

    move v0, v1

    goto :goto_a

    .line 710
    :pswitch_16
    const/16 v0, 0xf

    goto :goto_a

    .line 707
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
    .line 988
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_8

    .line 992
    :goto_7
    return-void

    .line 991
    :cond_8
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_7
.end method

.method pick(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 978
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-eq p1, v0, :cond_9

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eqz v0, :cond_a

    .line 985
    :cond_9
    :goto_9
    return-void

    .line 981
    :cond_a
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    .line 982
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->select(I)V

    .line 983
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    .line 984
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

    .line 559
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 560
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 561
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, p3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 562
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 563
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

    .line 564
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, p2, v8, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 566
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 567
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    return-object v0
.end method

.method prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    return-object v0
.end method

.method programCard(Lcom/isaigu/gymapp/wearable/face/FaceProgram;)Landroid/view/View;
    .registers 15

    .prologue
    const/high16 v12, 0x40c00000    # 6.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 380
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-ne v0, v3, :cond_190

    move v0, v1

    .line 381
    :goto_f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v4

    .line 382
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 383
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 384
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    int-to-float v6, v3

    .line 385
    if-eqz v0, :cond_193

    .line 386
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

    .line 387
    :goto_51
    iget v7, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    .line 385
    invoke-static {v3, v7, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 389
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pick;

    iget v6, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    invoke-direct {v3, p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pick;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 391
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 392
    const/16 v3, 0x10

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 393
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-object v8, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->glyph:Ljava/lang/String;

    const/high16 v9, 0x41980000    # 19.0f

    if-eqz v0, :cond_1a1

    const/4 v3, -0x1

    :goto_7e
    invoke-static {v7, v8, v9, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 394
    const/16 v3, 0x11

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 395
    if-eqz v0, :cond_1a5

    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_8b
    const/high16 v8, 0x41980000    # 19.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v3, v8, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42180000    # 38.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    const/high16 v9, 0x42180000    # 38.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 398
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-virtual {v7, v3, v2, v8, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 399
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->name(Z)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41900000    # 18.0f

    if-eqz v0, :cond_1af

    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_cc
    invoke-static {v8, v9, v10, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 400
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 401
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 402
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->stars()Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41300000    # 11.0f

    if-eqz v0, :cond_1b3

    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_e7
    invoke-static {v8, v9, v10, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 404
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v3, v2, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v7, "i"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v10, 0x22

    invoke-static {v3, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 407
    new-instance v7, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;

    iget v8, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    invoke-direct {v7, p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42080000    # 34.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    const/high16 v9, 0x42080000    # 34.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tag(Z)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41680000    # 14.5f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v6, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 411
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 412
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

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

    if-eqz v0, :cond_1b7

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

    if-eqz v0, :cond_1ba

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
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 425
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    return-object v5

    :cond_190
    move v0, v2

    .line 380
    goto/16 :goto_f

    .line 387
    :cond_193
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    goto/16 :goto_51

    .line 393
    :cond_1a1
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    goto/16 :goto_7e

    .line 395
    :cond_1a5
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/16 v8, 0x30

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    goto/16 :goto_8b

    .line 399
    :cond_1af
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_cc

    .line 403
    :cond_1b3
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_e7

    .line 417
    :cond_1b7
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_15d

    .line 420
    :cond_1ba
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

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 323
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 324
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

    .line 325
    :goto_36
    const/4 v0, 0x3

    if-ge v6, v0, :cond_f0

    .line 326
    if-ne v6, p1, :cond_c5

    move v5, v1

    .line 327
    :goto_3c
    if-ge v6, p1, :cond_c8

    move v0, v1

    .line 328
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

    .line 329
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 330
    if-eqz v5, :cond_de

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 331
    :goto_57
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    int-to-float v4, v4

    .line 330
    invoke-static {v0, v4, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    aget-object v4, v8, v6

    const/high16 v9, 0x41600000    # 14.0f

    if-eqz v5, :cond_ed

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_7d
    invoke-static {v3, v4, v9, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 334
    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 335
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    const/4 v0, 0x2

    if-ge v6, v0, :cond_c0

    .line 337
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 338
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v4, 0x44

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 339
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 340
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 341
    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    :cond_c0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_36

    :cond_c5
    move v5, v2

    .line 326
    goto/16 :goto_3c

    :cond_c8
    move v0, v2

    .line 327
    goto/16 :goto_3f

    .line 328
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

    .line 330
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

    .line 333
    :cond_ed
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_7d

    .line 344
    :cond_f0
    return-object v7
.end method

.method record()V
    .registers 7

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->recorded:Z

    if-eqz v0, :cond_5

    .line 835
    :cond_4
    :goto_4
    return-void

    .line 826
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->doneShare()D

    move-result-wide v0

    .line 827
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->courseKey()Ljava/lang/String;

    move-result-object v2

    .line 828
    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpg-double v0, v0, v4

    if-ltz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 831
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

    .line 832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
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

    .line 834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->recorded:Z

    goto :goto_4
.end method

.method refresh()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 893
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_a

    .line 949
    :cond_9
    :goto_9
    return-void

    .line 896
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v3

    .line 897
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 898
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    if-eqz v0, :cond_6d

    .line 899
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v2

    .line 900
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->line(Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;Z)Ljava/lang/String;

    move-result-object v0

    .line 901
    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_7c

    .line 902
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

    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    .line 903
    invoke-static {v6, v7, v4, v5, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->when(JJZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 908
    :goto_58
    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->finished:Z

    if-eqz v2, :cond_68

    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-nez v2, :cond_68

    .line 909
    const-string v0, "\u041a\u0443\u0440\u0441\u044a\u0442 \u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0435\u043d \u2014 \u0437\u0430 \u043f\u043e\u0434\u0434\u0440\u044a\u0436\u043a\u0430 \u0438\u0437\u0431\u0435\u0440\u0438 \u201e\u0422\u043e\u043d\u0443\u0441\u201c"

    const-string v2, "The course is complete \u2014 for upkeep pick Tone"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 911
    :cond_68
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6d
    move v0, v1

    .line 913
    :goto_6e
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v0, v2, :cond_ca

    .line 914
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    if-nez v2, :cond_84

    .line 913
    :cond_79
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 906
    :cond_7c
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_58

    .line 917
    :cond_84
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->hasMaster()Z

    move-result v2

    if-eqz v2, :cond_c3

    add-int/lit8 v2, v0, -0x1

    .line 918
    :goto_8e
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v6, v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->strength(I)I

    move-result v6

    .line 919
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    aget v7, v7, v0

    if-eq v6, v7, :cond_79

    .line 920
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    aput v6, v7, v0

    .line 921
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v8}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->hasMaster()Z

    move-result v8

    if-eqz v8, :cond_c5

    if-ltz v2, :cond_c5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " %"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_bf
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_79

    :cond_c3
    move v2, v0

    .line 917
    goto :goto_8e

    .line 921
    :cond_c5
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_bf

    .line 924
    :cond_ca
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_fa

    .line 925
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    if-eqz v2, :cond_de

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->canStart()Z

    move-result v2

    if-eqz v2, :cond_de

    const/4 v1, 0x1

    :cond_de
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->enable(Landroid/widget/TextView;Z)V

    .line 926
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    if-eqz v0, :cond_174

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_16b

    .line 927
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0434\u0430\u0432\u0430 \u0440\u0438\u0442\u044a\u043c\u0430 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u2014 \u043a\u0430\u0447\u0432\u0430\u0439 \u043f\u043e \u0435\u0434\u043d\u043e"

    const-string v2, "The suit runs the program\'s rhythm \u2014 raise one step at a time"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 926
    :goto_f7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    :cond_fa
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 931
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v1

    .line 932
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    if-eqz v0, :cond_11a

    .line 933
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->phases()[J

    move-result-object v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v4}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->paused()Z

    move-result v4

    invoke-virtual {v0, v2, v1, v4}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->set([JLcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)V

    .line 935
    :cond_11a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    if-eqz v0, :cond_127

    .line 936
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->runLine(Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    :cond_127
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_140

    .line 939
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->paused()Z

    move-result v0

    if-eqz v0, :cond_177

    const-string v0, "\u25b6  \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v4, "\u25b6  Resume"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13d
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    :cond_140
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_14f

    .line 942
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->stopLabel(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    :cond_14f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    invoke-virtual {v2, v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->runHint(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->finished()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 946
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->toDone()V

    goto/16 :goto_9

    .line 928
    :cond_16b
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0442\u0435\u0447\u0435 \u2014 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e \u0435 \u0432\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435\u0442\u043e"

    const-string v2, "The program runs \u2014 it starts with the wake-up"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f7

    :cond_174
    const-string v0, ""

    goto :goto_f7

    .line 939
    :cond_177
    const-string v0, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v4, "\u275a\u275a  Pause"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13d
.end method

.method reshow(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 249
    :goto_e
    return-void

    .line 242
    :cond_f
    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    if-eq p1, v0, :cond_17

    .line 243
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 245
    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->show()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_e

    .line 246
    :catch_1b
    move-exception v0

    .line 247
    const-string v1, "FaceStudio.reshow"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method runLine(Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)Ljava/lang/String;
    .registers 6

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    .line 953
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

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 173
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

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Close;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Close;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Info;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 183
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 186
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

    .line 187
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 188
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    .line 189
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_1bc

    const v0, -0xa11501

    :goto_9f
    const v4, -0x906f

    const v5, -0xa5a6

    invoke-virtual {v3, v0, v4, v5}, Lcom/isaigu/gymapp/wearable/face/FaceView;->setColors(III)V

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceView;->setSource(Lcom/isaigu/gymapp/wearable/face/FaceView$Source;)V

    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 193
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {v0, v3, v7, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 194
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v4, ""

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v8, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    .line 195
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v4, ""

    const/high16 v5, 0x41500000    # 13.0f

    const v6, -0x33190c01

    invoke-static {v3, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    .line 196
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 197
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x50

    invoke-direct {v3, v8, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 201
    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->faceH:I

    invoke-direct {v0, v7, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 206
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {v2, v7}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 208
    invoke-virtual {v2, v9}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 209
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    .line 210
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 211
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->floor:Landroid/widget/LinearLayout;

    .line 213
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->floor:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->faceH:I

    const v4, 0x3f8f5c29    # 1.12f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 215
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 216
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 224
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 226
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    return-void

    .line 189
    :cond_1bc
    const v0, -0xc82f15

    goto/16 :goto_9f
.end method

.method slot(I)I
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->hasMaster()Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 p1, p1, 0x1

    :cond_a
    return p1
.end method

.method smallStepper(I)Landroid/view/View;
    .registers 14

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v7, 0x40c00000    # 6.0f

    .line 676
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 677
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 678
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 679
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 680
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2, p1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->socket(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-static {v1, v2, v3, v4, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 681
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 682
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v9, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42080000    # 34.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x28

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 685
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x28

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 686
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;

    invoke-direct {v3, p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 687
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;

    invoke-direct {v3, p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v4, "100 %"

    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v5, v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 689
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 690
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->slot(I)I

    move-result v5

    aput-object v3, v4, v5

    .line 691
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 692
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 693
    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v9, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    return-object v0
.end method

.method socketTable(Z)Landroid/view/View;
    .registers 14

    .prologue
    .line 525
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 526
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_11b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v0

    .line 527
    :goto_14
    const/4 v1, 0x0

    .line 528
    const/4 v2, 0x0

    move v4, v2

    :goto_17
    if-ge v4, v0, :cond_15c

    .line 529
    rem-int/lit8 v2, v4, 0x2

    if-nez v2, :cond_30

    .line 530
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 531
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    if-nez v4, :cond_126

    const/4 v1, 0x0

    :goto_28
    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v2

    .line 533
    :cond_30
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v2

    if-ge v4, v2, :cond_12a

    :cond_40
    const/4 v2, 0x1

    move v5, v2

    .line 534
    :goto_42
    if-eqz v5, :cond_12e

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 535
    :goto_46
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 536
    const/16 v3, 0x10

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 537
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->socket(I)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41500000    # 13.0f

    if-eqz v5, :cond_132

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_5f
    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v3, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 538
    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 539
    if-eqz v5, :cond_136

    :goto_6b
    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v2

    if-nez v2, :cond_13e

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2, v4}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->siteOf(I)I

    move-result v2

    :goto_9d
    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->siteName(IZ)Ljava/lang/String;

    move-result-object v3

    .line 542
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_177

    .line 543
    if-eqz v5, :cond_14a

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2, v4}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->battery(I)I

    move-result v2

    .line 544
    :goto_b2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v5, :cond_150

    if-ltz v2, :cond_14d

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

    :goto_d8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 546
    :goto_e0
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v9, 0x41680000    # 14.5f

    if-eqz v5, :cond_159

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_e8
    const/4 v5, 0x0

    invoke-static {v8, v2, v9, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 547
    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/4 v5, 0x0

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v5, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 548
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v5, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 550
    invoke-virtual {v1, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_17

    .line 526
    :cond_11b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->bluetensSites()[I

    move-result-object v0

    array-length v0, v0

    goto/16 :goto_14

    .line 531
    :cond_126
    const/16 v1, 0x8

    goto/16 :goto_28

    .line 533
    :cond_12a
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_42

    .line 534
    :cond_12e
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_46

    .line 537
    :cond_132
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_5f

    .line 539
    :cond_136
    const/16 v8, 0x30

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto/16 :goto_6b

    .line 541
    :cond_13e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->bluetensSites()[I

    move-result-object v2

    aget v2, v2, v4

    goto/16 :goto_9d

    .line 543
    :cond_14a
    const/4 v2, -0x1

    goto/16 :goto_b2

    .line 544
    :cond_14d
    const-string v2, "  \u00b7  \u2713"

    goto :goto_d8

    :cond_150
    const-string v2, "  \u00b7  \u043d\u0435 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d\u043e"

    const-string v8, "  \u00b7  not connected"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d8

    .line 546
    :cond_159
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_e8

    .line 552
    :cond_15c
    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_176

    if-eqz v1, :cond_176

    .line 553
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    :cond_176
    return-object v6

    :cond_177
    move-object v2, v3

    goto/16 :goto_e0
.end method

.method start()V
    .registers 3

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->canStart()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1016
    :goto_8
    return-void

    .line 1014
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->start(Landroid/content/Context;)V

    .line 1015
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_8
.end method

.method stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;
    .registers 5

    .prologue
    .line 858
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->courseKey()Ljava/lang/String;

    move-result-object v0

    .line 859
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

    .line 860
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->stats(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceProgram;J)Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v0

    return-object v0

    .line 859
    :cond_40
    const-string v0, ""

    goto :goto_2f
.end method

.method strengthRow()Landroid/view/View;
    .registers 12

    .prologue
    const/4 v10, -0x2

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v7, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 605
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 606
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 607
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->hasMaster()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 608
    const/4 v0, -0x1

    const-string v3, "\u0421\u0438\u043b\u0430 \u043d\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430\u0442\u0430"

    const-string v4, "Procedure strength"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->bigStepper(ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v4

    .line 610
    if-le v4, v7, :cond_a5

    .line 611
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v3, "\u0414\u044f\u043b \u043d\u0430 \u0432\u0441\u044f\u043a\u043e \u043c\u044f\u0441\u0442\u043e \u2014 \u043d\u0430\u043c\u0430\u043b\u0438 \u0442\u0430\u043c, \u043a\u044a\u0434\u0435\u0442\u043e \u0441\u0435 \u0443\u0441\u0435\u0449\u0430 \u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    const-string v5, "Each site\'s share \u2014 lower where it feels stronger"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v3, v5, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 613
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v5, 0xc

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    const/4 v0, 0x0

    move v3, v2

    .line 615
    :goto_57
    if-ge v3, v4, :cond_86

    .line 616
    rem-int/lit8 v5, v3, 0x3

    if-nez v5, :cond_6d

    .line 617
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 618
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    :cond_6d
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 621
    rem-int/lit8 v6, v3, 0x3

    if-lez v6, :cond_7c

    .line 622
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 624
    :cond_7c
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->smallStepper(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 626
    :cond_86
    rem-int/lit8 v3, v4, 0x3

    :goto_88
    if-lez v3, :cond_a5

    const/4 v4, 0x3

    if-ge v3, v4, :cond_a5

    .line 627
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 628
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 629
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    :cond_a5
    move-object v0, v1

    .line 644
    :goto_a6
    return-object v0

    .line 634
    :cond_a7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 635
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v0, v2

    .line 636
    :goto_b8
    if-ge v0, v4, :cond_fd

    const/4 v5, 0x3

    if-ge v0, v5, :cond_fd

    .line 637
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 638
    if-lez v0, :cond_cc

    .line 639
    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 641
    :cond_cc
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v7, v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->socket(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u00b7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v8

    invoke-interface {v7, v0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channelName(IZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->bigStepper(ILjava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 643
    :cond_fd
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v1

    .line 644
    goto :goto_a6
.end method

.method subtitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->clientName()Ljava/lang/String;

    move-result-object v1

    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_36

    .line 232
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c XEMS \u00b7 \u0431\u0443\u043a\u0441\u0430 \u0437\u0430 \u043b\u0438\u0446\u0435 F1\u2013F10"

    const-string v2, "XEMS suit \u00b7 face connector F1\u2013F10"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
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

    .line 233
    :cond_36
    const-string v0, "Bluetens \u00b7 \u0434\u043e 3 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    const-string v2, "Bluetens \u00b7 up to 3 pads"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method tickNow()V
    .registers 5

    .prologue
    .line 1020
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->refresh()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_1f

    .line 1024
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

    .line 1025
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1027
    :cond_1e
    return-void

    .line 1021
    :catch_1f
    move-exception v0

    .line 1022
    const-string v1, "FaceStudio.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method title(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 348
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v1, 0x41b00000    # 22.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 349
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 350
    return-object v0
.end method

.method toDone()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 752
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-eqz v0, :cond_a

    .line 760
    :cond_9
    :goto_9
    return-void

    .line 755
    :cond_a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->record()V

    .line 756
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_20

    .line 757
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->reshow(Landroid/app/Activity;)V

    .line 759
    :cond_20
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_9
.end method

.method updateBadge()V
    .registers 4

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v0

    .line 972
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

    .line 973
    return-void
.end method

.method updateCaption()V
    .registers 5

    .prologue
    .line 957
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v0

    .line 958
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v1

    .line 959
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    .line 960
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_30

    .line 961
    const-string v0, "\u0412\u0441\u044f\u043a\u043e \u0433\u043d\u0435\u0437\u0434\u043e F \u2014 \u043d\u0430 \u0441\u0432\u043e\u0435\u0442\u043e \u043c\u044f\u0441\u0442\u043e, \u0434\u0432\u043e\u0439\u043a\u0430\u0442\u0430 \u043f\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0430"

    const-string v2, "Each F socket on its site, the pair along the muscle"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 960
    :goto_1f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    const-string v1, "\u2298 \u043d\u0435: \u043e\u043a\u043e\u043b\u043e \u043e\u043a\u043e\u0442\u043e, \u043f\u0440\u0435\u0434 \u0443\u0445\u043e\u0442\u043e, \u043e\u0442\u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0448\u0438\u044f\u0442\u0430"

    const-string v2, "\u2298 never: around the eye, in front of the ear, the side of the neck"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    :goto_2f
    return-void

    .line 962
    :cond_30
    const-string v0, "\u0412\u0441\u044f\u043a\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u2014 \u043d\u0430 \u0441\u0432\u043e\u0435\u0442\u043e \u043c\u044f\u0441\u0442\u043e"

    const-string v2, "Each pad on its site"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 965
    :cond_39
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscle(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->latin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method
