.class Lcom/isaigu/gymapp/fragment/UserFragment$3;
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

    .prologue
    .line 119
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/UserFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/fragment/UserFragment;->access$100(Lcom/isaigu/gymapp/fragment/UserFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 123
    .local v1, "show":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v1, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/UserFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/fragment/UserFragment;->access$000(Lcom/isaigu/gymapp/fragment/UserFragment;)Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->updateAdapter(Ljava/util/List;)V

    .line 134
    return-void

    .line 126
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "show":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .restart local v1    # "show":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 128
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
