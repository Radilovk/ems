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

.field private static forControl:Z

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

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->forControl:Z

    return v0
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 23
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->close()V

    return-void
.end method

.method private static close()V
    .registers 1

    .prologue
    .line 177
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 179
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_d

    .line 183
    :cond_9
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 184
    return-void

    .line 180
    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method private static deviceRow(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;ZIII)Landroid/view/View;
    .registers 10

    .prologue
    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x1

    .line 143
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 145
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 146
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 147
    if-eqz p2, :cond_17

    const p5, -0xe4a1e0

    .line 148
    :cond_17
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 147
    invoke-static {p5, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 150
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->safeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_54

    .line 152
    :goto_30
    const/high16 v2, 0x41800000    # 16.0f

    .line 151
    invoke-static {p0, v0, v2, p3, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->safeAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41500000    # 13.0f

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, p4, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->safeAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-object v1

    .line 152
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
    .line 169
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_7

    .line 172
    :goto_6
    return-object v0

    .line 170
    :cond_7
    const-string v0, ""
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_6

    .line 171
    :catch_a
    move-exception v0

    .line 172
    const-string v0, ""

    goto :goto_6
.end method

.method private static safeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

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

.method static show(Landroid/app/Activity;Landroid/widget/EditText;)V
    .registers 12

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->forControl:Z

    .line 42
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 139
    :cond_b
    :goto_b
    return-void

    .line 45
    :cond_c
    sput-object p1, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;

    .line 46
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 49
    :try_start_18
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 51
    :cond_24
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 Bluetooth"

    const-string v1, "Turn Bluetooth on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_2f} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_2f} :catch_79

    goto :goto_b

    .line 65
    :catch_30
    move-exception v0

    .line 66
    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 Bluetooth \u0437\u0430 XEMS"

    const-string v1, "Allow Bluetooth for XEMS"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_b

    .line 54
    :cond_3d
    :try_start_3d
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_8a

    .line 56
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 57
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->safeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v3, "band"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_75

    const-string v3, "xiaomi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_75

    const-string v3, "mi "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 59
    :cond_75
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_78} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_78} :catch_79

    goto :goto_47

    .line 69
    :catch_79
    move-exception v0

    .line 70
    const-string v0, "\u041d\u0435 \u043c\u043e\u0433\u0430 \u0434\u0430 \u043f\u0440\u043e\u0447\u0435\u0442\u0430 \u0441\u0434\u0432\u043e\u0435\u043d\u0438\u0442\u0435 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    const-string v1, "Cannot read paired devices"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_b

    .line 61
    :cond_86
    :try_start_86
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Ljava/lang/SecurityException; {:try_start_86 .. :try_end_89} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_89} :catch_79

    goto :goto_47

    .line 75
    :cond_8a
    const-string v0, "text_primary"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 76
    const-string v0, "text_secondary"

    const v1, -0x4f4f50

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 77
    const-string v0, "bg_elevated"

    const v1, -0xd5d5d6

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 79
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 82
    invoke-virtual {v9, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 83
    const-string v0, "\u0418\u0437\u0431\u0435\u0440\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v1, "Choose your band"

    .line 84
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    const/4 v2, 0x1

    .line 83
    invoke-static {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 85
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 86
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_164

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_164

    .line 89
    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u0434\u0432\u043e\u0435\u043d\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430. \u0421\u0434\u0432\u043e\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 (Mi Fitness \u0438\u043b\u0438 Notify) \u0438 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "No paired devices. Pair the band with the phone (Mi Fitness or Notify) and retry."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v4, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 93
    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :cond_f5
    const-string v0, "\u041e\u0442\u043a\u0430\u0437"

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableBandPicker$CancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBandPicker$CancelListener;-><init>(Lcom/isaigu/gymapp/wearable/WearableBandPicker$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 116
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 120
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 121
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 123
    :try_start_135
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_143

    .line 125
    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_135 .. :try_end_143} :catch_1c4

    .line 129
    :cond_143
    :goto_143
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 131
    :try_start_148
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_b

    .line 133
    const/high16 v1, 0x43d20000    # 420.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 135
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V
    :try_end_15f
    .catch Ljava/lang/Throwable; {:try_start_148 .. :try_end_15f} :catch_161

    goto/16 :goto_b

    .line 137
    :catch_161
    move-exception v0

    goto/16 :goto_b

    .line 95
    :cond_164
    const/4 v0, 0x0

    move v6, v0

    :goto_166
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_185

    .line 96
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->deviceRow(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;ZIII)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xa

    .line 97
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 96
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_166

    .line 99
    :cond_185
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 100
    const-string v0, "\u0414\u0440\u0443\u0433\u0438 \u0441\u0434\u0432\u043e\u0435\u043d\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    const-string v1, "Other paired devices"

    .line 101
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x1

    .line 100
    invoke-static {p0, v0, v1, v4, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 103
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    const/4 v0, 0x0

    move v6, v0

    :goto_1a5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_f5

    .line 105
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->deviceRow(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;ZIII)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 106
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 105
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1a5

    .line 127
    :catch_1c4
    move-exception v0

    goto/16 :goto_143
.end method

.method static showForControl(Landroid/app/Activity;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->show(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->forControl:Z

    .line 38
    return-void
.end method
