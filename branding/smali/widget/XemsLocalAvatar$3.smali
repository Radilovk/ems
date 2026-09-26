.class Lcom/isaigu/gymapp/widget/XemsLocalAvatar$3;
.super Ljava/lang/Object;
.source "XemsLocalAvatar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->showCard(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dlg:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .line 430
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$3;->val$dlg:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 432
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$3;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 433
    return-void
.end method
