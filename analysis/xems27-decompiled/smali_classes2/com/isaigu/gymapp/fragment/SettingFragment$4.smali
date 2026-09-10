.class Lcom/isaigu/gymapp/fragment/SettingFragment$4;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$dateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/text/SimpleDateFormat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 265
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$4;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$4;->val$dateFormat:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$4;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$4$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$4$1;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment$4;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method
