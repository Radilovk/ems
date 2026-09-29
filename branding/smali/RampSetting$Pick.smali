.class final Lcom/isaigu/gymapp/dialog/RampSetting$Pick;
.super Ljava/lang/Object;
.source "RampSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/RampSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pick"
.end annotation


# instance fields
.field private final k:I

.field private final ms:I

.field private final program:Lcom/isaigu/gymapp/bean/TrainProgram;

.field private final sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private final up:Z

.field private final value:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;IZI)V
    .registers 7

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 228
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->value:Landroid/widget/TextView;

    .line 229
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->program:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 230
    iput p4, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->k:I

    .line 231
    iput-boolean p5, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->up:Z

    .line 232
    iput p6, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->ms:I

    .line 233
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 237
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->program:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->k:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/RampSetting;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_12

    .line 239
    iget-boolean v1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->up:Z

    if-eqz v1, :cond_2c

    .line 240
    iget v1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->ms:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 245
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->value:Landroid/widget/TextView;

    iget v0, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->k:I

    if-nez v0, :cond_31

    iget v0, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->ms:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->fmt(I)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 248
    :try_start_24
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_2b} :catch_52

    .line 251
    :goto_2b
    return-void

    .line 242
    :cond_2c
    iget v1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->ms:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_12

    .line 245
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->up:Z

    if-eqz v0, :cond_4f

    const-string v0, "\u2191 "

    :goto_3c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->ms:I

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/RampSetting;->fmt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_4f
    const-string v0, "\u2193 "

    goto :goto_3c

    .line 249
    :catch_52
    move-exception v0

    goto :goto_2b
.end method
