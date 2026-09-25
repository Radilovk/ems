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
.field private final ms:I

.field private final program:Lcom/isaigu/gymapp/bean/TrainProgram;

.field private final sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private final up:Z

.field private final value:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;ZI)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 156
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->value:Landroid/widget/TextView;

    .line 157
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->program:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 158
    iput-boolean p4, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->up:Z

    .line 159
    iput p5, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->ms:I

    .line 160
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->program:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 165
    if-eqz v0, :cond_0

    .line 166
    iget-boolean v1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->up:Z

    if-eqz v1, :cond_1

    .line 167
    iget v1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->ms:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 172
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->value:Landroid/widget/TextView;

    iget v1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->ms:I

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/RampSetting;->fmt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_1
    return-void

    .line 169
    :cond_1
    iget v1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;->ms:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_1
.end method
