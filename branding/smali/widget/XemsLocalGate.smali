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
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->autoLogin(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 27
    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsLocalGate;->licenceRevealed:Z

    return p0
.end method

.method static applyLicenceRule(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 156
    const-string v1, "xems_license_section"

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 157
    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->key()Ljava/lang/String;

    move-result-object v1

    .line 161
    sget-boolean v3, Lcom/isaigu/gymapp/widget/XemsLocalGate;->licenceRevealed:Z

    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    .line 162
    :goto_1
    if-eqz v1, :cond_2

    const/16 v0, 0x8

    .line 163
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 164
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v1, v0

    .line 161
    goto :goto_1
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 114
    if-eqz p0, :cond_0

    :try_start_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 118
    const-string v0, "setlanguage"

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->findLabel(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_2

    .line 120
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalGate$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate$2;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->onTaps(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 129
    :cond_2
    const-string v0, "setdarktheme"

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->findLabel(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;

    invoke-direct {v1, p1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;-><init>(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->onTaps(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 141
    :cond_3
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->applyLicenceRule(Landroid/view/ViewGroup;)V

    .line 143
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalGate$4;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate$4;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v1, "xems_gate"

    const-string v2, "attach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static autoLogin(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 74
    :try_start_0
    const-string v0, "userName"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 75
    const-string v1, "password"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 76
    const-string v2, "login"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 77
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v3, "radilov.k@gmail.com"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const-string v0, "a123456"

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const-string v0, "rememberPassword"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->check(Ljava/lang/Object;)V

    .line 84
    const-string v0, "autoLogin"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->check(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "xems_gate"

    const-string v2, "autoLogin"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static check(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 92
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    check-cast p0, Landroid/widget/CompoundButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 95
    :cond_0
    return-void
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 240
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 241
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static findLabel(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->findText(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0
.end method

.method private static findText(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 179
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 180
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    instance-of v0, v1, Landroid/widget/EditText;

    if-nez v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    .line 181
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    check-cast v1, Landroid/widget/TextView;

    .line 191
    :cond_0
    :goto_1
    return-object v1

    .line 184
    :cond_1
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 185
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->findText(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 186
    if-nez v1, :cond_0

    .line 178
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 191
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static norm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    if-nez p0, :cond_1

    const-string v0, ""

    .line 196
    :goto_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 195
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static onLoginView(Ljava/lang/Object;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 53
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "show_login_once"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_login_once"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "xems_gate"

    const-string v2, "onLoginView"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    :cond_2
    :try_start_1
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalGate$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static onTaps(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 204
    new-array v0, v1, [I

    aput v4, v0, v4

    .line 205
    new-array v1, v1, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v4

    .line 206
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;

    invoke-direct {v2, v0, v1, p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;-><init>([I[JLjava/lang/Runnable;)V

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalGate$6;

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalGate$6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    :goto_0
    return-void

    .line 229
    :cond_1
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalGate$7;

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalGate$7;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_local_store"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static restartToLogin(Landroid/app/Activity;)V
    .locals 3

    .prologue
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
    if-eqz v0, :cond_0

    .line 102
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 106
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 107
    return-void
.end method

.method public static wantLoginScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "show_login_once"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
