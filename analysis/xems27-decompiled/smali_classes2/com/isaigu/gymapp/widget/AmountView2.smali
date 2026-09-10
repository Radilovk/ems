.class public Lcom/isaigu/gymapp/widget/AmountView2;
.super Landroid/widget/RelativeLayout;
.source "AmountView2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmountView"


# instance fields
.field private amount:I

.field private btnDecrease:Landroid/widget/Button;

.field private btnIncrease:Landroid/widget/Button;

.field private etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

.field private goods_storage:I

.field private mListener:Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;

.field private minValue:I

.field private step:I

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/widget/AmountView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/AmountView2;->amount:I

    .line 22
    iput v0, p0, Lcom/isaigu/gymapp/widget/AmountView2;->goods_storage:I

    .line 23
    iput v0, p0, Lcom/isaigu/gymapp/widget/AmountView2;->step:I

    .line 24
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->minValue:I

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b001e

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    const v2, 0x7f090197

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/AmountView2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView2;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    .line 42
    const v2, 0x7f090052

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/AmountView2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView2;->btnDecrease:Landroid/widget/Button;

    .line 43
    const v2, 0x7f090053

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/AmountView2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView2;->btnIncrease:Landroid/widget/Button;

    .line 44
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView2;->btnDecrease:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView2;->btnIncrease:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AmountView2;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/R$styleable;->AmountView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 48
    .local v2, "obtainStyledAttributes":Landroid/content/res/TypedArray;
    const/4 v3, -0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 49
    .local v0, "btnWidth":I
    const/4 v3, 0x3

    const/16 v4, 0x50

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 50
    .local v3, "tvWidth":I
    const/4 v4, 0x2

    const/16 v5, 0x14

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 51
    .local v4, "tvTextSize":I
    invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 52
    .local v5, "btnTextSize":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    if-eqz v5, :cond_0

    .line 55
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/AmountView2;->btnDecrease:Landroid/widget/Button;

    int-to-float v7, v5

    invoke-virtual {v6, v1, v7}, Landroid/widget/Button;->setTextSize(IF)V

    .line 56
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/AmountView2;->btnIncrease:Landroid/widget/Button;

    int-to-float v7, v5

    invoke-virtual {v6, v1, v7}, Landroid/widget/Button;->setTextSize(IF)V

    .line 59
    :cond_0
    if-eqz v4, :cond_1

    .line 60
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    int-to-float v6, v4

    invoke-virtual {v1, v6}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setTextSize(F)V

    .line 62
    :cond_1
    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/isaigu/gymapp/widget/AmountView2;->amount:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 109
    .local v0, "i":I
    const v1, 0x7f090052

    if-ne v0, v1, :cond_1

    .line 110
    iget v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->amount:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/AmountView2;->step:I

    sub-int v3, v1, v2

    iget v4, p0, Lcom/isaigu/gymapp/widget/AmountView2;->minValue:I

    if-lt v3, v4, :cond_0

    .line 111
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->amount:I

    .line 112
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/isaigu/gymapp/widget/AmountView2;->amount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/AmountView2;->unit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->mListener:Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;

    if-eqz v1, :cond_3

    .line 115
    iget v2, p0, Lcom/isaigu/gymapp/widget/AmountView2;->amount:I

    invoke-interface {v1, p0, v2}, Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;->onAmountChange(Landroid/view/View;I)V

    goto :goto_0

    .line 117
    :cond_1
    const v1, 0x7f090053

    if-ne v0, v1, :cond_3

    .line 118
    iget v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->amount:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/AmountView2;->step:I

    add-int v3, v1, v2

    iget v4, p0, Lcom/isaigu/gymapp/widget/AmountView2;->goods_storage:I

    if-gt v3, v4, :cond_2

    .line 119
    add-int/2addr v1, v2

    iput v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->amount:I

    .line 120
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/isaigu/gymapp/widget/AmountView2;->amount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/AmountView2;->unit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->mListener:Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;

    if-eqz v1, :cond_3

    .line 123
    iget v2, p0, Lcom/isaigu/gymapp/widget/AmountView2;->amount:I

    invoke-interface {v1, p0, v2}, Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;->onAmountChange(Landroid/view/View;I)V

    .line 126
    :cond_3
    :goto_0
    return-void
.end method

.method public setAmount(I)V
    .locals 3
    .param p1, "amount"    # I

    .line 90
    iput p1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->amount:I

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/AmountView2;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/widget/AmountView2;->amount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView2;->unit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public setAmountColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/AmountView2;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setTextColor(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public setAmountTextPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/AmountView2;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setPadding(IIII)V

    .line 66
    return-void
.end method

.method public setAmountTextPaddingTop(I)V
    .locals 2
    .param p1, "top"    # I

    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/AmountView2;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setPadding(IIII)V

    .line 70
    return-void
.end method

.method public setAmountUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->unit:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setGoods_storage(I)V
    .locals 0
    .param p1, "goods_storage"    # I

    .line 82
    iput p1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->goods_storage:I

    .line 83
    return-void
.end method

.method public setMinValue(I)V
    .locals 0
    .param p1, "minValue"    # I

    .line 95
    iput p1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->minValue:I

    .line 96
    return-void
.end method

.method public setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;)V
    .locals 0
    .param p1, "onAmountChangeListener"    # Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;

    .line 72
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->mListener:Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;

    .line 73
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .line 86
    iput p1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->step:I

    .line 87
    return-void
.end method
