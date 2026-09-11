.class Lcom/isaigu/gymapp/fragment/SettingFragment$22;
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

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$22;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/isaigu/gymapp/widget/SwitchButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Lcom/isaigu/gymapp/widget/SwitchButton;
    .param p2, "isChecked"    # Z

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$22;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/utils/ThemeUtils;->applyChange(Landroid/app/Activity;Z)V

    return-void
.end method
