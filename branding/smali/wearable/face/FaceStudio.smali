.class public final Lcom/isaigu/gymapp/wearable/face/FaceStudio;
.super Ljava/lang/Object;
.source "FaceStudio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Finish;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Stop;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Start;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Back;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pick;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Info;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Close;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;,
        Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;
    }
.end annotation


# static fields
.field static final DONE:I = 0x4

.field static final PICK:I = 0x0

.field static final PLACE:I = 0x1

.field static final PREFS:Ljava/lang/String; = "xems_face"

.field static final RUN:I = 0x3

.field static final STRENGTH:I = 0x2

.field static final TICK_MS:J = 0xfaL

.field private static current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    return-object v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;
    .registers 1

    .prologue
    .line 32
    sput-object p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    return-object p0
.end method

.method static bg()Z
    .registers 1

    .prologue
    .line 102
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    return v0
.end method

.method public static bringBack(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 80
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 81
    if-eqz v0, :cond_b

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-nez v1, :cond_b

    .line 82
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->reshow(Landroid/app/Activity;)V

    .line 84
    :cond_b
    return-void
.end method

.method public static deviceRunning(I)Z
    .registers 3

    .prologue
    .line 97
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 98
    if-eqz v0, :cond_17

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-nez v1, :cond_17

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v1

    if-ne v1, p0, :cond_17

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static onAutoFinished()V
    .registers 2

    .prologue
    .line 88
    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 89
    if-eqz v1, :cond_18

    iget-boolean v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-nez v0, :cond_18

    iget-object v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;

    if-eqz v0, :cond_18

    .line 90
    iget-object v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    check-cast v0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->onEnded()V

    .line 91
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->toDone()V

    .line 93
    :cond_18
    return-void
.end method

.method private static open(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/face/FaceDevice;I)V
    .registers 5

    .prologue
    .line 61
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 62
    if-eqz v0, :cond_b

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-nez v1, :cond_b

    .line 63
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->close()V

    .line 65
    :cond_b
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-direct {v0, p0, p1, p2}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/face/FaceDevice;I)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 66
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->show()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    .line 70
    :goto_17
    return-void

    .line 67
    :catch_18
    move-exception v0

    .line 68
    const-string v1, "FaceStudio.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method public static openAuto(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 45
    const-string v0, "face_tone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 46
    :goto_9
    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceAuto;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;-><init>()V

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->open(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/face/FaceDevice;I)V

    .line 47
    return-void

    .line 45
    :cond_12
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static openDevice(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/face/FaceDevice;)V
    .registers 5

    .prologue
    .line 51
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 52
    if-eqz v0, :cond_18

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-nez v1, :cond_18

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v1

    invoke-interface {p1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v2

    if-ne v1, v2, :cond_18

    .line 53
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->reshow(Landroid/app/Activity;)V

    .line 57
    :goto_17
    return-void

    .line 56
    :cond_18
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->open(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/face/FaceDevice;I)V

    goto :goto_17
.end method

.method public static ownsAuto()Z
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->current:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 75
    if-eqz v0, :cond_12

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closed:Z

    if-nez v1, :cond_12

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static sheet(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1024
    const/4 v0, 0x0

    const/16 v1, 0x280

    :try_start_3
    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 1025
    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x0

    invoke-static {p0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1026
    const/4 v2, 0x0

    const v3, 0x3f970a3d    # 1.18f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1027
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1029
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1030
    const v1, 0x3f5c28f6    # 0.86f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_33} :catch_34

    .line 1034
    :goto_33
    return-void

    .line 1031
    :catch_34
    move-exception v0

    .line 1032
    const-string v1, "FaceStudio.sheet"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static when(JJZ)Ljava/lang/String;
    .registers 17

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x1

    .line 851
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 852
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 853
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x190

    add-int/2addr v1, v2

    .line 854
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 855
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x190

    add-int/2addr v2, v3

    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->pad2(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 857
    cmp-long v4, p0, p2

    if-gtz v4, :cond_59

    .line 858
    if-eqz p4, :cond_56

    const-string v0, "\u0434\u043d\u0435\u0441"

    .line 869
    :goto_55
    return-object v0

    .line 858
    :cond_56
    const-string v0, "today"

    goto :goto_55

    .line 860
    :cond_59
    if-ne v2, v1, :cond_74

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_71

    const-string v0, "\u0434\u043d\u0435\u0441 \u0441\u043b\u0435\u0434 "

    :goto_64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    :cond_71
    const-string v0, "today after "

    goto :goto_64

    .line 863
    :cond_74
    add-int/lit8 v1, v1, 0x1

    if-ne v2, v1, :cond_91

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_8e

    const-string v0, "\u0443\u0442\u0440\u0435 \u0441\u043b\u0435\u0434 "

    :goto_81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    :cond_8e
    const-string v0, "tomorrow after "

    goto :goto_81

    .line 866
    :cond_91
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v9

    const-string v2, "\u0432 \u043d\u0435\u0434\u0435\u043b\u044f"

    aput-object v2, v1, v6

    const-string v2, "\u0432 \u043f\u043e\u043d\u0435\u0434\u0435\u043b\u043d\u0438\u043a"

    aput-object v2, v1, v10

    const/4 v2, 0x3

    const-string v4, "\u0432\u044a\u0432 \u0432\u0442\u043e\u0440\u043d\u0438\u043a"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "\u0432 \u0441\u0440\u044f\u0434\u0430"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "\u0432 \u0447\u0435\u0442\u0432\u044a\u0440\u0442\u044a\u043a"

    aput-object v4, v1, v2

    const-string v2, "\u0432 \u043f\u0435\u0442\u044a\u043a"

    aput-object v2, v1, v7

    const-string v2, "\u0432 \u0441\u044a\u0431\u043e\u0442\u0430"

    aput-object v2, v1, v8

    .line 867
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v2, v9

    const-string v4, "on Sunday"

    aput-object v4, v2, v6

    const-string v4, "on Monday"

    aput-object v4, v2, v10

    const/4 v4, 0x3

    const-string v5, "on Tuesday"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "on Wednesday"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "on Thursday"

    aput-object v5, v2, v4

    const-string v4, "on Friday"

    aput-object v4, v2, v7

    const-string v4, "on Saturday"

    aput-object v4, v2, v8

    .line 868
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_10d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0441\u043b\u0435\u0434 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ff
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_55

    :cond_10d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ff
.end method
