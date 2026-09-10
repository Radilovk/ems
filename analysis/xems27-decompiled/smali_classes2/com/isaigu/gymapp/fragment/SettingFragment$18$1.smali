.class Lcom/isaigu/gymapp/fragment/SettingFragment$18$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment$18;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$18;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment$18;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/SettingFragment$18;

    .line 421
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$18$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 423
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectAll()V

    .line 424
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->removeAllTrainingUser()V

    .line 425
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 426
    return-void
.end method
