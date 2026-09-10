.class Lcom/isaigu/gymapp/fragment/SettingFragment$16;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "SettingFragment.java"


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

    .line 398
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$16;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 401
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$16;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const-string v1, "tu"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$300(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/lang/String;Z)V

    .line 402
    return-void
.end method
