.class final Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;
.super Ljava/lang/Object;
.source "TimerPresetUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;,
        Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$PresetSpinnerListener;,
        Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetListener;,
        Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetListener;,
        Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;,
        Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameOkListener;,
        Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;,
        Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;,
        Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;
    }
.end annotation


# static fields
.field private static final SPINNER_ITEM_LAYOUT_ID:I = 0x7f0b007b

.field private static final STR_ERROR:I = 0x7f0d0128

.field private static final STR_PRESET_DELETE:I = 0x7f0d015a

.field private static final STR_PRESET_DELETED:I = 0x7f0d015e

.field private static final STR_PRESET_DELETE_CONFIRM:I = 0x7f0d015f

.field private static final STR_PRESET_EMPTY_NAME:I = 0x7f0d0160

.field private static final STR_PRESET_NAME:I = 0x7f0d015b

.field private static final STR_PRESET_NAME_HINT:I = 0x7f0d015c

.field private static final STR_PRESET_PICK:I = 0x7f0d0157

.field private static final STR_PRESET_RENAME:I = 0x7f0d0159

.field private static final STR_PRESET_SAVE:I = 0x7f0d0158

.field private static final STR_PRESET_SAVED:I = 0x7f0d015d

.field private static ignorePresetSpinner:Z

.field private static presetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/TimerPreset;",
            ">;"
        }
    .end annotation
.end field

.field private static selectedPresetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->presetList:Ljava/util/ArrayList;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->selectedPresetId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 15
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->ignorePresetSpinner:Z

    return v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 15
    sput-object p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->selectedPresetId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .registers 1

    .line 15
    sget-object v0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->presetList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/dialog/TimerPreset;
    .registers 1

    .line 15
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->findSelectedPreset()Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/Activity;ILjava/lang/String;Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;)V
    .registers 4

    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->promptName(Landroid/app/Activity;ILjava/lang/String;Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;)V

    return-void
.end method

.method static bind(Landroid/app/Activity;Landroid/widget/Spinner;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 7

    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->refreshPresetSpinner(Landroid/app/Activity;Landroid/widget/Spinner;)V

    .line 43
    if-eqz p1, :cond_d

    .line 44
    new-instance v0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$PresetSpinnerListener;

    invoke-direct {v0, p5}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$PresetSpinnerListener;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 46
    :cond_d
    if-eqz p2, :cond_17

    .line 47
    new-instance v0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetListener;

    invoke-direct {v0, p0, p1, p5}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetListener;-><init>(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :cond_17
    if-eqz p3, :cond_21

    .line 50
    new-instance p2, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetListener;

    invoke-direct {p2, p0, p1, p5}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetListener;-><init>(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/lang/Runnable;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_21
    if-eqz p4, :cond_2b

    .line 53
    new-instance p2, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;

    invoke-direct {p2, p0, p1, p5}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;-><init>(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/lang/Runnable;)V

    invoke-virtual {p4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_2b
    return-void
.end method

.method private static findSelectedPreset()Lcom/isaigu/gymapp/dialog/TimerPreset;
    .registers 5

    .line 85
    sget-object v0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->selectedPresetId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2e

    .line 88
    :cond_c
    const/4 v0, 0x0

    :goto_d
    sget-object v2, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->presetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 89
    sget-object v2, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->presetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/TimerPreset;

    .line 90
    if-eqz v2, :cond_2a

    sget-object v3, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->selectedPresetId:Ljava/lang/String;

    iget-object v4, v2, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 91
    return-object v2

    .line 88
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 94
    :cond_2d
    return-object v1

    .line 86
    :cond_2e
    :goto_2e
    return-object v1
.end method

.method private static promptName(Landroid/app/Activity;ILjava/lang/String;Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;)V
    .registers 6

    .line 102
    if-nez p0, :cond_3

    .line 103
    return-void

    .line 105
    :cond_3
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 106
    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 108
    if-eqz p2, :cond_1d

    .line 109
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 112
    :cond_1d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float p2, p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 113
    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 114
    new-instance p2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0d015c

    .line 116
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 117
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    new-instance p2, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameOkListener;

    invoke-direct {p2, v0, p3}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameOkListener;-><init>(Landroid/widget/EditText;Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;)V

    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 p2, 0x0

    .line 121
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 123
    return-void
.end method

.method static refreshPresetSpinner(Landroid/app/Activity;Landroid/widget/Spinner;)V
    .registers 7

    .line 58
    if-eqz p0, :cond_77

    if-nez p1, :cond_6

    goto/16 :goto_77

    .line 61
    :cond_6
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->loadAll(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->presetList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const v1, 0x7f0d0157

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1d
    sget-object v3, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->presetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 65
    sget-object v3, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->presetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/dialog/TimerPreset;

    .line 66
    if-eqz v3, :cond_36

    iget-object v4, v3, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    if-eqz v4, :cond_36

    iget-object v3, v3, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    goto :goto_38

    :cond_36
    const-string v3, "?"

    :goto_38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 68
    :cond_3e
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0b007b

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 70
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 71
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->ignorePresetSpinner:Z

    .line 72
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 73
    nop

    .line 74
    const/4 v0, 0x0

    :goto_51
    sget-object v2, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->presetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_70

    .line 75
    sget-object v2, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->selectedPresetId:Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->presetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/dialog/TimerPreset;

    iget-object v3, v3, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 76
    add-int/2addr v0, p0

    .line 77
    goto :goto_71

    .line 74
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_70
    const/4 v0, 0x0

    .line 80
    :goto_71
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 81
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->ignorePresetSpinner:Z

    .line 82
    return-void

    .line 59
    :cond_77
    :goto_77
    return-void
.end method
