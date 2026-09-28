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

.field private final root:Landroid/view/View;

.field private web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    .line 900
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->root:Landroid/view/View;

    .line 901
    return-void
.end method

.method private close()V
    .registers 2

    .prologue
    .line 988
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_11

    .line 989
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 990
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_20

    .line 996
    :cond_11
    :goto_11
    :try_start_11
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1d

    .line 997
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 998
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1d} :catch_1e

    .line 1002
    :cond_1d
    :goto_1d
    return-void

    .line 1000
    :catch_1e
    move-exception v0

    goto :goto_1d

    .line 993
    :catch_20
    move-exception v0

    goto :goto_11
.end method


# virtual methods
.method cancelled()V
    .registers 2

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    if-eqz v0, :cond_5

    .line 984
    :goto_4
    return-void

    .line 982
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    .line 983
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->close()V

    goto :goto_4
.end method

.method check()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 955
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    if-eqz v0, :cond_6

    .line 976
    :goto_5
    return-void

    .line 960
    :cond_6
    :try_start_6
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v2, "https://account.xiaomi.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_47

    move-result-object v0

    .line 963
    :goto_10
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->hasPassToken(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 966
    :try_start_16
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1f} :catch_59

    move-result-object v1

    .line 969
    :goto_20
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    .line 970
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->close()V

    .line 971
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v3, "\u0412\u0437\u0438\u043c\u0430\u043c \u043a\u043b\u044e\u0447\u0430 \u043e\u0442 Xiaomi\u2026"

    const-string v4, "Fetching the key from Xiaomi\u2026"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 972
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->root:Landroid/view/View;

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xems-xiaomi-login"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_5

    .line 961
    :catch_47
    move-exception v0

    move-object v0, v1

    goto :goto_10

    .line 974
    :cond_4a
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebPoll;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebPoll;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 967
    :catch_59
    move-exception v2

    goto :goto_20
.end method

.method open()V
    .registers 14

    .prologue
    const/4 v12, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 904
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v1, "text_primary"

    invoke-static {v0, v1, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 905
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v2, "bg_screen"

    const v3, -0xededee

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 906
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 907
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 908
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 910
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 911
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 912
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 913
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 914
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 915
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v4, "\u0412\u0445\u043e\u0434 \u0441 Xiaomi \u0430\u043a\u0430\u0443\u043d\u0442"

    const-string v5, "Log in with Xiaomi account"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v3, v4, v5, v0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 917
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v4, "\u041e\u0442\u043a\u0430\u0437"

    const-string v5, "Cancel"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v6, "bg_elevated"

    const v7, -0xd5d5d6

    .line 919
    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 918
    invoke-static {v3, v4, v5, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 920
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebCancel;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebCancel;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 922
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    .line 926
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 927
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 928
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 929
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 930
    invoke-virtual {v0, v8}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 932
    :try_start_a0
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a6} :catch_105

    .line 935
    :goto_a6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 936
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 938
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const v3, 0x1030009

    invoke-direct {v0, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    .line 939
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 940
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebDismiss;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebDismiss;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 941
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 943
    :try_start_da
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_ed

    .line 944
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V
    :try_end_ed
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_ed} :catch_103

    .line 949
    :cond_ed
    :goto_ed
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    const-string v1, "https://account.xiaomi.com/pass/serviceLogin?sid=miothealth&_locale=en_US"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 950
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebPoll;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebPoll;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 951
    return-void

    .line 947
    :catch_103
    move-exception v0

    goto :goto_ed

    .line 933
    :catch_105
    move-exception v0

    goto :goto_a6
.end method
