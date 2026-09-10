.class public Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;
.super Landroid/app/Fragment;
.source "OnActResultEventDispatcherFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "on_act_result_event_dispatcher"


# instance fields
.field private mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/maning/updatelibrary/utils/ActForResultCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 34
    iget-object v0, p0, Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maning/updatelibrary/utils/ActForResultCallback;

    .line 35
    .local v0, "callback":Lcom/maning/updatelibrary/utils/ActForResultCallback;
    iget-object v1, p0, Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0, p2, p3}, Lcom/maning/updatelibrary/utils/ActForResultCallback;->onActivityResult(ILandroid/content/Intent;)V

    .line 40
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;->setRetainInstance(Z)V

    .line 23
    return-void
.end method

.method public startForResult(Landroid/content/Intent;Lcom/maning/updatelibrary/utils/ActForResultCallback;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/maning/updatelibrary/utils/ActForResultCallback;

    .line 26
    iget-object v0, p0, Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 28
    return-void
.end method
