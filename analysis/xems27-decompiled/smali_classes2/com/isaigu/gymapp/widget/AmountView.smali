.class public Lcom/isaigu/gymapp/widget/AmountView;
.super Landroid/widget/RelativeLayout;
.source "AmountView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;,
        Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmountView"


# instance fields
.field private amount:I

.field private amountClickListener:Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;

.field private btnDecrease:Landroid/widget/Button;

.field private btnIncrease:Landroid/widget/Button;

.field private etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

.field private goods_storage:I

.field private mListener:Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;

.field private min:I

.field private scale:I

.field private step:I

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/widget/AmountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    .line 22
    iput v0, p0, Lcom/isaigu/gymapp/widget/AmountView;->goods_storage:I

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/widget/AmountView;->min:I

    .line 24
    iput v0, p0, Lcom/isaigu/gymapp/widget/AmountView;->step:I

    .line 26
    iput v0, p0, Lcom/isaigu/gymapp/widget/AmountView;->scale:I

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b001d

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    const v2, 0x7f090197

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/AmountView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    .line 43
    const v2, 0x7f090052

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/AmountView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->btnDecrease:Landroid/widget/Button;

    .line 44
    const v2, 0x7f090053

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/AmountView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->btnIncrease:Landroid/widget/Button;

    .line 45
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->btnDecrease:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->btnIncrease:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    invoke-virtual {v2, p0}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AmountView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/R$styleable;->AmountView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 50
    .local v2, "obtainStyledAttributes":Landroid/content/res/TypedArray;
    const/4 v3, -0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 51
    .local v0, "btnWidth":I
    const/4 v3, 0x3

    const/16 v4, 0x50

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 52
    .local v3, "tvWidth":I
    const/4 v4, 0x2

    const/16 v5, 0x14

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 53
    .local v4, "tvTextSize":I
    invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 54
    .local v5, "btnTextSize":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    if-eqz v5, :cond_0

    .line 57
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/AmountView;->btnDecrease:Landroid/widget/Button;

    int-to-float v7, v5

    invoke-virtual {v6, v1, v7}, Landroid/widget/Button;->setTextSize(IF)V

    .line 58
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/AmountView;->btnIncrease:Landroid/widget/Button;

    int-to-float v7, v5

    invoke-virtual {v6, v1, v7}, Landroid/widget/Button;->setTextSize(IF)V

    .line 61
    :cond_0
    if-eqz v4, :cond_1

    .line 62
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    int-to-float v6, v4

    invoke-virtual {v1, v6}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setTextSize(F)V

    .line 64
    :cond_1
    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 108
    .local v0, "i":I
    const v1, 0x7f090052

    if-ne v0, v1, :cond_1

    .line 109
    iget v1, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->step:I

    sub-int v3, v1, v2

    iget v4, p0, Lcom/isaigu/gymapp/widget/AmountView;->min:I

    if-lt v3, v4, :cond_0

    .line 110
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    .line 111
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    iget v4, p0, Lcom/isaigu/gymapp/widget/AmountView;->scale:I

    mul-int v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/AmountView;->unit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView;->mListener:Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;

    if-eqz v1, :cond_4

    .line 114
    iget v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    invoke-interface {v1, p0, v2}, Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;->onAmountChange(Landroid/view/View;I)V

    goto :goto_0

    .line 116
    :cond_1
    const v1, 0x7f090053

    if-ne v0, v1, :cond_3

    .line 117
    iget v1, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->step:I

    add-int v3, v1, v2

    iget v4, p0, Lcom/isaigu/gymapp/widget/AmountView;->goods_storage:I

    if-gt v3, v4, :cond_2

    .line 118
    add-int/2addr v1, v2

    iput v1, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    .line 119
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    iget v4, p0, Lcom/isaigu/gymapp/widget/AmountView;->scale:I

    mul-int v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/AmountView;->unit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView;->mListener:Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;

    if-eqz v1, :cond_4

    .line 122
    iget v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    invoke-interface {v1, p0, v2}, Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;->onAmountChange(Landroid/view/View;I)V

    goto :goto_0

    .line 124
    :cond_3
    const v1, 0x7f090197

    if-ne v0, v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView;->amountClickListener:Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;

    if-eqz v1, :cond_4

    .line 126
    iget v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    invoke-interface {v1, p0, v2}, Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;->onAmountClick(Landroid/view/View;I)V

    .line 129
    :cond_4
    :goto_0
    return-void
.end method

.method public setAmount(I)V
    .locals 4
    .param p1, "amount"    # I

    .line 94
    iput p1, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    .line 95
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/AmountView;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->amount:I

    iget v3, p0, Lcom/isaigu/gymapp/widget/AmountView;->scale:I

    mul-int v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/AmountView;->unit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V
    .locals 0
    .param p1, "amountClickListener"    # Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;

    .line 78
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/AmountView;->amountClickListener:Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;

    .line 79
    return-void
.end method

.method public setAmountTextPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 67
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/AmountView;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setPadding(IIII)V

    .line 68
    return-void
.end method

.method public setAmountTextPaddingTop(I)V
    .locals 2
    .param p1, "top"    # I

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/AmountView;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setPadding(IIII)V

    .line 72
    return-void
.end method

.method public setAmountUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/AmountView;->unit:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setGoods_storage(I)V
    .locals 0
    .param p1, "goods_storage"    # I

    .line 82
    iput p1, p0, Lcom/isaigu/gymapp/widget/AmountView;->goods_storage:I

    .line 83
    return-void
.end method

.method public setMin(I)V
    .locals 0
    .param p1, "min"    # I

    .line 86
    iput p1, p0, Lcom/isaigu/gymapp/widget/AmountView;->min:I

    .line 87
    return-void
.end method

.method public setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V
    .locals 0
    .param p1, "onAmountChangeListener"    # Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;

    .line 74
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/AmountView;->mListener:Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;

    .line 75
    return-void
.end method

.method public setScale(I)V
    .locals 0
    .param p1, "scale"    # I

    .line 132
    iput p1, p0, Lcom/isaigu/gymapp/widget/AmountView;->scale:I

    .line 133
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .line 90
    iput p1, p0, Lcom/isaigu/gymapp/widget/AmountView;->step:I

    .line 91
    return-void
.end method
