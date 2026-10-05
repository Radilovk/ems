.class public final Lcom/isaigu/gymapp/widget/XemsLocalGate;
.super Ljava/lang/Object;
.source "XemsLocalGate.java"


# static fields
.field static final FILE_LOGIN_USER:Ljava/lang/String; = "file_name_login_user"

.field private static final LICENSE_TAG:Ljava/lang/String; = "xems_license_section"

.field static final LOCAL_PASSWORD:Ljava/lang/String; = "local"

.field static final LOCAL_USER:Ljava/lang/String; = "xems"

.field private static final PREFS:Ljava/lang/String; = "xems_local_store"

.field static final ROLE_COACH:Ljava/lang/String; = "ROLE_COACH"

.field private static final TAPS:I = 0x7

.field private static final TAP_WINDOW_MS:J = 0xbb8L

.field private static volatile licenceRevealed:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .prologue
    .line 29
    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsLocalGate;->licenceRevealed:Z

    return p0
.end method

.method static applyLicenceRule(Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 134
    const-string v1, "xems_license_section"

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 135
    if-nez v2, :cond_a

    .line 144
    :cond_9
    :goto_9
    return-void

    .line 138
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->key()Ljava/lang/String;

    move-result-object v1

    .line 139
    sget-boolean v3, Lcom/isaigu/gymapp/widget/XemsLocalGate;->licenceRevealed:Z

    if-nez v3, :cond_2d

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2d

    const/4 v1, 0x1

    .line 140
    :goto_1f
    if-eqz v1, :cond_23

    const/16 v0, 0x8

    .line 141
    :cond_23
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_9

    .line 142
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_2d
    move v1, v0

    .line 139
    goto :goto_1f
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 103
    if-eqz p0, :cond_6

    :try_start_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    .line 130
    :cond_6
    :goto_6
    return-void

    .line 106
    :cond_7
    check-cast p1, Landroid/view/ViewGroup;

    .line 107
    const-string v0, "setdarktheme"

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->findLabel(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_19

    .line 109
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalGate$1;

    invoke-direct {v1, p1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalGate$1;-><init>(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->onTaps(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 119
    :cond_19
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->applyLicenceRule(Landroid/view/ViewGroup;)V

    .line 121
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalGate$2;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate$2;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_28} :catch_29

    goto :goto_6

    .line 127
    :catch_29
    move-exception v0

    .line 128
    const-string v1, "xems_gate"

    const-string v2, "attach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private static findLabel(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 149
    if-nez v0, :cond_12

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->findText(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_11
.end method

.method private static findText(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .prologue
    .line 156
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3c

    .line 157
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 158
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    instance-of v0, v1, Landroid/widget/EditText;

    if-nez v0, :cond_2c

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    .line 159
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 160
    check-cast v1, Landroid/widget/TextView;

    .line 169
    :cond_2b
    :goto_2b
    return-object v1

    .line 162
    :cond_2c
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_38

    .line 163
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->findText(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 164
    if-nez v1, :cond_2b

    .line 156
    :cond_38
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 169
    :cond_3c
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 95
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static localSession()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 55
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    .line 56
    if-nez v3, :cond_9

    .line 90
    :goto_8
    return v0

    .line 60
    :cond_9
    iget-boolean v2, v3, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    if-eqz v2, :cond_15

    iget-object v2, v3, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 61
    :cond_15
    const-string v2, "xems"

    iput-object v2, v3, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    .line 62
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    .line 63
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/isaigu/gymapp/bean/UserData;->rememberPassword:Z

    .line 64
    const-string v2, "ROLE_COACH"

    iput-object v2, v3, Lcom/isaigu/gymapp/bean/UserData;->roleName:Ljava/lang/String;

    move v2, v1

    .line 67
    :goto_24
    const-string v4, "local"

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 68
    const-string v2, "local"

    iput-object v2, v3, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    move v2, v1

    .line 71
    :cond_33
    iget-object v4, v3, Lcom/isaigu/gymapp/bean/UserData;->roleName:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 72
    const-string v2, "ROLE_COACH"

    iput-object v2, v3, Lcom/isaigu/gymapp/bean/UserData;->roleName:Ljava/lang/String;

    move v2, v1

    .line 75
    :cond_40
    if-eqz v2, :cond_45

    .line 76
    invoke-static {v3}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 78
    :cond_45
    const-string v2, "file_name_login_user"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6d

    .line 79
    new-instance v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    .line 80
    const-wide/16 v4, 0x1

    iput-wide v4, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 81
    const-string v3, "XEMS"

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 82
    const-string v3, "XEMS"

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 83
    const-string v3, "xems"

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->username:Ljava/lang/String;

    .line 84
    const-string v3, "ROLE_COACH"

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->roleName:Ljava/lang/String;

    .line 85
    const-string v3, "file_name_login_user"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6d} :catch_6f

    :cond_6d
    move v0, v1

    .line 87
    goto :goto_8

    .line 88
    :catch_6f
    move-exception v1

    .line 89
    const-string v2, "xems_gate"

    const-string v3, "localSession"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_78
    move v2, v0

    goto :goto_24
.end method

.method private static norm(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 173
    if-nez p0, :cond_1c

    const-string v0, ""

    .line 174
    :goto_4
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    return-object v0

    .line 173
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static onTaps(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 182
    new-array v0, v1, [I

    aput v4, v0, v4

    .line 183
    new-array v1, v1, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v4

    .line 184
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;

    invoke-direct {v2, v0, v1, p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;-><init>([I[JLjava/lang/Runnable;)V

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 197
    :cond_1d
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalGate$4;

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalGate$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    :goto_25
    return-void

    .line 207
    :cond_26
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_25
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_local_store"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
