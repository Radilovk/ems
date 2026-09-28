.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XiaomiWebLogin"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;

.field private done:Z

.field private gaveUp:Z

.field private probes:I

.field private probing:Z

.field private final root:Landroid/view/View;

.field private web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    .line 919
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->root:Landroid/view/View;

    .line 920
    return-void
.end method

.method private close()V
    .registers 2

    .prologue
    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_11

    .line 1063
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1064
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1065
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_20

    .line 1070
    :cond_11
    :goto_11
    :try_start_11
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1d

    .line 1071
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1072
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1d} :catch_1e

    .line 1076
    :cond_1d
    :goto_1d
    return-void

    .line 1074
    :catch_1e
    move-exception v0

    goto :goto_1d

    .line 1067
    :catch_20
    move-exception v0

    goto :goto_11
.end method


# virtual methods
.method cancelled()V
    .registers 2

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    if-eqz v0, :cond_5

    .line 1058
    :goto_4
    return-void

    .line 1056
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    .line 1057
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->close()V

    goto :goto_4
.end method

.method check()V
    .registers 5

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    if-eqz v0, :cond_5

    .line 991
    :cond_4
    :goto_4
    return-void

    .line 977
    :cond_5
    const/4 v0, 0x0

    .line 979
    :try_start_6
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const-string v2, "https://account.xiaomi.com"

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_3f

    move-result-object v0

    .line 982
    :goto_10
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->hasPassToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 983
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probing:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->gaveUp:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_2c

    .line 984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probing:Z

    .line 985
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    const-string v1, "https://account.xiaomi.com/pass/serviceLogin?_json=true&sid=miothealth&_locale=en_US"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 988
    :cond_2c
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->gaveUp:Z

    if-nez v0, :cond_4

    .line 989
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebPoll;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebPoll;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 980
    :catch_3f
    move-exception v1

    goto :goto_10
.end method

.method isProbe(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 994
    if-eqz p1, :cond_c

    const-string v0, "_json=true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method open()V
    .registers 14

    .prologue
    const/4 v12, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 923
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v1, "text_primary"

    invoke-static {v0, v1, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 924
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v2, "bg_screen"

    const v3, -0xededee

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 925
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 926
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 927
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 929
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 930
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 931
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 932
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 933
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 934
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v4, "\u0412\u0445\u043e\u0434 \u0441 Xiaomi \u0430\u043a\u0430\u0443\u043d\u0442"

    const-string v5, "Log in with Xiaomi account"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v3, v4, v5, v0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 936
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 937
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v4, "\u041e\u0442\u043a\u0430\u0437"

    const-string v5, "Cancel"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v6, "bg_elevated"

    const v7, -0xd5d5d6

    .line 938
    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 937
    invoke-static {v3, v4, v5, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 939
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebCancel;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebCancel;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 941
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    .line 945
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 946
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 947
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 948
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 949
    invoke-virtual {v0, v8}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 951
    :try_start_a0
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a6} :catch_105

    .line 954
    :goto_a6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 955
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 957
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const v3, 0x1030009

    invoke-direct {v0, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    .line 958
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 959
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebDismiss;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebDismiss;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 960
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 962
    :try_start_da
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_ed

    .line 963
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V
    :try_end_ed
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_ed} :catch_103

    .line 968
    :cond_ed
    :goto_ed
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    const-string v1, "https://account.xiaomi.com/pass/serviceLogin?sid=miothealth&_locale=en_US"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 969
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebPoll;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebPoll;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 970
    return-void

    .line 966
    :catch_103
    move-exception v0

    goto :goto_ed

    .line 952
    :catch_105
    move-exception v0

    goto :goto_a6
.end method

.method probeResult(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x1

    .line 1011
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    if-eqz v0, :cond_a

    .line 1050
    :goto_9
    return-void

    .line 1014
    :cond_a
    const-string v0, ""

    .line 1016
    :try_start_c
    new-instance v1, Lorg/json/JSONTokener;

    if-nez p1, :cond_12

    const-string p1, ""

    :cond_12
    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 1017
    if-nez v1, :cond_63

    const-string v0, ""
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1d} :catch_f0

    .line 1020
    :goto_1d
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->parseSession(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1021
    aget-object v0, v3, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_68

    .line 1022
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    .line 1026
    :try_start_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_34} :catch_e9

    move-result-object v5

    .line 1027
    :try_start_35
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v1, "https://account.xiaomi.com"

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3e} :catch_ed

    move-result-object v4

    .line 1030
    :goto_3f
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->close()V

    .line 1031
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v1, "\u0412\u0437\u0438\u043c\u0430\u043c \u043a\u043b\u044e\u0447\u0430 \u043e\u0442 Xiaomi\u2026"

    const-string v2, "Fetching the key from Xiaomi\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1032
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->root:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;-><init>(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "xems-xiaomi-login"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_9

    .line 1017
    :cond_63
    :try_start_63
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_66} :catch_f0

    move-result-object v0

    goto :goto_1d

    .line 1035
    :cond_68
    iget v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probes:I

    .line 1036
    iget v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probes:I

    if-ge v0, v5, :cond_76

    .line 1037
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probing:Z

    goto :goto_9

    .line 1040
    :cond_76
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->gaveUp:Z

    .line 1041
    aget-object v0, v3, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_9a

    .line 1042
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v1, "Xiaomi \u0438\u0441\u043a\u0430 \u043f\u043e\u0442\u0432\u044a\u0440\u0436\u0434\u0435\u043d\u0438\u0435. \u0417\u0430\u0432\u044a\u0440\u0448\u0438 \u0433\u043e \u0442\u0443\u043a \u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u043e\u0442\u043d\u043e\u0432\u043e \u201e\u0412\u0445\u043e\u0434 \u0441 Xiaomi \u0430\u043a\u0430\u0443\u043d\u0442\u201c."

    const-string v2, "Xiaomi wants a verification. Finish it here, then tap the Xiaomi login again."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    aget-object v1, v3, v6

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1046
    :cond_9a
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xiaomi \u043d\u0435 \u0432\u044a\u0440\u043d\u0430 \u0441\u0435\u0441\u0438\u044f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ca
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". \u041e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Xiaomi returned no session. Try again."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1048
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->close()V

    goto/16 :goto_9

    .line 1046
    :cond_e6
    const-string v0, ""

    goto :goto_ca

    .line 1028
    :catch_e9
    move-exception v0

    move-object v5, v4

    goto/16 :goto_3f

    :catch_ed
    move-exception v0

    goto/16 :goto_3f

    .line 1018
    :catch_f0
    move-exception v1

    goto/16 :goto_1d
.end method

.method readProbe()V
    .registers 4

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    if-nez v0, :cond_9

    .line 1008
    :cond_8
    :goto_8
    return-void

    .line 1003
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    const-string v1, "(function(){return document.body?document.body.innerText:\'\';})()"

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiProbeResult;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiProbeResult;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_15} :catch_16

    goto :goto_8

    .line 1005
    :catch_16
    move-exception v0

    .line 1006
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probing:Z

    goto :goto_8
.end method
