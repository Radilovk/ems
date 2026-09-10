.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;
.super Ljava/lang/Object;
.source "EditUserPersonalDataDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditTextWatcher"
.end annotation


# instance fields
.field private editText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->editText:Landroid/widget/EditText;

    .line 672
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 678
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 711
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-void

    .line 681
    .restart local v1    # "value":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 708
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 684
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "value":Ljava/lang/String;
    :pswitch_2
    :try_start_1
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    goto :goto_0

    .line 687
    :pswitch_3
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    goto :goto_0

    .line 690
    :pswitch_4
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    goto :goto_0

    .line 693
    :pswitch_5
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/TrainUser;->city:Ljava/lang/String;

    goto :goto_0

    .line 696
    :pswitch_6
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/TrainUser;->address:Ljava/lang/String;

    goto :goto_0

    .line 699
    :pswitch_7
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/mgr/CommonUtils;->getGender(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/bean/Gender;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    goto :goto_0

    .line 702
    :pswitch_8
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    goto :goto_0

    .line 705
    :pswitch_9
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 679
    :pswitch_data_0
    .packed-switch 0x7f0f009e
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 673
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 674
    return-void
.end method
