.class public Landroid/support/v7/widget/helper/CompatItemTouchHelper;
.super Landroid/support/v7/widget/helper/ItemTouchHelper;
.source "CompatItemTouchHelper.java"


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 24
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getCallback()Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    .locals 1

    .line 33
    iget-object v0, p0, Landroid/support/v7/widget/helper/CompatItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    return-object v0
.end method
