.class Lcom/isaigu/gymapp/fragment/SettingFragment$6;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment;->initSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$6;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/isaigu/gymapp/widget/SwitchButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Lcom/isaigu/gymapp/widget/SwitchButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 304
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-boolean p2, v0, Lcom/isaigu/gymapp/bean/UserData;->leftMode:Z

    .line 305
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 307
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/Object;)V

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 308
    return-void
.end method
