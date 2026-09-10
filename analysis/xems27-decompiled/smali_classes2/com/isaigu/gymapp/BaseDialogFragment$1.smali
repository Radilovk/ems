.class Lcom/isaigu/gymapp/BaseDialogFragment$1;
.super Ljava/lang/Object;
.source "BaseDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/BaseDialogFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/BaseDialogFragment;

    .line 34
    iput-object p1, p0, Lcom/isaigu/gymapp/BaseDialogFragment$1;->this$0:Lcom/isaigu/gymapp/BaseDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseDialogFragment$1;->this$0:Lcom/isaigu/gymapp/BaseDialogFragment;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseDialogFragment;->hideSoftInput(Landroid/os/IBinder;)V

    .line 37
    return-void
.end method
