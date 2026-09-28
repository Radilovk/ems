.class final Lcom/isaigu/gymapp/dialog/ManualPresets$Pick;
.super Ljava/lang/Object;
.source "ManualPresets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/ManualPresets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pick"
.end annotation


# instance fields
.field final dialog:Ljava/lang/Object;

.field final level:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ManualPresets$Pick;->dialog:Ljava/lang/Object;

    .line 84
    iput p2, p0, Lcom/isaigu/gymapp/dialog/ManualPresets$Pick;->level:I

    .line 85
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ManualPresets$Pick;->dialog:Ljava/lang/Object;

    const-string v2, "trainProgram"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/ManualPresets;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 91
    if-nez v0, :cond_e

    .line 110
    :goto_d
    return-void

    .line 94
    :cond_e
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v0, v2, v3

    move v0, v1

    .line 96
    :goto_26
    array-length v1, v2

    if-ge v0, v1, :cond_39

    .line 97
    aget-object v1, v2, v0

    sget-object v3, Lcom/isaigu/gymapp/dialog/ManualPresets;->SETS:[[[I

    iget v4, p0, Lcom/isaigu/gymapp/dialog/ManualPresets$Pick;->level:I

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/ManualPresets;->apply(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 99
    :cond_39
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ManualPresets$Pick;->dialog:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "initSetData"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 101
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ManualPresets$Pick;->dialog:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u041f\u043e\u043f\u044a\u043b\u043d\u0435\u043d\u043e \u0437\u0430 \u0447\u0435\u0442\u0438\u0440\u0438\u0442\u0435 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u2014 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u0417\u0430\u043f\u0430\u0437\u0438\u201c."

    const-string v2, "Filled for all four programs \u2014 tap Save."

    .line 104
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 103
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6b} :catch_6c

    goto :goto_d

    .line 107
    :catch_6c
    move-exception v0

    .line 108
    const-string v1, "ManualPresets.pick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method
