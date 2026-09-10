.class public Lcom/bigkoo/pickerview/view/OptionsPickerView;
.super Lcom/bigkoo/pickerview/view/BasePickerView;
.source "OptionsPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bigkoo/pickerview/view/BasePickerView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final TAG_CANCEL:Ljava/lang/String; = "cancel"

.field private static final TAG_SUBMIT:Ljava/lang/String; = "submit"


# instance fields
.field private wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;


# direct methods
.method public constructor <init>(Lcom/bigkoo/pickerview/configure/PickerOptions;)V
    .locals 1
    .param p1, "pickerOptions"    # Lcom/bigkoo/pickerview/configure/PickerOptions;

    .line 30
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    iget-object v0, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/bigkoo/pickerview/view/BasePickerView;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    .line 32
    iget-object v0, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->initView(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setDialogOutSideCancelable()V

    .line 37
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->initViews()V

    .line 38
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->initAnim()V

    .line 39
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->initEvents()V

    .line 40
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->customListener:Lcom/bigkoo/pickerview/listener/CustomListener;

    if-nez v0, :cond_3

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->layoutRes:I

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget v0, Lcom/bigkoo/pickerview/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    .local v0, "tvTitle":Landroid/widget/TextView;
    sget v1, Lcom/bigkoo/pickerview/R$id;->rv_topbar:I

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 48
    .local v1, "rv_top_bar":Landroid/widget/RelativeLayout;
    sget v2, Lcom/bigkoo/pickerview/R$id;->btnSubmit:I

    invoke-virtual {p0, v2}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 49
    .local v2, "btnSubmit":Landroid/widget/Button;
    sget v3, Lcom/bigkoo/pickerview/R$id;->btnCancel:I

    invoke-virtual {p0, v3}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 51
    .local v3, "btnCancel":Landroid/widget/Button;
    const-string v4, "submit"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 52
    const-string v4, "cancel"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentConfirm:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/bigkoo/pickerview/R$string;->pickerview_submit:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentConfirm:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentCancel:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/bigkoo/pickerview/R$string;->pickerview_cancel:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentCancel:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentTitle:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorConfirm:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 63
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorCancel:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 64
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorTitle:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->bgColorTitle:I

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 68
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeSubmitCancel:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 69
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeSubmitCancel:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 70
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeTitle:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 71
    .end local v0    # "tvTitle":Landroid/widget/TextView;
    .end local v1    # "rv_top_bar":Landroid/widget/RelativeLayout;
    .end local v2    # "btnSubmit":Landroid/widget/Button;
    .end local v3    # "btnCancel":Landroid/widget/Button;
    goto :goto_3

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->customListener:Lcom/bigkoo/pickerview/listener/CustomListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->layoutRes:I

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bigkoo/pickerview/listener/CustomListener;->customLayout(Landroid/view/View;)V

    .line 76
    :goto_3
    sget v0, Lcom/bigkoo/pickerview/R$id;->optionspicker:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 77
    .local v0, "optionsPicker":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->bgColorWheel:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 79
    new-instance v1, Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->isRestoreItem:Z

    invoke-direct {v1, v0, v2}, Lcom/bigkoo/pickerview/view/WheelOptions;-><init>(Landroid/view/View;Z)V

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    .line 80
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->optionsSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    if-eqz v1, :cond_4

    .line 81
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->optionsSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->setOptionsSelectChangeListener(Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;)V

    .line 84
    :cond_4
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeContent:I

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->setTextContentSize(I)V

    .line 85
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->label1:Ljava/lang/String;

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v3, v3, Lcom/bigkoo/pickerview/configure/PickerOptions;->label2:Ljava/lang/String;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->label3:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/bigkoo/pickerview/view/WheelOptions;->setLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_one:I

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v3, v3, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_two:I

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_three:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/bigkoo/pickerview/view/WheelOptions;->setTextXOffset(III)V

    .line 87
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic1:Z

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v3, v3, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic2:Z

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic3:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/bigkoo/pickerview/view/WheelOptions;->setCyclic(ZZZ)V

    .line 88
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->font:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->cancelable:Z

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/view/BasePickerView;

    .line 92
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->dividerColor:I

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->setDividerColor(I)V

    .line 93
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 94
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->lineSpacingMultiplier:F

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->setLineSpacingMultiplier(F)V

    .line 95
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorOut:I

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->setTextColorOut(I)V

    .line 96
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorCenter:I

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->setTextColorCenter(I)V

    .line 97
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->isCenterLabel:Z

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->isCenterLabel(Z)V

    .line 98
    return-void
.end method

.method private reSetCurrentItems()V
    .locals 4

    .line 137
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->option1:I

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->option2:I

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v3, v3, Lcom/bigkoo/pickerview/configure/PickerOptions;->option3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/bigkoo/pickerview/view/WheelOptions;->setCurrentItems(III)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public isDialog()Z
    .locals 1

    .line 189
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isDialog:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 171
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "submit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->returnData()V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    .line 176
    return-void
.end method

.method public returnData()V
    .locals 6

    .line 180
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->optionsSelectListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->getCurrentItems()[I

    move-result-object v0

    .line 182
    .local v0, "optionsCurrentItems":[I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->optionsSelectListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->clickView:Landroid/view/View;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;->onOptionsSelect(IIILandroid/view/View;)V

    .line 184
    .end local v0    # "optionsCurrentItems":[I
    :cond_0
    return-void
.end method

.method public setNPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    .local p1, "options1Items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "options2Items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "options3Items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->setLinkage(Z)V

    .line 165
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bigkoo/pickerview/view/WheelOptions;->setNPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 166
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->reSetCurrentItems()V

    .line 167
    return-void
.end method

.method public setPicker(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    .local p1, "optionsItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 144
    return-void
.end method

.method public setPicker(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    .local p1, "options1Items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "options2Items":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 148
    return-void
.end method

.method public setPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;>;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    .local p1, "options1Items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "options2Items":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .local p3, "options3Items":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<TT;>;>;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bigkoo/pickerview/view/WheelOptions;->setPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 155
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->reSetCurrentItems()V

    .line 156
    return-void
.end method

.method public setSelectOptions(I)V
    .locals 1
    .param p1, "option1"    # I

    .line 118
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->option1:I

    .line 119
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->reSetCurrentItems()V

    .line 120
    return-void
.end method

.method public setSelectOptions(II)V
    .locals 1
    .param p1, "option1"    # I
    .param p2, "option2"    # I

    .line 124
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->option1:I

    .line 125
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->option2:I

    .line 126
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->reSetCurrentItems()V

    .line 127
    return-void
.end method

.method public setSelectOptions(III)V
    .locals 1
    .param p1, "option1"    # I
    .param p2, "option2"    # I
    .param p3, "option3"    # I

    .line 130
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->option1:I

    .line 131
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->option2:I

    .line 132
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/OptionsPickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p3, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->option3:I

    .line 133
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->reSetCurrentItems()V

    .line 134
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 106
    .local p0, "this":Lcom/bigkoo/pickerview/view/OptionsPickerView;, "Lcom/bigkoo/pickerview/view/OptionsPickerView<TT;>;"
    sget v0, Lcom/bigkoo/pickerview/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    .local v0, "tvTitle":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method
