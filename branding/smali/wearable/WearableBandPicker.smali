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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/widget/EditText;
    .registers 1

    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 23
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 23
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->close()V

    return-void
.end method

.method private static close()V
    .registers 1

    .line 168
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 170
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 172
    goto :goto_9

    .line 171
    :catchall_8
    move-exception v0

    .line 174
    :cond_9
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 175
    return-void
.end method

.method private static deviceRow(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;ZIII)Landroid/view/View;
    .registers 10

    .line 134
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 137
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 138
    if-eqz p2, :cond_17

    const p5, -0xe4a1e0

    .line 139
    :cond_17
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    .line 138
    invoke-static {p5, p2}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 141
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->safeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p5

    if-lez p5, :cond_31

    goto :goto_39

    .line 143
    :cond_31
    const-string p2, "(\u0431\u0435\u0437 \u0438\u043c\u0435)"

    const-string p5, "(no name)"

    invoke-static {p2, p5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_39
    const/high16 p5, 0x41800000    # 16.0f

    .line 142
    invoke-static {p0, p2, p5, p3, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->safeAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p2

    const/high16 p3, 0x41500000    # 13.0f

    const/4 p5, 0x0

    invoke-static {p0, p2, p3, p4, p5}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    new-instance p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->safeAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-object v0
.end method

.method private static safeAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 2

    .line 160
    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_a

    .line 161
    if-eqz p0, :cond_9

    move-object v0, p0

    :cond_9
    return-object v0

    .line 162
    :catchall_a
    move-exception p0

    .line 163
    return-object v0
.end method

.method private static safeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 2

    .line 151
    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_a

    .line 152
    if-eqz p0, :cond_9

    move-object v0, p0

    :cond_9
    return-object v0

    .line 153
    :catchall_a
    move-exception p0

    .line 154
    return-object v0
.end method

.method static show(Landroid/app/Activity;Landroid/widget/EditText;)V
    .registers 19

    .line 33
    move-object/from16 v7, p0

    if-eqz v7, :cond_1d0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_1d0

    .line 36
    :cond_c
    sput-object p1, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 40
    :try_start_18
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_1aa

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_1aa

    .line 45
    :cond_26
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_67

    .line 47
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 48
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->safeName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 49
    const-string v4, "band"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "xiaomi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "mi "

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5f

    goto :goto_63

    .line 52
    :cond_5f
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 50
    :cond_63
    :goto_63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_66} :catch_1c3
    .catchall {:try_start_18 .. :try_end_66} :catchall_1b6

    .line 54
    :goto_66
    goto :goto_30

    .line 64
    :cond_67
    nop

    .line 66
    const/4 v1, -0x1

    const-string v2, "text_primary"

    invoke-static {v7, v2, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 67
    const v1, -0x4f4f50

    const-string v2, "text_secondary"

    invoke-static {v7, v2, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    .line 68
    const v1, -0xd5d5d6

    const-string v2, "bg_elevated"

    invoke-static {v7, v2, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    .line 70
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v7, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 73
    invoke-virtual {v12, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 74
    nop

    .line 75
    const-string v2, "\u0418\u0437\u0431\u0435\u0440\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v3, "Choose your band"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v7, v2, v1, v9, v13}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 76
    const/16 v14, 0x11

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    const/4 v15, 0x0

    invoke-static {v7, v15}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/16 v6, 0x10

    if-eqz v1, :cond_d6

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 80
    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u0434\u0432\u043e\u0435\u043d\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430. \u0421\u0434\u0432\u043e\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 (Mi Fitness \u0438\u043b\u0438 Notify) \u0438 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "No paired devices. Pair the band with the phone (Mi Fitness or Notify) and retry."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v7, v0, v1, v10, v15}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 84
    const/16 v1, 0xe

    invoke-static {v7, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const/16 v15, 0x10

    goto/16 :goto_143

    .line 86
    :cond_d6
    const/4 v5, 0x0

    :goto_d7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_101

    .line 87
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    move-object/from16 v1, p0

    move v4, v9

    move/from16 v16, v5

    move v5, v10

    const/16 v15, 0x10

    move v6, v11

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->deviceRow(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;ZIII)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xa

    .line 88
    invoke-static {v7, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 87
    invoke-virtual {v12, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    add-int/lit8 v5, v16, 0x1

    const/16 v6, 0x10

    const/4 v15, 0x0

    goto :goto_d7

    .line 90
    :cond_101
    const/16 v15, 0x10

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_143

    .line 91
    nop

    .line 92
    const-string v0, "\u0414\u0440\u0443\u0433\u0438 \u0441\u0434\u0432\u043e\u0435\u043d\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    const-string v1, "Other paired devices"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    .line 91
    invoke-static {v7, v0, v1, v10, v13}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 94
    invoke-static {v7, v15}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    const/4 v0, 0x0

    :goto_120
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_143

    .line 96
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move v4, v9

    move v5, v10

    move v6, v11

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->deviceRow(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;ZIII)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    .line 97
    invoke-static {v7, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 96
    invoke-virtual {v12, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    .line 101
    :cond_143
    :goto_143
    const-string v0, "\u041e\u0442\u043a\u0430\u0437"

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v11, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableBandPicker$CancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBandPicker$CancelListener;-><init>(Lcom/isaigu/gymapp/wearable/WearableBandPicker$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-static {v7, v15}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v0, v12}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 107
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 111
    invoke-virtual {v0, v13}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 112
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v13}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 114
    :try_start_17d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_18b

    .line 116
    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_18b
    .catchall {:try_start_17d .. :try_end_18b} :catchall_18c

    .line 119
    :cond_18b
    goto :goto_18d

    .line 118
    :catchall_18c
    move-exception v0

    .line 120
    :goto_18d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 122
    :try_start_192
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1a7

    .line 124
    const/high16 v1, 0x43d20000    # 420.0f

    invoke-static {v7, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 126
    invoke-virtual {v0, v14}, Landroid/view/Window;->setGravity(I)V
    :try_end_1a7
    .catchall {:try_start_192 .. :try_end_1a7} :catchall_1a8

    .line 129
    :cond_1a7
    goto :goto_1a9

    .line 128
    :catchall_1a8
    move-exception v0

    .line 130
    :goto_1a9
    return-void

    .line 42
    :cond_1aa
    :goto_1aa
    :try_start_1aa
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 Bluetooth"

    const-string v1, "Turn Bluetooth on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V
    :try_end_1b5
    .catch Ljava/lang/SecurityException; {:try_start_1aa .. :try_end_1b5} :catch_1c3
    .catchall {:try_start_1aa .. :try_end_1b5} :catchall_1b6

    .line 43
    return-void

    .line 60
    :catchall_1b6
    move-exception v0

    .line 61
    const-string v0, "\u041d\u0435 \u043c\u043e\u0433\u0430 \u0434\u0430 \u043f\u0440\u043e\u0447\u0435\u0442\u0430 \u0441\u0434\u0432\u043e\u0435\u043d\u0438\u0442\u0435 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    const-string v1, "Cannot read paired devices"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    .line 63
    return-void

    .line 56
    :catch_1c3
    move-exception v0

    .line 57
    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 Bluetooth \u0437\u0430 XEMS"

    const-string v1, "Allow Bluetooth for XEMS"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    .line 59
    return-void

    .line 34
    :cond_1d0
    :goto_1d0
    return-void
.end method
