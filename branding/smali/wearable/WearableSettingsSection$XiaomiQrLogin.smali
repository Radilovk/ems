.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XiaomiQrLogin"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field closed:Z

.field dialog:Landroid/app/Dialog;

.field image:Landroid/widget/ImageView;

.field final root:Landroid/view/View;

.field status:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1335
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    .line 1336
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->root:Landroid/view/View;

    .line 1337
    return-void
.end method


# virtual methods
.method close()V
    .registers 2

    .prologue
    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->closed:Z

    .line 1384
    :try_start_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    .line 1385
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->dialog:Landroid/app/Dialog;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_10

    .line 1390
    :cond_f
    :goto_f
    return-void

    .line 1388
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method open()V
    .registers 12

    .prologue
    const/high16 v10, 0x43960000    # 300.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1340
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    const-string v1, "text_primary"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1341
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    const-string v2, "text_secondary"

    const v3, -0x555556

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1342
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    const-string v3, "bg_screen"

    const v4, -0xededee

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1343
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1344
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1345
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1346
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1347
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 1348
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1350
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    const-string v4, "\u0412\u0445\u043e\u0434 \u0441 Xiaomi \u2014 \u0441\u043a\u0430\u043d\u0438\u0440\u0430\u0439 QR \u043a\u043e\u0434\u0430"

    const-string v5, "Xiaomi login \u2014 scan the QR code"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v2, v4, v5, v0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1352
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1353
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    const-string v4, "\u041d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 \u043e\u0442\u0432\u043e\u0440\u0438 Xiaomi Home (Mi Home) \u0438\u043b\u0438 Mi Fitness, \u0438\u0437\u0431\u0435\u0440\u0438 \u0441\u043a\u0430\u043d\u0438\u0440\u0430\u043d\u0435 (+ / \u0441\u043a\u0435\u043d\u0435\u0440), \u043d\u0430\u0441\u043e\u0447\u0438 \u043a\u044a\u043c \u043a\u043e\u0434\u0430 \u0438 \u043f\u043e\u0442\u0432\u044a\u0440\u0434\u0438 \u0432\u0445\u043e\u0434\u0430."

    const-string v5, "On the phone open Xiaomi Home (Mi Home) or Mi Fitness, tap scan, point at the code and confirm."

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41500000    # 13.0f

    invoke-static {v2, v4, v5, v1, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1358
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v6, v2, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1359
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1361
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->image:Landroid/widget/ImageView;

    .line 1362
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->image:Landroid/widget/ImageView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1363
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->image:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    invoke-static {v4, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1365
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    const-string v2, "\u0417\u0430\u0440\u0435\u0436\u0434\u0430\u043c \u043a\u043e\u0434\u0430\u2026"

    const-string v4, "Loading the code\u2026"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v1, v2, v4, v0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->status:Landroid/widget/TextView;

    .line 1366
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->status:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v6, v2, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1367
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->status:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1369
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    const-string v2, "\u041e\u0442\u043a\u0430\u0437"

    const-string v4, "Cancel"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    const-string v5, "bg_elevated"

    const v6, -0xd5d5d6

    .line 1370
    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 1369
    invoke-static {v1, v2, v4, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 1371
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrCancel;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrCancel;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1372
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1374
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->a:Landroid/app/Activity;

    const v2, 0x1030009

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->dialog:Landroid/app/Dialog;

    .line 1375
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1376
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrCancel;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrCancel;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1377
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1378
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrTask;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrTask;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;)V

    const-string v2, "xems-xiaomi-qr"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1379
    return-void
.end method
