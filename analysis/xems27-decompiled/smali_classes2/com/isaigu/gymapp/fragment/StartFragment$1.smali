.class Lcom/isaigu/gymapp/fragment/StartFragment$1;
.super Ljava/lang/Object;
.source "StartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/StartFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/StartFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/StartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/StartFragment;

    .line 38
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/StartFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/StartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 40
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 41
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/StartFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/StartFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/StartFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/MainFragment;-><init>()V

    const v2, 0x7f0900a4

    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    .line 42
    return-void
.end method
