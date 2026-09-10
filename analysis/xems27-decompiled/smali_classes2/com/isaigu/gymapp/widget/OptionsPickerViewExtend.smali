.class public Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;
.super Lcom/bigkoo/pickerview/view/OptionsPickerView;
.source "OptionsPickerViewExtend.java"


# direct methods
.method public constructor <init>(Lcom/bigkoo/pickerview/configure/PickerOptions;)V
    .locals 0
    .param p1, "pickerOptions"    # Lcom/bigkoo/pickerview/configure/PickerOptions;

    .line 12
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;-><init>(Lcom/bigkoo/pickerview/configure/PickerOptions;)V

    .line 13
    return-void
.end method


# virtual methods
.method public createDialog()V
    .locals 2

    .line 17
    invoke-super {p0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->createDialog()V

    .line 18
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 19
    return-void
.end method
