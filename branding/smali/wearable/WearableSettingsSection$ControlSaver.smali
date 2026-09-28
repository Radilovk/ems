.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ControlSaver"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->a:Landroid/app/Activity;

    .line 396
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->root:Landroid/view/View;

    .line 397
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    .prologue
    .line 408
    :try_start_0
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlMacView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$400()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_59

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlMacView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$400()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 409
    :goto_17
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlKeyView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$600()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_5d

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlKeyView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$600()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_2d
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_60

    .line 411
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->savedKeyFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    if-eqz v2, :cond_60

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_60

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlKeyView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$600()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 413
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlKeyView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$600()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :cond_58
    :goto_58
    return-void

    .line 408
    :cond_59
    const-string v0, ""

    move-object v1, v0

    goto :goto_17

    .line 409
    :cond_5d
    const-string v0, ""

    goto :goto_2d

    .line 417
    :cond_60
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->hasControlBand(Landroid/content/Context;)Z

    move-result v2

    .line 418
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 419
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getControlMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8e

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getControlKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 423
    :cond_8e
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->a:Landroid/app/Activity;

    invoke-static {v3, v1, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setControlBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->a:Landroid/app/Activity;

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v0, v4}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_9e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onControlBandChanged(Landroid/content/Context;)V

    .line 431
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->hasControlBand(Landroid/content/Context;)Z

    move-result v0

    if-eq v2, v0, :cond_58

    .line 432
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->root:Landroid/view/View;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->root:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b9} :catch_ba

    goto :goto_58

    .line 434
    :catch_ba
    move-exception v0

    .line 435
    const-string v1, "WearableSettingsSection.control"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58

    .line 425
    :cond_c1
    :try_start_c1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_58

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_58

    if-eqz v2, :cond_58

    .line 426
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;->a:Landroid/app/Activity;

    const-string v1, ""

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setControlBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_d8} :catch_ba

    goto :goto_9e
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 400
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 403
    return-void
.end method
