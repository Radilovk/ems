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

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 841
    const/4 p1, 0x0

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$500(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 842
    if-eqz v0, :cond_a

    .line 843
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1000(Landroid/app/Activity;)V

    .line 845
    :cond_a
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1102(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 846
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1202(Landroid/view/View;)Landroid/view/View;

    .line 847
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1302(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 848
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1402(Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 849
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1502(Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 850
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1602(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 851
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1702(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 852
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1802(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 853
    return-void
.end method
