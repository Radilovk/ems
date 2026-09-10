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
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .line 678
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 705
    :sswitch_0
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    goto :goto_0

    .line 699
    :sswitch_1
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/mgr/CommonUtils;->getGender(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/bean/Gender;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 700
    goto :goto_0

    .line 690
    :sswitch_2
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    .line 691
    goto :goto_0

    .line 681
    :sswitch_3
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 682
    goto :goto_0

    .line 687
    :sswitch_4
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    .line 688
    goto :goto_0

    .line 702
    :sswitch_5
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 703
    goto :goto_0

    .line 684
    :sswitch_6
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    .line 685
    goto :goto_0

    .line 693
    :sswitch_7
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->city:Ljava/lang/String;

    .line 694
    goto :goto_0

    .line 696
    :sswitch_8
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    nop

    .line 710
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 711
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090033 -> :sswitch_8
        0x7f090074 -> :sswitch_7
        0x7f090095 -> :sswitch_6
        0x7f0900b4 -> :sswitch_5
        0x7f0900bb -> :sswitch_4
        0x7f090107 -> :sswitch_3
        0x7f090133 -> :sswitch_2
        0x7f090173 -> :sswitch_1
        0x7f0901f9 -> :sswitch_0
    .end sparse-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 673
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 674
    return-void
.end method
