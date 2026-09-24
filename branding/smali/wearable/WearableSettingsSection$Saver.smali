.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;
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
    name = "Saver"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;->activity:Landroid/app/Activity;

    .line 490
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    .prologue
    .line 500
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->colorFields()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1100()V

    .line 501
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$000()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_70

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$000()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 502
    :goto_19
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$400()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_73

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$400()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 503
    :goto_2f
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 504
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 508
    :cond_3e
    :goto_3e
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4f

    .line 509
    :cond_4a
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;->activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAuthKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 511
    :cond_4f
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 512
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 515
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;->activity:Landroid/app/Activity;

    .line 516
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-static {v2, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;->activity:Landroid/app/Activity;

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->refreshStatus(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$600(Landroid/app/Activity;)V

    .line 526
    return-void

    .line 501
    :cond_70
    const-string v0, ""

    goto :goto_19

    .line 502
    :cond_73
    const-string v1, ""

    goto :goto_2f

    .line 505
    :cond_76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3e

    .line 506
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;->activity:Landroid/app/Activity;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3e

    .line 517
    :cond_84
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6a

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$400()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 519
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->savedKeyFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6a

    .line 521
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$400()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6a
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 493
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 496
    return-void
.end method
