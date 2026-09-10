.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$5;
.super Ljava/lang/Object;
.source "EditUserPersonalDataDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .line 326
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$5;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .line 328
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$5;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v0

    iput-boolean p2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->permitProtocol:Z

    .line 329
    return-void
.end method
