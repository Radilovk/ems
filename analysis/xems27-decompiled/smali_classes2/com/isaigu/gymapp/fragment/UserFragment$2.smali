.class Lcom/isaigu/gymapp/fragment/UserFragment$2;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "UserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/UserFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/UserFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/UserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/UserFragment;

    .line 113
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/UserFragment;->access$000(Lcom/isaigu/gymapp/fragment/UserFragment;)Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->updateAdapter(Ljava/util/List;)V

    .line 116
    return-void
.end method
