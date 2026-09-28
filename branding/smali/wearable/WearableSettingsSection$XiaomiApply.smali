.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XiaomiApply"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply$XiaomiPick;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final bands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;",
            ">;"
        }
    .end annotation
.end field

.field private final error:Ljava/lang/String;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1088
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->a:Landroid/app/Activity;

    .line 1089
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->root:Landroid/view/View;

    .line 1090
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->bands:Ljava/util/List;

    .line 1091
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->error:Ljava/lang/String;

    .line 1092
    return-void
.end method


# virtual methods
.method apply(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;)V
    .registers 6

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->mac:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAuthKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->mac:Ljava/lang/String;

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$000()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1122
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$000()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    :cond_28
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$700()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1125
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$700()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    const/4 v0, 0x1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->setKeyHidden(Z)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$200(Z)V

    .line 1128
    :cond_3b
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->colorFields()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1400()V

    .line 1129
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->a:Landroid/app/Activity;

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e \u2014 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0435 \u0437\u0430\u043a\u0430\u0447\u0435\u043d\u0430 \u2713"

    const-string v2, "Done \u2014 the band is linked \u2713"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1130
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->root:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1131
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1096
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->error:Ljava/lang/String;

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->bands:Ljava/util/List;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->bands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1097
    :cond_11
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->error:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->error:Ljava/lang/String;

    :goto_19
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1115
    :goto_1c
    return-void

    .line 1098
    :cond_1d
    const-string v0, "\u041d\u0435 \u043d\u0430\u043c\u0435\u0440\u0438\u0445 \u0433\u0440\u0438\u0432\u043d\u0430 \u0432 \u0430\u043a\u0430\u0443\u043d\u0442\u0430."

    const-string v2, "No band found in the account."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 1101
    :cond_26
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->bands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 1102
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->bands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->apply(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;)V

    goto :goto_1c

    .line 1105
    :cond_3b
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->bands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    move v1, v0

    .line 1106
    :goto_44
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->bands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_86

    .line 1107
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->bands:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;

    .line 1108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7d

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->name:Ljava/lang/String;

    :goto_63
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->mac:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 1106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_44

    .line 1108
    :cond_7d
    const-string v2, "\u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v5, "Band"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_63

    .line 1110
    :cond_86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041a\u043e\u044f \u0433\u0440\u0438\u0432\u043d\u0430?"

    const-string v2, "Which band?"

    .line 1111
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply$XiaomiPick;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->bands:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply$XiaomiPick;-><init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;Ljava/util/List;)V

    .line 1112
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043a\u0430\u0437"

    const-string v2, "Cancel"

    .line 1113
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1c
.end method
