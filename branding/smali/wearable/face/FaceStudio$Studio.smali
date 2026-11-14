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

.field widthValue:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/face/FaceDevice;I)V
    .registers 10

    .prologue
    const/16 v3, 0xc

    const/4 v1, 0x0

    .line 147
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

    .line 145
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    .line 148
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 149
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    .line 150
    iput p3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    .line 151
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "xems_face"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prefs:Landroid/content/SharedPreferences;

    .line 153
    invoke-interface {p2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->programs()[I

    move-result-object v4

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_3b
    if-ge v2, v5, :cond_49

    aget v0, v4, v2

    .line 154
    if-ne v0, p3, :cond_47

    const/4 v0, 0x1

    :goto_42
    or-int/2addr v3, v0

    .line 153
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3b

    :cond_47
    move v0, v1

    .line 154
    goto :goto_42

    .line 156
    :cond_49
    if-nez v3, :cond_53

    .line 157
    invoke-interface {p2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->programs()[I

    move-result-object v0

    aget v0, v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    .line 159
    :cond_53
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-interface {p2, v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->select(I)V

    .line 160
    return-void
.end method

.method static enable(Landroid/widget/TextView;Z)V
    .registers 3

    .prologue
    .line 916
    if-nez p0, :cond_3

    .line 921
    :goto_2
    return-void

    .line 919
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 920
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

    .line 1028
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 1029
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;

    if-eqz v0, :cond_1e

    .line 1030
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_18

    .line 1031
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 1036
    :cond_18
    :goto_18
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    .line 1037
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    .line 1041
    :cond_1d
    :goto_1d
    return-void

    .line 1034
    :cond_1e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->cancel()V

    goto :goto_18

    .line 1038
    :cond_24
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v0, v3, :cond_1d

    .line 1039
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

    .line 643
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 644
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 645
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

    .line 646
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v2, 0x41580000    # 13.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, p2, v2, v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 648
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 649
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 650
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 651
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 652
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 653
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 654
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v3, "\u2212"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 655
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v4, "+"

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 656
    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;

    invoke-direct {v4, p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    const/4 v5, -0x1

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 657
    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;

    invoke-direct {v4, p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v5, "0"

    const/high16 v6, 0x42200000    # 40.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6, v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 659
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 660
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->slot(I)I

    move-result v6

    aput-object v4, v5, v6

    .line 661
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42b80000    # 92.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    return-object v0
.end method

.method buildDone()V
    .registers 16

    .prologue
    const/high16 v14, 0x41200000    # 10.0f

    const/high16 v13, 0x41900000    # 18.0f

    const/16 v12, 0x11

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 794
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v1

    .line 795
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    .line 796
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v3

    .line 797
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 798
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 799
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    invoke-virtual {v4, v10, v0, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 800
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v5, "\u2713"

    const/high16 v6, 0x42300000    # 44.0f

    const/4 v7, -0x1

    invoke-static {v0, v5, v6, v7, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 801
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 802
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6, v10, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 803
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42b00000    # 88.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    const/high16 v7, 0x42b00000    # 88.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    iget-boolean v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->recorded:Z

    .line 805
    if-eqz v5, :cond_1ad

    .line 806
    iget v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    if-lez v0, :cond_184

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

    .line 809
    :goto_99
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v7, 0x41c00000    # 24.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v6, v0, v7, v8, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 810
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 811
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {v0, v10, v6, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 812
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 813
    iget v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    if-lez v0, :cond_cc

    if-eqz v5, :cond_cc

    .line 814
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

    .line 816
    :cond_cc
    iget-wide v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_10e

    .line 817
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

    invoke-static {v0, v1, v2, v5, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 819
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 820
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 821
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 823
    :cond_10e
    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->finished:Z

    if-eqz v0, :cond_135

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-nez v0, :cond_135

    .line 824
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u041a\u0443\u0440\u0441\u044a\u0442 \u0437\u0430 \u043b\u0438\u0444\u0442\u0438\u043d\u0433 \u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0435\u043d \u2014 \u043e\u0442\u0442\u0443\u043a \u201e\u0422\u043e\u043d\u0443\u0441 \u0438 \u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e\u0441\u0442\u201c 2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u043f\u0430\u0437\u0438 \u0435\u0444\u0435\u043a\u0442\u0430."

    const-string v2, "The lift course is complete \u2014 from here Face tone 2\u20133 times a week keeps the effect."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v1, v2, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 826
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 827
    invoke-virtual {p0, v14}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 828
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 830
    :cond_135
    iget v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->done:I

    if-gt v0, v11, :cond_158

    .line 831
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u041b\u0435\u043a\u0430 \u0447\u0435\u0440\u0432\u0435\u043d\u0438\u043d\u0430 \u043f\u043e\u0434 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u0435 \u043d\u043e\u0440\u043c\u0430\u043b\u043d\u0430 \u0438 \u043c\u0438\u043d\u0430\u0432\u0430 \u0434\u043e 20 \u043c\u0438\u043d\u0443\u0442\u0438."

    const-string v2, "A light redness under the pads is normal and fades within 20 minutes."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 833
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 834
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 835
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 837
    :cond_158
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 839
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v1, "Done"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Finish;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Finish;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {p0, v0, v10, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 840
    return-void

    .line 807
    :cond_184
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

    .line 808
    :cond_1ad
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
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v1, 0x1

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v2, 0x0

    .line 465
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v5

    .line 466
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v3

    .line 467
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v4, "\u041f\u043e\u0441\u0442\u0430\u0432\u044f\u043d\u0435 \u043d\u0430 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435"

    const-string v6, "Placing the pads"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->title(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_4f

    move v0, v1

    :goto_29
    invoke-virtual {v3, v5, v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->place(ZZ)[Ljava/lang/String;

    move-result-object v6

    move v0, v2

    .line 469
    :goto_2e
    array-length v3, v6

    if-ge v0, v3, :cond_59

    .line 470
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

    .line 471
    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 470
    invoke-virtual {v7, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_4f
    move v0, v2

    .line 468
    goto :goto_29

    .line 470
    :cond_51
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_37

    :cond_56
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_3d

    .line 473
    :cond_59
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->socketTable(Z)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0xe

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-interface {v0, v3, v5}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->notReady(IZ)Ljava/lang/String;

    move-result-object v3

    .line 475
    if-eqz v3, :cond_89

    .line 476
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v3, v9, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 477
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0xc

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    :cond_89
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_b5

    .line 481
    const-string v0, "\u2190  \u0415\u0444\u0435\u043a\u0442"

    const-string v1, "\u2190  Effect"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 482
    const-string v0, "\u041a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430  \u2192"

    const-string v1, "To the strength  \u2192"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v1, p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 510
    :goto_b4
    return-void

    .line 486
    :cond_b5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 487
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 488
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_1b7

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_d4
    const/16 v5, 0x1c

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v0

    int-to-float v6, v0

    .line 489
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_1bb

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_e5
    const/16 v7, 0x88

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    .line 488
    invoke-static {v5, v6, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 490
    const-string v0, "\u0411\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u043f\u0440\u0435\u0437 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438, \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440, \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442, \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f \u0438\u043b\u0438 \u0440\u0430\u0437\u0434\u0440\u0430\u0437\u043d\u0435\u043d\u0430 \u043a\u043e\u0436\u0430?"

    const-string v5, "Botox or filler within 2 weeks, a pacemaker, pregnancy, epilepsy or irritated skin?"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v0, v6, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_12d

    .line 494
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v5, "\u0414\u043d\u0435\u0441 \u0431\u0435\u0437 \u043b\u0438\u0446\u0435. \u0421\u043b\u0435\u0434 \u0431\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u2014 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438: \u0442\u043e\u043a\u044a\u0442 \u0437\u0430\u0441\u0438\u043b\u0432\u0430 \u0438 \u0440\u0430\u0437\u043d\u0430\u0441\u044f \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435\u0442\u043e \u0438\u043c."

    const-string v6, "No face today. After botox or filler \u2014 2 weeks: the current strengthens and spreads them."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {v0, v5, v9, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 497
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {v0, v2, v5, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 498
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    :cond_12d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0x12

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    const-string v0, "\u2190  \u041d\u0430\u0437\u0430\u0434"

    const-string v4, "\u2190  Back"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v4, p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_1bf

    const-string v0, "\u041f\u0440\u043e\u043c\u0435\u043d\u0438 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0430"

    const-string v5, "Change the answer"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_158
    invoke-static {v4, v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 503
    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x42600000    # 56.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 505
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 506
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v5, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    const-string v0, "\u2713  \u041d\u0435 \u00b7 \u043a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v4, "\u2713  No \u00b7 to the strength"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;

    invoke-direct {v4, p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {p0, v0, v2, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 508
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-nez v0, :cond_1c8

    if-eqz v3, :cond_1a0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v0

    if-lez v0, :cond_1c8

    :cond_1a0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-eqz v0, :cond_1b0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v0

    if-lez v0, :cond_1c8

    .line 509
    :cond_1b0
    :goto_1b0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->enable(Landroid/widget/TextView;Z)V

    goto/16 :goto_b4

    .line 488
    :cond_1b7
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_d4

    .line 489
    :cond_1bb
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_e5

    .line 502
    :cond_1bf
    const-string v0, "\u0414\u0430, \u0438\u043c\u0430"

    const-string v5, "Yes"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_158

    :cond_1c8
    move v1, v2

    .line 508
    goto :goto_1b0
.end method

.method buildRun()V
    .registers 15

    .prologue
    const/high16 v13, 0x439b0000    # 310.0f

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x42600000    # 56.0f

    const/4 v9, 0x0

    .line 749
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v6

    .line 750
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 751
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 752
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceRing;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    .line 753
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

    .line 754
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

    .line 755
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

    .line 754
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->setWords([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    if-eqz v0, :cond_95

    .line 757
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

    .line 759
    :cond_95
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 761
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 762
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3, v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    .line 763
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 764
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v9, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->strengthRow()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->canPause()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 768
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v2, "\u275a\u275a  Pause"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    .line 769
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    :cond_126
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-direct {v2, v9, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v9, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 774
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1, v6}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->stopLabel(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    .line 775
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Stop;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Stop;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
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

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 778
    return-void

    .line 757
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

    .line 567
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v3

    .line 568
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v4

    .line 569
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    if-nez v0, :cond_29

    .line 570
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->minutes()I

    move-result v6

    invoke-interface {v0, v5, v6, v3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->prepare(IIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    if-nez v0, :cond_122

    move v0, v1

    :goto_27
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    .line 573
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    const-string v5, "\u0421\u0438\u043b\u0430"

    const-string v6, "Strength"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->title(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 575
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 576
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 577
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

    .line 578
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v6, "\u25c9"

    const/high16 v7, 0x41900000    # 18.0f

    iget v8, v4, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    invoke-static {v5, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 579
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->strengthGoal(Z)Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v4, v6, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 580
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 581
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    if-eqz v0, :cond_cf

    .line 584
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepareError:Ljava/lang/String;

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {v4, v5, v6, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v5, 0xe

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    :cond_cf
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->strengthRow()Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v5, 0x12

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->widthRow(Z)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    const-string v0, "\u2190  \u041d\u0430\u0437\u0430\u0434"

    const-string v1, "\u2190  Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Back;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Back;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_125

    const-string v0, "\u25b6  \u0421\u0442\u0430\u0440\u0442"

    const-string v1, "\u25b6  Start"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_111
    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Start;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Start;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->footer(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    .line 591
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->primary:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->enable(Landroid/widget/TextView;Z)V

    .line 592
    return-void

    :cond_122
    move v0, v2

    .line 571
    goto/16 :goto_27

    .line 589
    :cond_125
    const-string v0, "\u2713  \u0414\u043e\u0431\u0440\u0435 \u0435 \u00b7 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v1, "\u2713  Good \u00b7 go on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_111
.end method

.method close()V
    .registers 3

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    .line 277
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hide()V

    .line 279
    :try_start_6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->cancel()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_16

    .line 283
    :goto_b
    # getter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$000()Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    move-result-object v0

    if-ne v0, p0, :cond_15

    .line 284
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$002(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 286
    :cond_15
    return-void

    .line 280
    :catch_16
    move-exception v0

    .line 281
    const-string v1, "FaceStudio.cancel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method closeTapped()V
    .registers 3

    .prologue
    .line 264
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->active()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 265
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hide()V

    .line 273
    :goto_10
    return-void

    .line 268
    :cond_11
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 269
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->finishDone()V

    goto :goto_10

    .line 272
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

    .line 843
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 844
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 845
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

    .line 846
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 847
    iget v2, p2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v5, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 848
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

    .line 849
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sub-float v2, v6, v2

    invoke-direct {v3, v5, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 852
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

    .line 426
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v2

    .line 427
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v3

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 430
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 431
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 432
    iget v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/16 v7, 0x14

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/16 v9, 0x55

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v8

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-static {v1, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 434
    const/16 v7, 0x10

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 435
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->name(Z)Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/4 v10, 0x1

    invoke-static {v7, v8, v12, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  \u00b7  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->line(Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v7, v8, v12, v9, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 437
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v11, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 439
    iget v1, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    if-lez v1, :cond_b7

    .line 440
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-virtual {p0, v14}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 441
    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 442
    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->courseBar(Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;Lcom/isaigu/gymapp/wearable/face/FaceProgram;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    :cond_b7
    const/4 v1, 0x0

    .line 445
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 446
    iget-boolean v7, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->finished:Z

    if-eqz v7, :cond_e1

    iget v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-nez v7, :cond_e1

    .line 447
    const-string v0, "\u041a\u0443\u0440\u0441\u044a\u0442 \u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0435\u043d \u2014 \u201e\u0422\u043e\u043d\u0443\u0441 \u0438 \u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e\u0441\u0442\u201c 2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u043f\u0430\u0437\u0438 \u0435\u0444\u0435\u043a\u0442\u0430"

    const-string v1, "The course is complete \u2014 Face tone 2\u20133 times a week keeps the effect"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 454
    :cond_cc
    :goto_cc
    if-eqz v1, :cond_e0

    .line 455
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v2, v1, v3, v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 456
    invoke-virtual {p0, v14}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {v0, v11, v1, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 457
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    :cond_e0
    return-object v6

    .line 450
    :cond_e1
    iget-wide v8, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    cmp-long v7, v8, v4

    if-lez v7, :cond_cc

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0441\u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430 \u2014 \u043d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 "

    const-string v7, "The muscle recovers \u2014 best "

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, v3, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    invoke-static {v8, v9, v4, v5, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->when(JJZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_cc
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method finishDone()V
    .registers 3

    .prologue
    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    .line 872
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hide()V

    .line 873
    # getter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$000()Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    move-result-object v0

    if-ne v0, p0, :cond_10

    .line 874
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->access$002(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 876
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_1e

    .line 878
    :try_start_18
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->finishAssisted()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1f

    .line 883
    :goto_1b
    :try_start_1b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_26

    .line 888
    :cond_1e
    :goto_1e
    return-void

    .line 879
    :catch_1f
    move-exception v0

    .line 880
    const-string v1, "FaceStudio.report"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 884
    :catch_26
    move-exception v0

    .line 885
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

    .line 899
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 900
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 903
    :cond_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 904
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
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

    .line 906
    return-object v0
.end method

.method ghost(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 8

    .prologue
    .line 910
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 911
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    return-void
.end method

.method go(I)V
    .registers 7

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 291
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    .line 292
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 293
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 294
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    .line 296
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    .line 297
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    .line 298
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    .line 299
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 300
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_7b

    const/4 v0, 0x1

    :goto_30
    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->focusChin(Z)V

    .line 301
    const/4 v0, 0x2

    if-gt p1, v0, :cond_45

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->progress(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    :cond_45
    packed-switch p1, :pswitch_data_8e

    .line 309
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildDone()V

    .line 311
    :goto_4b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->floor:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 312
    if-eq p1, v4, :cond_6c

    if-nez p1, :cond_5d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->programs()[I

    move-result-object v0

    array-length v0, v0

    if-gt v0, v4, :cond_6c

    .line 313
    :cond_5d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->floor:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->courseCard()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    :cond_6c
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

    :cond_7b
    move v0, v1

    .line 300
    goto :goto_30

    .line 305
    :pswitch_7d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildPick()V

    goto :goto_4b

    .line 306
    :pswitch_81
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildPlace()V

    goto :goto_4b

    .line 307
    :pswitch_85
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildStrength()V

    goto :goto_4b

    .line 308
    :pswitch_89
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->buildRun()V

    goto :goto_4b

    .line 304
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
    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 255
    :try_start_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_12

    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_12} :catch_13

    .line 260
    :cond_12
    :goto_12
    return-void

    .line 258
    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method minutes()I
    .registers 5

    .prologue
    const/16 v0, 0x14

    const/16 v1, 0xa

    .line 738
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    packed-switch v2, :pswitch_data_1a

    :pswitch_9
    move v0, v1

    .line 742
    :cond_a
    :goto_a
    :pswitch_a
    return v0

    .line 739
    :pswitch_b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->week:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_a

    move v0, v1

    goto :goto_a

    .line 741
    :pswitch_16
    const/16 v0, 0xf

    goto :goto_a

    .line 738
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
    .line 1021
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-eqz v0, :cond_8

    .line 1025
    :goto_7
    return-void

    .line 1024
    :cond_8
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_7
.end method

.method pick(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1011
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-eq p1, v0, :cond_9

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eqz v0, :cond_a

    .line 1018
    :cond_9
    :goto_9
    return-void

    .line 1014
    :cond_a
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    .line 1015
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->select(I)V

    .line 1016
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    .line 1017
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

    .line 552
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 553
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 554
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, p3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 555
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 556
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

    .line 557
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, p2, v8, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 559
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 560
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    return-object v0
.end method

.method prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;
    .registers 2

    .prologue
    .line 167
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

    .line 381
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-ne v0, v3, :cond_15e

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

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v7

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 385
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    int-to-float v6, v3

    .line 386
    if-eqz v0, :cond_161

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
    :goto_51
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

    if-eqz v0, :cond_16f

    const/4 v3, -0x1

    :goto_7e
    invoke-static {v7, v8, v9, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 395
    const/16 v3, 0x11

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 396
    if-eqz v0, :cond_173

    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_8b
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

    if-eqz v0, :cond_17d

    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_cc
    invoke-static {v8, v9, v10, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 401
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 402
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 403
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v3, v2, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v7, "i"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v10, 0x22

    invoke-static {v3, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 406
    new-instance v7, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;

    iget v8, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    invoke-direct {v7, p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42080000    # 34.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    const/high16 v9, 0x42080000    # 34.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tag(Z)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41680000    # 14.5f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v6, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 410
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 411
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 412
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {v3, v2, v6, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 413
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 415
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-virtual {v3, v2, v6, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 416
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->course(Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_181

    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    :goto_14b
    invoke-static {v2, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 417
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 418
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 419
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 421
    return-object v5

    :cond_15e
    move v0, v2

    .line 381
    goto/16 :goto_f

    .line 388
    :cond_161
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    goto/16 :goto_51

    .line 394
    :cond_16f
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    goto/16 :goto_7e

    .line 396
    :cond_173
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tint:I

    const/16 v8, 0x30

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    goto/16 :goto_8b

    .line 400
    :cond_17d
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_cc

    .line 416
    :cond_181
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_14b
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
    .line 856
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->recorded:Z

    if-eqz v0, :cond_5

    .line 868
    :cond_4
    :goto_4
    return-void

    .line 859
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->doneShare()D

    move-result-wide v0

    .line 860
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->courseKey()Ljava/lang/String;

    move-result-object v2

    .line 861
    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpg-double v0, v0, v4

    if-ltz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 864
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

    .line 865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
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

    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->recorded:Z

    goto :goto_4
.end method

.method refresh()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 926
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_a

    .line 982
    :cond_9
    :goto_9
    return-void

    .line 929
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v3

    .line 930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 931
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    if-eqz v0, :cond_6d

    .line 932
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v2

    .line 933
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->line(Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;Z)Ljava/lang/String;

    move-result-object v0

    .line 934
    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_7c

    .line 935
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

    .line 936
    invoke-static {v6, v7, v4, v5, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->when(JJZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 937
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 941
    :goto_58
    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->finished:Z

    if-eqz v2, :cond_68

    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->program:I

    if-nez v2, :cond_68

    .line 942
    const-string v0, "\u041a\u0443\u0440\u0441\u044a\u0442 \u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0435\u043d \u2014 \u0437\u0430 \u043f\u043e\u0434\u0434\u0440\u044a\u0436\u043a\u0430 \u0438\u0437\u0431\u0435\u0440\u0438 \u201e\u0422\u043e\u043d\u0443\u0441 \u0438 \u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e\u0441\u0442\u201c"

    const-string v2, "The course is complete \u2014 for upkeep pick Tone & firmness"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 944
    :cond_68
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6d
    move v0, v1

    .line 946
    :goto_6e
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v0, v2, :cond_ca

    .line 947
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    if-nez v2, :cond_84

    .line 946
    :cond_79
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 939
    :cond_7c
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_58

    .line 950
    :cond_84
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->hasMaster()Z

    move-result v2

    if-eqz v2, :cond_c3

    add-int/lit8 v2, v0, -0x1

    .line 951
    :goto_8e
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v6, v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->strength(I)I

    move-result v6

    .line 952
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    aget v7, v7, v0

    if-eq v6, v7, :cond_79

    .line 953
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->lastShown:[I

    aput v6, v7, v0

    .line 954
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

    .line 950
    goto :goto_8e

    .line 954
    :cond_c5
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_bf

    .line 957
    :cond_ca
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_fa

    .line 958
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

    .line 959
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prepared:Z

    if-eqz v0, :cond_174

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_16b

    .line 960
    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439 \u043f\u043e \u0435\u0434\u043d\u0430 \u0441\u0442\u044a\u043f\u043a\u0430"

    const-string v2, "Raise one step at a time"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    :goto_f7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    :cond_fa
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 964
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v1

    .line 965
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    if-eqz v0, :cond_11a

    .line 966
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->ring:Lcom/isaigu/gymapp/wearable/face/FaceRing;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->phases()[J

    move-result-object v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v4}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->paused()Z

    move-result v4

    invoke-virtual {v0, v2, v1, v4}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->set([JLcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)V

    .line 968
    :cond_11a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    if-eqz v0, :cond_127

    .line 969
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->statusLine:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->runLine(Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    :cond_127
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_140

    .line 972
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

    .line 974
    :cond_140
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_14f

    .line 975
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stopBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->stopLabel(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    :cond_14f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    invoke-virtual {v2, v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->runHint(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->finished()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 979
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->toDone()V

    goto/16 :goto_9

    .line 961
    :cond_16b
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0432\u0435\u0447\u0435 \u0442\u0435\u0447\u0435"

    const-string v2, "The program is running"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f7

    :cond_174
    const-string v0, ""

    goto :goto_f7

    .line 972
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
    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 250
    :goto_e
    return-void

    .line 243
    :cond_f
    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    if-eq p1, v0, :cond_17

    .line 244
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    .line 246
    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->show()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_e

    .line 247
    :catch_1b
    move-exception v0

    .line 248
    const-string v1, "FaceStudio.reshow"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method runLine(Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)Ljava/lang/String;
    .registers 6

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    .line 986
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

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 174
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

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Close;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Close;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Info;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 184
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 187
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

    .line 188
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 189
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    .line 190
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_1bc

    const v0, -0xa11501

    :goto_9f
    const v4, -0x906f

    const v5, -0xa5a6

    invoke-virtual {v3, v0, v4, v5}, Lcom/isaigu/gymapp/wearable/face/FaceView;->setColors(III)V

    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceView;->setSource(Lcom/isaigu/gymapp/wearable/face/FaceView$Source;)V

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->face:Lcom/isaigu/gymapp/wearable/face/FaceView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 194
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {v0, v3, v7, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 195
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v4, ""

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v8, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    .line 196
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v4, ""

    const/high16 v5, 0x41500000    # 13.0f

    const v6, -0x33190c01

    invoke-static {v3, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    .line 197
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 198
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x50

    invoke-direct {v3, v8, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 202
    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->faceH:I

    invoke-direct {v0, v7, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 207
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-virtual {v2, v7}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 209
    invoke-virtual {v2, v9}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 210
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    .line 211
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 212
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->floor:Landroid/widget/LinearLayout;

    .line 214
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->floor:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->faceH:I

    const v4, 0x3f8f5c29    # 1.12f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 216
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 217
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->hint:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 225
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    .line 226
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 227
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    return-void

    .line 190
    :cond_1bc
    const v0, -0xc82f15

    goto/16 :goto_9f
.end method

.method slot(I)I
    .registers 3

    .prologue
    .line 732
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

    .line 707
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 708
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 709
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

    .line 710
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

    .line 711
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2, p1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->socket(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-static {v1, v2, v3, v4, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 712
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 713
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v9, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 714
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42080000    # 34.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x28

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 716
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x28

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 717
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;

    invoke-direct {v3, p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 718
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;

    invoke-direct {v3, p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v4, "100 %"

    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v5, v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 720
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 721
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->slot(I)I

    move-result v5

    aput-object v3, v4, v5

    .line 722
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 723
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 724
    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v9, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    return-object v0
.end method

.method socketTable(Z)Landroid/view/View;
    .registers 14

    .prologue
    .line 517
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 518
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_11b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v0

    .line 519
    :goto_14
    const/4 v1, 0x0

    .line 520
    const/4 v2, 0x0

    move v4, v2

    :goto_17
    if-ge v4, v0, :cond_15c

    .line 521
    rem-int/lit8 v2, v4, 0x2

    if-nez v2, :cond_30

    .line 522
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 523
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    if-nez v4, :cond_126

    const/4 v1, 0x0

    :goto_28
    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v2

    .line 525
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

    .line 526
    :goto_42
    if-eqz v5, :cond_12e

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 527
    :goto_46
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 528
    const/16 v3, 0x10

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 529
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

    .line 530
    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 531
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

    .line 532
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v9

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
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

    .line 534
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_177

    .line 535
    if-eqz v5, :cond_14a

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2, v4}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->battery(I)I

    move-result v2

    .line 536
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

    .line 538
    :goto_e0
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/high16 v9, 0x41680000    # 14.5f

    if-eqz v5, :cond_159

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_e8
    const/4 v5, 0x0

    invoke-static {v8, v2, v9, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 539
    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    const/4 v5, 0x0

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v5, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 540
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v5, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 542
    invoke-virtual {v1, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_17

    .line 518
    :cond_11b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->bluetensSites()[I

    move-result-object v0

    array-length v0, v0

    goto/16 :goto_14

    .line 523
    :cond_126
    const/16 v1, 0x8

    goto/16 :goto_28

    .line 525
    :cond_12a
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_42

    .line 526
    :cond_12e
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_46

    .line 529
    :cond_132
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_5f

    .line 531
    :cond_136
    const/16 v8, 0x30

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto/16 :goto_6b

    .line 533
    :cond_13e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->bluetensSites()[I

    move-result-object v2

    aget v2, v2, v4

    goto/16 :goto_9d

    .line 535
    :cond_14a
    const/4 v2, -0x1

    goto/16 :goto_b2

    .line 536
    :cond_14d
    const-string v2, "  \u00b7  \u2713"

    goto :goto_d8

    :cond_150
    const-string v2, "  \u00b7  \u043d\u0435 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d\u043e"

    const-string v8, "  \u00b7  not connected"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d8

    .line 538
    :cond_159
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_e8

    .line 544
    :cond_15c
    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_176

    if-eqz v1, :cond_176

    .line 545
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    :cond_176
    return-object v6

    :cond_177
    move-object v2, v3

    goto/16 :goto_e0
.end method

.method start()V
    .registers 3

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->canStart()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1049
    :goto_8
    return-void

    .line 1047
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->start(Landroid/content/Context;)V

    .line 1048
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_8
.end method

.method stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;
    .registers 5

    .prologue
    .line 891
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->courseKey()Ljava/lang/String;

    move-result-object v0

    .line 892
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

    .line 893
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceCourse;->stats(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceProgram;J)Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v0

    return-object v0

    .line 892
    :cond_40
    const-string v0, ""

    goto :goto_2f
.end method

.method stepWidth(I)V
    .registers 5

    .prologue
    .line 695
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->widthMin()I

    move-result v0

    const/16 v1, 0x96

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->width()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 696
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->width()I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 703
    :cond_1f
    :goto_1f
    return-void

    .line 699
    :cond_20
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->setWidth(I)V

    .line 700
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->widthValue:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    .line 701
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->widthValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b5s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method strengthRow()Landroid/view/View;
    .registers 12

    .prologue
    const/4 v10, -0x2

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v7, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 599
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 600
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->values:[Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 601
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->hasMaster()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 602
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

    .line 603
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v4

    .line 604
    if-le v4, v7, :cond_a5

    .line 605
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v3, "\u0414\u044f\u043b \u043d\u0430 \u0432\u0441\u044f\u043a\u043e \u043c\u044f\u0441\u0442\u043e \u2014 \u043d\u0430\u043c\u0430\u043b\u0438 \u0442\u0430\u043c, \u043a\u044a\u0434\u0435\u0442\u043e \u0441\u0435 \u0443\u0441\u0435\u0449\u0430 \u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    const-string v5, "Each site\'s share \u2014 lower where it feels stronger"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v3, v5, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 607
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/16 v5, 0xc

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    const/4 v0, 0x0

    move v3, v2

    .line 609
    :goto_57
    if-ge v3, v4, :cond_86

    .line 610
    rem-int/lit8 v5, v3, 0x3

    if-nez v5, :cond_6d

    .line 611
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 612
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    :cond_6d
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 615
    rem-int/lit8 v6, v3, 0x3

    if-lez v6, :cond_7c

    .line 616
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 618
    :cond_7c
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->smallStepper(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 620
    :cond_86
    rem-int/lit8 v3, v4, 0x3

    :goto_88
    if-lez v3, :cond_a5

    const/4 v4, 0x3

    if-ge v3, v4, :cond_a5

    .line 621
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 622
    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 623
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    :cond_a5
    move-object v0, v1

    .line 638
    :goto_a6
    return-object v0

    .line 628
    :cond_a7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 629
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v0, v2

    .line 630
    :goto_b8
    if-ge v0, v4, :cond_fd

    const/4 v5, 0x3

    if-ge v0, v5, :cond_fd

    .line 631
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 632
    if-lez v0, :cond_cc

    .line 633
    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 635
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

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 637
    :cond_fd
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v1

    .line 638
    goto :goto_a6
.end method

.method subtitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->clientName()Ljava/lang/String;

    move-result-object v1

    .line 232
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_36

    .line 233
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c XEMS \u00b7 \u0431\u0443\u043a\u0441\u0430 \u0437\u0430 \u043b\u0438\u0446\u0435 F1\u2013F10"

    const-string v2, "XEMS suit \u00b7 face connector F1\u2013F10"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
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

    .line 234
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
    .line 1053
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->refresh()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_1f

    .line 1057
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

    .line 1058
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tick:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1060
    :cond_1e
    return-void

    .line 1054
    :catch_1f
    move-exception v0

    .line 1055
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

    .line 783
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-eqz v0, :cond_a

    .line 791
    :cond_9
    :goto_9
    return-void

    .line 786
    :cond_a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->record()V

    .line 787
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_20

    .line 788
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->reshow(Landroid/app/Activity;)V

    .line 790
    :cond_20
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    goto :goto_9
.end method

.method updateBadge()V
    .registers 4

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stats()Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    move-result-object v0

    .line 1005
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

    .line 1006
    return-void
.end method

.method updateCaption()V
    .registers 5

    .prologue
    .line 990
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v0

    .line 991
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v1

    .line 992
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_33

    .line 993
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_2a

    .line 994
    const-string v0, "\u0412\u0441\u044f\u043a\u043e \u0433\u043d\u0435\u0437\u0434\u043e F \u2014 \u043d\u0430 \u0441\u0432\u043e\u0435\u0442\u043e \u043c\u044f\u0441\u0442\u043e, \u0434\u0432\u043e\u0439\u043a\u0430\u0442\u0430 \u043f\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0430"

    const-string v2, "Each F socket on its site, the pair along the muscle"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 993
    :goto_1f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    :goto_29
    return-void

    .line 995
    :cond_2a
    const-string v0, "\u0412\u0441\u044f\u043a\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u2014 \u043d\u0430 \u0441\u0432\u043e\u0435\u0442\u043e \u043c\u044f\u0441\u0442\u043e"

    const-string v2, "Each pad on its site"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 998
    :cond_33
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->caption:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscle(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->captionSub:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29
.end method

.method widthRow(Z)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v9, -0x2

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v8, 0x42300000    # 44.0f

    .line 673
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 674
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 675
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 676
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 677
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 678
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v3, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "Pulse"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 679
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v3, "\u0411\u043e\u043b\u0438 \u0432 \u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430? \u041d\u0430\u043c\u0430\u043b\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0438 \u0434\u043e\u0431\u0430\u0432\u0438 \u0441\u0438\u043b\u0430."

    const-string v4, "Deep ache? Narrow the pulse and add strength."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 681
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x2c

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 683
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x2c

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 684
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$WidthTap;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v4}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->widthStep()I

    move-result v4

    neg-int v4, v4

    invoke-direct {v3, p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$WidthTap;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$WidthTap;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v4}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->widthStep()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$WidthTap;-><init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v5}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u00b5s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41880000    # 17.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->widthValue:Landroid/widget/TextView;

    .line 687
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->widthValue:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 688
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->widthValue:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42ac0000    # 86.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v3, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dp(F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    return-object v0
.end method
