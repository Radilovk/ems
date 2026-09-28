.class public final Lcom/isaigu/gymapp/dialog/ManualPresets;
.super Ljava/lang/Object;
.source "ManualPresets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/ManualPresets$Info;,
        Lcom/isaigu/gymapp/dialog/ManualPresets$Pick;
    }
.end annotation


# static fields
.field static final SETS:[[[I

.field private static final TAG:Ljava/lang/String; = "xems_manual_presets"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 26
    new-array v0, v7, [[[I

    const/4 v1, 0x4

    new-array v1, v1, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_6e

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_7e

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_8e

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_9e

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v1, v1, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_ae

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_be

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_ce

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_de

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v1, v1, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_ee

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_fe

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_10e

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_11e

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/dialog/ManualPresets;->SETS:[[[I

    return-void

    nop

    :array_6e
    .array-data 4
        0x50
        0x12c
        0x4
        0x6
        0x14
        0x1f4
    .end array-data

    :array_7e
    .array-data 4
        0x55
        0x12c
        0x4
        0x6
        0x14
        0x1f4
    .end array-data

    :array_8e
    .array-data 4
        0x7
        0x12c
        0xa
        0x1
        0x14
        0x0
    .end array-data

    :array_9e
    .array-data 4
        0x3
        0xfa
        0xa
        0x2
        0x14
        0x0
    .end array-data

    :array_ae
    .array-data 4
        0x55
        0x15e
        0x4
        0x4
        0x14
        0x1f4
    .end array-data

    :array_be
    .array-data 4
        0x5a
        0x15e
        0x6
        0x4
        0x14
        0x1f4
    .end array-data

    :array_ce
    .array-data 4
        0x1e
        0x15e
        0x8
        0x2
        0x14
        0x1f4
    .end array-data

    :array_de
    .array-data 4
        0x5
        0x12c
        0xa
        0x2
        0x14
        0x0
    .end array-data

    :array_ee
    .array-data 4
        0x55
        0x15e
        0x6
        0x4
        0x14
        0x1f4
    .end array-data

    :array_fe
    .array-data 4
        0x64
        0x190
        0x6
        0x4
        0x14
        0x1f4
    .end array-data

    :array_10e
    .array-data 4
        0x32
        0x15e
        0x8
        0x2
        0x14
        0x1f4
    .end array-data

    :array_11e
    .array-data 4
        0x8
        0x12c
        0xa
        0x2
        0x19
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)V
    .registers 4

    .prologue
    const/4 v1, 0x5

    .line 114
    if-nez p0, :cond_4

    .line 124
    :goto_3
    return-void

    .line 117
    :cond_4
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 118
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 119
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 120
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 121
    const/4 v0, 0x4

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 122
    aget v0, p1, v1

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 123
    aget v0, p1, v1

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_3
.end method

.method public static attach(Ljava/lang/Object;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 40
    :try_start_1
    const-string v1, "trainProgram"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/ManualPresets;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 41
    if-nez v1, :cond_c

    .line 53
    :cond_b
    :goto_b
    return-void

    .line 44
    :cond_c
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "usericonLayout"

    aput-object v3, v4, v1

    const/4 v1, 0x1

    const-string v3, "usericonLayout2"

    aput-object v3, v4, v1

    array-length v5, v4

    move v3, v2

    :goto_1b
    if-ge v3, v5, :cond_b

    aget-object v1, v4, v3

    .line 45
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/ManualPresets;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    instance-of v1, v2, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_40

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    const-string v6, "xems_manual_presets"

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_40

    .line 47
    move-object v0, v2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v1, v0

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v2, p0}, Lcom/isaigu/gymapp/dialog/ManualPresets;->panel(Landroid/widget/LinearLayout;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_40} :catch_44

    .line 44
    :cond_40
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1b

    .line 50
    :catch_44
    move-exception v1

    .line 51
    const-string v2, "ManualPresets.attach"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static panel(Landroid/widget/LinearLayout;Ljava/lang/Object;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 57
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 58
    const-string v0, "xems_manual_presets"

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 59
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v5, v1, v0, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 60
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 61
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 62
    const-string v2, "\u041f\u0440\u0438\u043c\u0435\u0440\u043d\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    const-string v6, "Example settings"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v2, v6, v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    const-string v2, "i"

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v8, 0x1e

    invoke-static {v4, v2, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 65
    new-instance v6, Lcom/isaigu/gymapp/dialog/ManualPresets$Info;

    invoke-direct {v6}, Lcom/isaigu/gymapp/dialog/ManualPresets$Info;-><init>()V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "\u041b\u0435\u043a"

    const-string v2, "Light"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442"

    const-string v2, "Standard"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    const-string v0, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0432\u0435\u043d"

    const-string v2, "Intense"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    move v0, v1

    .line 69
    :goto_79
    array-length v2, v6

    if-ge v0, v2, :cond_9b

    .line 70
    aget-object v7, v6, v0

    if-ne v0, v9, :cond_99

    move v2, v1

    :goto_81
    invoke-static {v4, v7, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 71
    new-instance v7, Lcom/isaigu/gymapp/dialog/ManualPresets$Pick;

    invoke-direct {v7, p1, v0}, Lcom/isaigu/gymapp/dialog/ManualPresets$Pick;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const/16 v7, 0xa

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_99
    move v2, v3

    .line 70
    goto :goto_81

    .line 74
    :cond_9b
    return-object v5
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 163
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
