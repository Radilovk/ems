.class public Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
.super Ljava/lang/Object;
.source "OptionsPickerBuilder.java"


# instance fields
.field private mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bigkoo/pickerview/configure/PickerOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/configure/PickerOptions;-><init>(I)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    .line 27
    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->context:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->optionsSelectListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;

    .line 29
    return-void
.end method


# virtual methods
.method public build()Lcom/bigkoo/pickerview/view/OptionsPickerView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bigkoo/pickerview/view/OptionsPickerView<",
            "TT;>;"
        }
    .end annotation

    .line 248
    new-instance v0, Lcom/bigkoo/pickerview/view/OptionsPickerView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;-><init>(Lcom/bigkoo/pickerview/configure/PickerOptions;)V

    return-object v0
.end method

.method public isCenterLabel(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "isCenterLabel"    # Z

    .line 222
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isCenterLabel:Z

    .line 223
    return-object p0
.end method

.method public isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "isDialog"    # Z

    .line 48
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isDialog:Z

    .line 49
    return-object p0
.end method

.method public isRestoreItem(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "isRestoreItem"    # Z

    .line 233
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isRestoreItem:Z

    .line 234
    return-object p0
.end method

.method public setBackgroundId(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "backgroundId"    # I

    .line 69
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->backgroundId:I

    .line 70
    return-object p0
.end method

.method public setBgColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "bgColorWheel"    # I

    .line 92
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->bgColorWheel:I

    .line 93
    return-object p0
.end method

.method public setCancelColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "textColorCancel"    # I

    .line 58
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorCancel:I

    .line 59
    return-object p0
.end method

.method public setCancelText(Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "textContentCancel"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentCancel:Ljava/lang/String;

    .line 39
    return-object p0
.end method

.method public setContentTextSize(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "textSizeContent"    # I

    .line 117
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeContent:I

    .line 118
    return-object p0
.end method

.method public setCyclic(ZZZ)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "cyclic1"    # Z
    .param p2, "cyclic2"    # Z
    .param p3, "cyclic3"    # Z

    .line 190
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic1:Z

    .line 191
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic2:Z

    .line 192
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p3, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic3:Z

    .line 193
    return-object p0
.end method

.method public setDecorView(Landroid/view/ViewGroup;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "decorView"    # Landroid/view/ViewGroup;

    .line 81
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->decorView:Landroid/view/ViewGroup;

    .line 82
    return-object p0
.end method

.method public setDividerColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "dividerColor"    # I

    .line 150
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->dividerColor:I

    .line 151
    return-object p0
.end method

.method public setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "dividerType"    # Lcom/contrarywind/view/WheelView$DividerType;

    .line 160
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    .line 161
    return-object p0
.end method

.method public setLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "label1"    # Ljava/lang/String;
    .param p2, "label2"    # Ljava/lang/String;
    .param p3, "label3"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label1:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label2:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p3, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label3:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "res"    # I
    .param p2, "listener"    # Lcom/bigkoo/pickerview/listener/CustomListener;

    .line 86
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->layoutRes:I

    .line 87
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->customListener:Lcom/bigkoo/pickerview/listener/CustomListener;

    .line 88
    return-object p0
.end method

.method public setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "lineSpacingMultiplier"    # F

    .line 140
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->lineSpacingMultiplier:F

    .line 141
    return-object p0
.end method

.method public setOptionsSelectChangeListener(Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "listener"    # Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    .line 242
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->optionsSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    .line 243
    return-object p0
.end method

.method public setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "cancelable"    # Z

    .line 122
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cancelable:Z

    .line 123
    return-object p0
.end method

.method public setSelectOptions(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "option1"    # I

    .line 197
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->option1:I

    .line 198
    return-object p0
.end method

.method public setSelectOptions(II)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "option1"    # I
    .param p2, "option2"    # I

    .line 202
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->option1:I

    .line 203
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->option2:I

    .line 204
    return-object p0
.end method

.method public setSelectOptions(III)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "option1"    # I
    .param p2, "option2"    # I
    .param p3, "option3"    # I

    .line 208
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->option1:I

    .line 209
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->option2:I

    .line 210
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p3, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->option3:I

    .line 211
    return-object p0
.end method

.method public setSubCalSize(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "textSizeSubmitCancel"    # I

    .line 107
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeSubmitCancel:I

    .line 108
    return-object p0
.end method

.method public setSubmitColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "textColorConfirm"    # I

    .line 53
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorConfirm:I

    .line 54
    return-object p0
.end method

.method public setSubmitText(Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "textContentConfirm"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentConfirm:Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public setTextColorCenter(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "textColorCenter"    # I

    .line 170
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorCenter:I

    .line 171
    return-object p0
.end method

.method public setTextColorOut(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "textColorOut"    # I

    .line 180
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorOut:I

    .line 181
    return-object p0
.end method

.method public setTextXOffset(III)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "xoffset_one"    # I
    .param p2, "xoffset_two"    # I
    .param p3, "xoffset_three"    # I

    .line 215
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_one:I

    .line 216
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_two:I

    .line 217
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p3, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_three:I

    .line 218
    return-object p0
.end method

.method public setTitleBgColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "bgColorTitle"    # I

    .line 97
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->bgColorTitle:I

    .line 98
    return-object p0
.end method

.method public setTitleColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "textColorTitle"    # I

    .line 102
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorTitle:I

    .line 103
    return-object p0
.end method

.method public setTitleSize(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "textSizeTitle"    # I

    .line 112
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeTitle:I

    .line 113
    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "textContentTitle"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentTitle:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
    .locals 1
    .param p1, "font"    # Landroid/graphics/Typeface;

    .line 185
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->font:Landroid/graphics/Typeface;

    .line 186
    return-object p0
.end method
