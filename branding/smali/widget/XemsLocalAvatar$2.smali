.class Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;
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
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$dlg:Landroid/app/Dialog;

.field final synthetic val$u:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 317
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;->val$dlg:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;->val$u:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 320
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;->val$u:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->show(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 321
    return-void
.end method
