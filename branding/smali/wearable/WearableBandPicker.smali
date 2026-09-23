.class final Lcom/isaigu/gymapp/wearable/WearableBandPicker;
.super Ljava/lang/Object;
.source "WearableBandPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableBandPicker$CancelListener;,
        Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;
    }
.end annotation


# static fields
.field private static final OPAQUE_DIALOG_BG:I = 0x7f080069

.field private static final PICKER_WIDTH_DP:I = 0x1a4

.field private static dialog:Landroid/support/v7/app/AlertDialog;

.field private static target:Landroid/widget/EditText;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 23
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 23
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->close()V

    return-void
.end method

.method private static close()V
    .registers 1

    .prologue
    .line 168
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 170
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_d

    .line 174
    :cond_9
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 175
    return-void

    .line 171
    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method private static deviceRow(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;ZIII)Landroid/view/View;
    .registers 10

    .prologue
    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x1

    .line 134
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 137
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 138
    if-eqz p2, :cond_17

    const p5, -0xe4a1e0

    .line 139
    :cond_17
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 138
    invoke-static {p5, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 141
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->safeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_54

    .line 143
    :goto_30
    const/high16 v2, 0x41800000    # 16.0f

    .line 142
    invoke-static {p0, v0, v2, p3, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->safeAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41500000    # 13.0f

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, p4, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->safeAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-object v1

    .line 143
    :cond_54
    const-string v0, "(\u0431\u0435\u0437 \u0438\u043c\u0435)"

    const-string v2, "(no name)"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method

.method private static safeAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_7

    .line 163
    :goto_6
    return-object v0

    .line 161
    :cond_7
    const-string v0, ""
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_6

    .line 162
    :catch_a
    move-exception v0

    .line 163
    const-string v0, ""

    goto :goto_6
.end method

.method private static safeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_7

    .line 154
    :goto_6
    return-object v0

    .line 152
    :cond_7
    const-string v0, ""
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_6

    .line 153
    :catch_a
    move-exception v0

    .line 154
    const-string v0, ""

    goto :goto_6
.end method

.method static show(Landroid/app/Activity;Landroid/widget/EditText;)V
    .registers 12

    .prologue
    .line 33
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 130
    :cond_8
    :goto_8
    return-void

    .line 36
    :cond_9
    sput-object p1, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;

    .line 37
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 40
    :try_start_15
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 42
    :cond_21
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 Bluetooth"

    const-string v1, "Turn Bluetooth on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_2c} :catch_76

    goto :goto_8

    .line 56
    :catch_2d
    move-exception v0

    .line 57
    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 Bluetooth \u0437\u0430 XEMS"

    const-string v1, "Allow Bluetooth for XEMS"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_8

    .line 45
    :cond_3a
    :try_start_3a
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_87

    .line 47
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 48
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->safeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v3, "band"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "xiaomi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "mi "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 50
    :cond_72
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Ljava/lang/SecurityException; {:try_start_3a .. :try_end_75} :catch_2d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_75} :catch_76

    goto :goto_44

    .line 60
    :catch_76
    move-exception v0

    .line 61
    const-string v0, "\u041d\u0435 \u043c\u043e\u0433\u0430 \u0434\u0430 \u043f\u0440\u043e\u0447\u0435\u0442\u0430 \u0441\u0434\u0432\u043e\u0435\u043d\u0438\u0442\u0435 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    const-string v1, "Cannot read paired devices"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :cond_83
    :try_start_83
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/lang/SecurityException; {:try_start_83 .. :try_end_86} :catch_2d
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_86} :catch_76

    goto :goto_44

    .line 66
    :cond_87
    const-string v0, "text_primary"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 67
    const-string v0, "text_secondary"

    const v1, -0x4f4f50

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 68
    const-string v0, "bg_elevated"

    const v1, -0xd5d5d6

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 70
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 73
    invoke-virtual {v9, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 74
    const-string v0, "\u0418\u0437\u0431\u0435\u0440\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v1, "Choose your band"

    .line 75
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    const/4 v2, 0x1

    .line 74
    invoke-static {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 76
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_161

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_161

    .line 80
    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u0434\u0432\u043e\u0435\u043d\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430. \u0421\u0434\u0432\u043e\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 (Mi Fitness \u0438\u043b\u0438 Notify) \u0438 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "No paired devices. Pair the band with the phone (Mi Fitness or Notify) and retry."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v4, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 84
    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    :cond_f2
    const-string v0, "\u041e\u0442\u043a\u0430\u0437"

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableBandPicker$CancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBandPicker$CancelListener;-><init>(Lcom/isaigu/gymapp/wearable/WearableBandPicker$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 107
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 111
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 112
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 114
    :try_start_132
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_140

    .line 116
    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_132 .. :try_end_140} :catch_1c1

    .line 120
    :cond_140
    :goto_140
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 122
    :try_start_145
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_8

    .line 124
    const/high16 v1, 0x43d20000    # 420.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 126
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V
    :try_end_15c
    .catch Ljava/lang/Throwable; {:try_start_145 .. :try_end_15c} :catch_15e

    goto/16 :goto_8

    .line 128
    :catch_15e
    move-exception v0

    goto/16 :goto_8

    .line 86
    :cond_161
    const/4 v0, 0x0

    move v6, v0

    :goto_163
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_182

    .line 87
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->deviceRow(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;ZIII)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xa

    .line 88
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 87
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_163

    .line 90
    :cond_182
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f2

    .line 91
    const-string v0, "\u0414\u0440\u0443\u0433\u0438 \u0441\u0434\u0432\u043e\u0435\u043d\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    const-string v1, "Other paired devices"

    .line 92
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x1

    .line 91
    invoke-static {p0, v0, v1, v4, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 94
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    const/4 v0, 0x0

    move v6, v0

    :goto_1a2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_f2

    .line 96
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->deviceRow(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;ZIII)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 97
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 96
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1a2

    .line 118
    :catch_1c1
    move-exception v0

    goto/16 :goto_140
.end method
