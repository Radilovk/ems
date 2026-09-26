.class public final Lcom/isaigu/gymapp/widget/XemsLocalGate;
.super Ljava/lang/Object;
.source "XemsLocalGate.java"


# static fields
.field private static final KEY_LOGIN_SCREEN:Ljava/lang/String; = "show_login_once"

.field private static final LICENSE_TAG:Ljava/lang/String; = "xems_license_section"

.field static final LOGIN_PASSWORD:Ljava/lang/String; = "a123456"

.field static final LOGIN_USER:Ljava/lang/String; = "radilov.k@gmail.com"

.field private static final PREFS:Ljava/lang/String; = "xems_local_store"

.field private static final TAPS:I = 0x7

.field private static final TAP_WINDOW_MS:J = 0xbb8L

.field private static volatile licenceRevealed:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)V
    .registers 1

    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->autoLogin(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 27
    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsLocalGate;->licenceRevealed:Z

    return p0
.end method

.method static applyLicenceRule(Landroid/view/ViewGroup;)V
    .registers 4

    .line 156
    const-string v0, "xems_license_section"

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    .line 157
    if-nez p0, :cond_9

    .line 158
    return-void

    .line 160
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->key()Ljava/lang/String;

    move-result-object v0

    .line 161
    sget-boolean v1, Lcom/isaigu/gymapp/widget/XemsLocalGate;->licenceRevealed:Z

    const/4 v2, 0x0

    if-nez v1, :cond_20

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 162
    :goto_21
    if-eqz v0, :cond_25

    const/16 v2, 0x8

    .line 163
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2e

    .line 164
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_2e
    return-void
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .line 114
    if-eqz p0, :cond_42

    :try_start_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    goto :goto_42

    .line 117
    :cond_7
    check-cast p1, Landroid/view/ViewGroup;

    .line 118
    const-string v0, "setlanguage"

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->findLabel(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_19

    .line 120
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalGate$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate$2;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->onTaps(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 129
    :cond_19
    const-string v0, "setdarktheme"

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->findLabel(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_29

    .line 131
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;

    invoke-direct {v1, p1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;-><init>(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->onTaps(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 141
    :cond_29
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->applyLicenceRule(Landroid/view/ViewGroup;)V

    .line 143
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalGate$4;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate$4;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_39

    .line 151
    goto :goto_41

    .line 149
    :catchall_39
    move-exception p0

    .line 150
    const-string p1, "xems_gate"

    const-string v0, "attach"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :goto_41
    return-void

    .line 115
    :cond_42
    :goto_42
    return-void
.end method

.method private static autoLogin(Ljava/lang/Object;)V
    .registers 6

    .line 74
    const-string v0, "autoLogin"

    :try_start_2
    const-string v1, "userName"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 75
    const-string v2, "password"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 76
    const-string v3, "login"

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 77
    if-eqz v1, :cond_3f

    if-eqz v2, :cond_3f

    if-nez v3, :cond_21

    goto :goto_3f

    .line 80
    :cond_21
    const-string v4, "radilov.k@gmail.com"

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const-string v1, "a123456"

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const-string v1, "rememberPassword"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->check(Ljava/lang/Object;)V

    .line 84
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->check(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v3}, Landroid/view/View;->performClick()Z
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_40

    .line 88
    goto :goto_46

    .line 78
    :cond_3f
    :goto_3f
    return-void

    .line 86
    :catchall_40
    move-exception p0

    .line 87
    const-string v1, "xems_gate"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_46
    return-void
.end method

.method private static check(Ljava/lang/Object;)V
    .registers 2

    .line 92
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_10

    check-cast p0, Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_10

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 95
    :cond_10
    return-void
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 240
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 241
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static findLabel(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 171
    if-nez p2, :cond_12

    .line 172
    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_12
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->findText(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private static findText(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .line 178
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 179
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 180
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_29

    instance-of v2, v1, Landroid/widget/EditText;

    if-nez v2, :cond_29

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 181
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 182
    return-object v2

    .line 184
    :cond_29
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_36

    .line 185
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->findText(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_36

    .line 187
    return-object v1

    .line 178
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method private static norm(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 195
    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 196
    :goto_9
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_20
    return-object p0
.end method

.method public static onLoginView(Ljava/lang/Object;Landroid/view/View;)V
    .registers 6

    .line 53
    const-string v0, "show_login_once"

    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 54
    if-eqz p0, :cond_31

    if-eqz p1, :cond_31

    if-nez v1, :cond_d

    goto :goto_31

    .line 57
    :cond_d
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 58
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    return-void

    .line 61
    :cond_28
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalGate$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_32

    .line 69
    goto :goto_3a

    .line 55
    :cond_31
    :goto_31
    return-void

    .line 67
    :catchall_32
    move-exception p0

    .line 68
    const-string p1, "xems_gate"

    const-string v0, "onLoginView"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :goto_3a
    return-void
.end method

.method private static onTaps(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 7

    .line 204
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 205
    new-array v0, v0, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v2

    .line 206
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;

    invoke-direct {v2, v1, v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;-><init>([I[JLjava/lang/Runnable;)V

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-nez p1, :cond_27

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_27

    .line 229
    :cond_1e
    new-instance p1, Lcom/isaigu/gymapp/widget/XemsLocalGate$7;

    invoke-direct {p1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalGate$7;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2f

    .line 219
    :cond_27
    :goto_27
    new-instance p1, Lcom/isaigu/gymapp/widget/XemsLocalGate$6;

    invoke-direct {p1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalGate$6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    :goto_2f
    return-void
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "xems_local_store"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static restartToLogin(Landroid/app/Activity;)V
    .registers 4

    .line 99
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_login_once"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_29

    .line 102
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_29
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 106
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 107
    return-void
.end method

.method public static wantLoginScreen()Z
    .registers 3

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "show_login_once"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method
