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

.field private capLoc:Ljava/lang/String;

.field private capNonce:Ljava/lang/String;

.field private capSs:Ljava/lang/String;

.field private capUser:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;

.field private done:Z

.field private gaveUp:Z

.field private probes:I

.field private probing:Z

.field private final root:Landroid/view/View;

.field private web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capSs:Ljava/lang/String;

    .line 1080
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capNonce:Ljava/lang/String;

    .line 1081
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capUser:Ljava/lang/String;

    .line 1082
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capLoc:Ljava/lang/String;

    .line 1087
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    .line 1088
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->root:Landroid/view/View;

    .line 1089
    return-void
.end method

.method private close()V
    .registers 2

    .prologue
    .line 1264
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_11

    .line 1265
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1266
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_20

    .line 1272
    :cond_11
    :goto_11
    :try_start_11
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1d

    .line 1273
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1d} :catch_1e

    .line 1278
    :cond_1d
    :goto_1d
    return-void

    .line 1276
    :catch_1e
    move-exception v0

    goto :goto_1d

    .line 1269
    :catch_20
    move-exception v0

    goto :goto_11
.end method


# virtual methods
.method cancelled()V
    .registers 2

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    if-eqz v0, :cond_5

    .line 1260
    :goto_4
    return-void

    .line 1258
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    .line 1259
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->close()V

    goto :goto_4
.end method

.method captured(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1165
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    if-nez v0, :cond_a

    if-nez p1, :cond_b

    .line 1181
    :cond_a
    :goto_a
    return-void

    .line 1168
    :cond_b
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->parseSession(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1169
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 1170
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capSs:Ljava/lang/String;

    .line 1171
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_27

    .line 1172
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capNonce:Ljava/lang/String;

    .line 1174
    :cond_27
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_33

    .line 1175
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capUser:Ljava/lang/String;

    .line 1177
    :cond_33
    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 1178
    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capLoc:Ljava/lang/String;

    goto :goto_a
.end method

.method check()V
    .registers 5

    .prologue
    .line 1144
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    if-eqz v0, :cond_5

    .line 1161
    :cond_4
    :goto_4
    return-void

    .line 1147
    :cond_5
    const/4 v0, 0x0

    .line 1149
    :try_start_6
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const-string v2, "https://account.xiaomi.com"

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_3f

    move-result-object v0

    .line 1152
    :goto_10
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->hasPassToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1153
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probing:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->gaveUp:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_2c

    .line 1154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probing:Z

    .line 1155
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    const-string v1, "https://account.xiaomi.com/pass/serviceLogin?_json=true&sid=miothealth&_locale=en_US"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1158
    :cond_2c
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->gaveUp:Z

    if-nez v0, :cond_4

    .line 1159
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebPoll;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebPoll;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1150
    :catch_3f
    move-exception v1

    goto :goto_10
.end method

.method isProbe(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1184
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

    .line 1092
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v1, "text_primary"

    invoke-static {v0, v1, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1093
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v2, "bg_screen"

    const v3, -0xededee

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1094
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1095
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1096
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1098
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1099
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1100
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1101
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 1102
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1103
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v4, "\u0412\u0445\u043e\u0434 \u0441 Xiaomi \u0430\u043a\u0430\u0443\u043d\u0442"

    const-string v5, "Log in with Xiaomi account"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v3, v4, v5, v0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1105
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1106
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v4, "\u041e\u0442\u043a\u0430\u0437"

    const-string v5, "Cancel"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v6, "bg_elevated"

    const v7, -0xd5d5d6

    .line 1107
    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 1106
    invoke-static {v3, v4, v5, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 1108
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebCancel;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebCancel;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1110
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1113
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    .line 1114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1115
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1116
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1117
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1118
    invoke-virtual {v0, v8}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 1120
    :try_start_a0
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a6} :catch_111

    .line 1123
    :goto_a6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiJsBridge;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiJsBridge;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    const-string v3, "XemsX"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1124
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1125
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1127
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const v3, 0x1030009

    invoke-direct {v0, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    .line 1128
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1129
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebDismiss;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebDismiss;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1130
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1132
    :try_start_e6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_f9

    .line 1133
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_f9} :catch_10f

    .line 1138
    :cond_f9
    :goto_f9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    const-string v1, "https://account.xiaomi.com/pass/serviceLogin?sid=miothealth&_locale=en_US"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1139
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebPoll;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebPoll;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1140
    return-void

    .line 1136
    :catch_10f
    move-exception v0

    goto :goto_f9

    .line 1121
    :catch_111
    move-exception v0

    goto :goto_a6
.end method

.method probeResult(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 1201
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    if-eqz v0, :cond_a

    .line 1252
    :goto_9
    return-void

    .line 1204
    :cond_a
    const-string v0, ""

    .line 1206
    :try_start_c
    new-instance v1, Lorg/json/JSONTokener;

    if-nez p1, :cond_12

    const-string p1, ""

    :cond_12
    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 1207
    if-nez v1, :cond_a6

    const-string v0, ""
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1d} :catch_132

    .line 1210
    :goto_1d
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;->parseSession(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1211
    aget-object v0, v3, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capSs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4d

    .line 1212
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capSs:Ljava/lang/String;

    aput-object v0, v3, v5

    .line 1213
    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_41

    .line 1214
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capNonce:Ljava/lang/String;

    aput-object v0, v3, v2

    .line 1216
    :cond_41
    aget-object v0, v3, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4d

    .line 1217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capUser:Ljava/lang/String;

    aput-object v0, v3, v6

    .line 1220
    :cond_4d
    aget-object v0, v3, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capLoc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_61

    .line 1221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->capLoc:Ljava/lang/String;

    aput-object v0, v3, v4

    .line 1223
    :cond_61
    aget-object v0, v3, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ac

    .line 1224
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    .line 1225
    const/4 v5, 0x0

    .line 1226
    const/4 v4, 0x0

    .line 1228
    :try_start_6d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    .line 1229
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v1, "https://account.xiaomi.com"

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_80} :catch_12f

    move-result-object v4

    .line 1232
    :goto_81
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->close()V

    .line 1233
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v1, "\u0412\u0437\u0438\u043c\u0430\u043c \u043a\u043b\u044e\u0447\u0430 \u043e\u0442 Xiaomi\u2026"

    const-string v2, "Fetching the key from Xiaomi\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1234
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->root:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;-><init>(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "xems-xiaomi-login"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_9

    .line 1207
    :cond_a6
    :try_start_a6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a9} :catch_132

    move-result-object v0

    goto/16 :goto_1d

    .line 1237
    :cond_ac
    iget v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probes:I

    .line 1238
    iget v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probes:I

    if-ge v0, v4, :cond_ba

    .line 1239
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probing:Z

    goto/16 :goto_9

    .line 1242
    :cond_ba
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->gaveUp:Z

    .line 1243
    aget-object v0, v3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_de

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_de

    .line 1244
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    const-string v1, "Xiaomi \u0438\u0441\u043a\u0430 \u043f\u043e\u0442\u0432\u044a\u0440\u0436\u0434\u0435\u043d\u0438\u0435. \u0417\u0430\u0432\u044a\u0440\u0448\u0438 \u0433\u043e \u0442\u0443\u043a \u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u043e\u0442\u043d\u043e\u0432\u043e \u201e\u0412\u0445\u043e\u0434 \u0441 Xiaomi \u0430\u043a\u0430\u0443\u043d\u0442\u201c."

    const-string v2, "Xiaomi wants a verification. Finish it here, then tap the Xiaomi login again."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1246
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    aget-object v1, v3, v7

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1248
    :cond_de
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xiaomi \u043d\u0435 \u0432\u044a\u0440\u043d\u0430 \u0441\u0435\u0441\u0438\u044f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_110
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

    .line 1250
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->close()V

    goto/16 :goto_9

    .line 1248
    :cond_12c
    const-string v0, ""

    goto :goto_110

    .line 1230
    :catch_12f
    move-exception v0

    goto/16 :goto_81

    .line 1208
    :catch_132
    move-exception v1

    goto/16 :goto_1d
.end method

.method readProbe()V
    .registers 4

    .prologue
    .line 1189
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->done:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->web:Landroid/webkit/WebView;

    if-nez v0, :cond_9

    .line 1198
    :cond_8
    :goto_8
    return-void

    .line 1193
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

    .line 1195
    :catch_16
    move-exception v0

    .line 1196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->probing:Z

    goto :goto_8
.end method
