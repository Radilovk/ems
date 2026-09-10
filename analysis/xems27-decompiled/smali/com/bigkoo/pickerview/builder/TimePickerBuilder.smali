.class public Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
.super Ljava/lang/Object;
.source "TimePickerBuilder.java"


# instance fields
.field private mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/bigkoo/pickerview/configure/PickerOptions;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/configure/PickerOptions;-><init>(I)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    .line 26
    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->context:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->timeSelectListener:Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;

    .line 28
    return-void
.end method


# virtual methods
.method public build()Lcom/bigkoo/pickerview/view/TimePickerView;
    .locals 2

    .line 275
    new-instance v0, Lcom/bigkoo/pickerview/view/TimePickerView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/view/TimePickerView;-><init>(Lcom/bigkoo/pickerview/configure/PickerOptions;)V

    return-object v0
.end method

.method public isCenterLabel(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "isCenterLabel"    # Z

    .line 261
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isCenterLabel:Z

    .line 262
    return-object p0
.end method

.method public isCyclic(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "cyclic"    # Z

    .line 213
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic:Z

    .line 214
    return-object p0
.end method

.method public isDialog(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "isDialog"    # Z

    .line 56
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isDialog:Z

    .line 57
    return-object p0
.end method

.method public setBackgroundId(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "backgroundId"    # I

    .line 188
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->backgroundId:I

    .line 189
    return-object p0
.end method

.method public setBgColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "bgColorWheel"    # I

    .line 92
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->bgColorWheel:I

    .line 93
    return-object p0
.end method

.method public setCancelColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "textColorCancel"    # I

    .line 76
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorCancel:I

    .line 77
    return-object p0
.end method

.method public setCancelText(Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "textContentCancel"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentCancel:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public setContentTextSize(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "textSizeContent"    # I

    .line 117
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeContent:I

    .line 118
    return-object p0
.end method

.method public setDate(Ljava/util/Calendar;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .line 128
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    .line 129
    return-object p0
.end method

.method public setDecorView(Landroid/view/ViewGroup;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "decorView"    # Landroid/view/ViewGroup;

    .line 87
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->decorView:Landroid/view/ViewGroup;

    .line 88
    return-object p0
.end method

.method public setDividerColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "dividerColor"    # I

    .line 167
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->dividerColor:I

    .line 168
    return-object p0
.end method

.method public setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "dividerType"    # Lcom/contrarywind/view/WheelView$DividerType;

    .line 177
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    .line 178
    return-object p0
.end method

.method public setGravity(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "gravity"    # I

    .line 32
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textGravity:I

    .line 33
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "label_year"    # Ljava/lang/String;
    .param p2, "label_month"    # Ljava/lang/String;
    .param p3, "label_day"    # Ljava/lang/String;
    .param p4, "label_hours"    # Ljava/lang/String;
    .param p5, "label_mins"    # Ljava/lang/String;
    .param p6, "label_seconds"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_year:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_month:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p3, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_day:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p4, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_hours:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p5, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_minutes:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p6, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_seconds:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "res"    # I
    .param p2, "customListener"    # Lcom/bigkoo/pickerview/listener/CustomListener;

    .line 133
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->layoutRes:I

    .line 134
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->customListener:Lcom/bigkoo/pickerview/listener/CustomListener;

    .line 135
    return-object p0
.end method

.method public setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "lineSpacingMultiplier"    # F

    .line 157
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->lineSpacingMultiplier:F

    .line 158
    return-object p0
.end method

.method public setLunarCalendar(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "lunarCalendar"    # Z

    .line 223
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isLunarCalendar:Z

    .line 224
    return-object p0
.end method

.method public setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "cancelable"    # Z

    .line 218
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cancelable:Z

    .line 219
    return-object p0
.end method

.method public setRangDate(Ljava/util/Calendar;Ljava/util/Calendar;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "startDate"    # Ljava/util/Calendar;
    .param p2, "endDate"    # Ljava/util/Calendar;

    .line 145
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->startDate:Ljava/util/Calendar;

    .line 146
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->endDate:Ljava/util/Calendar;

    .line 147
    return-object p0
.end method

.method public setSubCalSize(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "textSizeSubmitCancel"    # I

    .line 107
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeSubmitCancel:I

    .line 108
    return-object p0
.end method

.method public setSubmitColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "textColorConfirm"    # I

    .line 71
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorConfirm:I

    .line 72
    return-object p0
.end method

.method public setSubmitText(Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "textContentConfirm"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentConfirm:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public setTextColorCenter(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "textColorCenter"    # I

    .line 198
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorCenter:I

    .line 199
    return-object p0
.end method

.method public setTextColorOut(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "textColorOut"    # I

    .line 208
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorOut:I

    .line 209
    return-object p0
.end method

.method public setTextXOffset(IIIIII)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "x_offset_year"    # I
    .param p2, "x_offset_month"    # I
    .param p3, "x_offset_day"    # I
    .param p4, "x_offset_hours"    # I
    .param p5, "x_offset_minutes"    # I
    .param p6, "x_offset_seconds"    # I

    .line 251
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_year:I

    .line 252
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_month:I

    .line 253
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p3, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_day:I

    .line 254
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p4, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_hours:I

    .line 255
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p5, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_minutes:I

    .line 256
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p6, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_seconds:I

    .line 257
    return-object p0
.end method

.method public setTimeSelectChangeListener(Lcom/bigkoo/pickerview/listener/OnTimeSelectChangeListener;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "listener"    # Lcom/bigkoo/pickerview/listener/OnTimeSelectChangeListener;

    .line 270
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->timeSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnTimeSelectChangeListener;

    .line 271
    return-object p0
.end method

.method public setTitleBgColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "bgColorTitle"    # I

    .line 97
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->bgColorTitle:I

    .line 98
    return-object p0
.end method

.method public setTitleColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "textColorTitle"    # I

    .line 102
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorTitle:I

    .line 103
    return-object p0
.end method

.method public setTitleSize(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "textSizeTitle"    # I

    .line 112
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeTitle:I

    .line 113
    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "textContentTitle"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentTitle:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public setType([Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1, "type"    # [Z

    .line 46
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->type:[Z

    .line 47
    return-object p0
.end method
