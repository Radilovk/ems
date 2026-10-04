.class final Lcom/isaigu/gymapp/dialog/PauseSetting$Step;
.super Ljava/lang/Object;
.source "PauseSetting.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/PauseSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Step"
.end annotation


# instance fields
.field private final b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

.field private final hz:Z

.field private final s:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/widget/XemsUi$Stepper;Z)V
    .registers 4

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 137
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->s:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 138
    iput-boolean p3, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->hz:Z

    .line 139
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 6

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->hz:Z

    if-eqz v0, :cond_24

    .line 144
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v2, 0x1

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :goto_13
    add-int/2addr v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 149
    :goto_1e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->show()V

    .line 150
    return-void

    .line 144
    :cond_22
    const/4 v0, 0x7

    goto :goto_13

    .line 146
    :cond_24
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    .line 147
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    goto :goto_1e
.end method

.method show()V
    .registers 5

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->hz:Z

    if-eqz v0, :cond_31

    .line 154
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->s:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    if-lez v0, :cond_2f

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Hz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2-\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 \u00b7 \u0447\u0435\u0441\u0442\u043e\u0442\u0430"

    const-string v3, "2nd impulse \u00b7 frequency"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_2e
    return-void

    .line 154
    :cond_2f
    const/4 v0, 0x7

    goto :goto_15

    .line 156
    :cond_31
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->s:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2-\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 \u00b7 \u0441\u0438\u043b\u0430"

    const-string v3, "2nd impulse \u00b7 strength"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method
