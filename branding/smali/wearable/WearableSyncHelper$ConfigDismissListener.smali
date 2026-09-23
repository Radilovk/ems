.class final Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConfigDismissListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1102
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$000(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1103
    if-eqz v0, :cond_a

    .line 1104
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1300(Landroid/app/Activity;)V

    .line 1106
    :cond_a
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2102(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 1107
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2202(Landroid/view/View;)Landroid/view/View;

    .line 1108
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2302(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1109
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2402(Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 1110
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2502(Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 1111
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2602(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1112
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2702(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1113
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1602(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1114
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2802(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1115
    return-void
.end method
