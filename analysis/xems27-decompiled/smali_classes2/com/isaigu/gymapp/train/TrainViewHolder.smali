.class public Lcom/isaigu/gymapp/train/TrainViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TrainViewHolder.java"


# instance fields
.field private bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field private binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

.field circleSeekBarListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

.field private context:Landroid/content/Context;

.field private eBinding:Lcom/isaigu/gymapp/databinding/TrainEmptyItemLayoutBinding;

.field private fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

.field private final isEmpty:Z

.field item:Lcom/isaigu/gymapp/train/model/TrainItem;

.field listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

.field private texts:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(ZLandroid/view/View;Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V
    .locals 2
    .param p1, "isEmpty"    # Z
    .param p2, "view"    # Landroid/view/View;
    .param p3, "fragment"    # Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 49
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 317
    new-instance v0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$4;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->circleSeekBarListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    .line 51
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isEmpty:Z

    .line 52
    iput-object p3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-static {p2}, Lcom/isaigu/gymapp/databinding/TrainEmptyItemLayoutBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/TrainEmptyItemLayoutBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->eBinding:Lcom/isaigu/gymapp/databinding/TrainEmptyItemLayoutBinding;

    .line 55
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindEmptyListener()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p2}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    .line 58
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->init()V

    .line 59
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindListener()V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 63
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/fragment/NewTrainFragment;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 33
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 33
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 33
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->onItemChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 33
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 33
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    return-object v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/train/TrainViewHolder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 33
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/train/TrainViewHolder;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 33
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    return-object v0
.end method

.method private bindEmptyListener()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$ERzM4vl4JE2XmpD4TpYuFbGJwy4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$ERzM4vl4JE2XmpD4TpYuFbGJwy4;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method private bindListener()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->strenthExist:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$3ZCt5K_F5rllGlJffv--1HGSes0;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$3ZCt5K_F5rllGlJffv--1HGSes0;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->youyangyundong:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$6eF_uSZfVzHDgrEl4n-QuVywb5Q;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$6eF_uSZfVzHDgrEl4n-QuVywb5Q;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->anmo:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$VP8RSWDuxq82L5O6DvhxXQVYswA;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$VP8RSWDuxq82L5O6DvhxXQVYswA;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->stop:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$YUNB8NGb7DePu_CbJP4nlARvrZQ;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$YUNB8NGb7DePu_CbJP4nlARvrZQ;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->startpaulse:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$NP-eisy42SMMThBcUVQrFrYABbc;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$NP-eisy42SMMThBcUVQrFrYABbc;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$fYd_qw8RB0flTNSCPMz2kzmzDOM;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$fYd_qw8RB0flTNSCPMz2kzmzDOM;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$iA4JdRcp_rYSlitdb66n0WJ1y6Y;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$iA4JdRcp_rYSlitdb66n0WJ1y6Y;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->circleSeekBarListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 115
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->setBarsListener(I)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->setting:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$1;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->save:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$2;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$AKgsz5wEEDl5_L7GlQmJlXf089M;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$AKgsz5wEEDl5_L7GlQmJlXf089M;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method private bindNotEmpty()V
    .locals 2

    .line 200
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$Ff1BgkweMjBYl0E7_2leYR70ObI;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$Ff1BgkweMjBYl0E7_2leYR70ObI;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setTrainItemListener(Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;)V

    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isSelected()Z

    .line 210
    return-void
.end method

.method private getParentActivity()Lcom/isaigu/gymapp/BaseActivity;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    return-object v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .line 184
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 13

    .line 69
    const/16 v0, 0xa

    new-array v1, v0, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview1:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview2:Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview3:Landroid/widget/TextView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview4:Landroid/widget/TextView;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview5:Landroid/widget/TextView;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview6:Landroid/widget/TextView;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview7:Landroid/widget/TextView;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview8:Landroid/widget/TextView;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview9:Landroid/widget/TextView;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview10:Landroid/widget/TextView;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    iput-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    .line 72
    new-array v0, v0, [Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness1:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness2:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness3:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness4:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness5:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness6:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness7:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness8:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness9:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v11

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness10:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v12

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f0c0020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-array v1, v4, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v2, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 77
    return-void
.end method

.method private onItemChange()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 358
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/train/listener/OnTrainListListener;->onItemChange(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 359
    return-void
.end method

.method private setBarsListener(I)V
    .locals 5
    .param p1, "index"    # I

    .line 338
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v0, v0, p1

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->getColor(I)I

    move-result v1

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/BaseActivity;->getColor(I)I

    move-result v2

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    const v4, 0x7f06003a

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/BaseActivity;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setColorArray(III)V

    .line 339
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v0, v0, p1

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$5;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/TrainViewHolder$5;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;I)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setOnStateChangeListener(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;)V

    .line 354
    return-void
.end method

.method private setDelete()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/isaigu/gymapp/train/OnSwipeTouchListener;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/train/TrainViewHolder$3;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$3;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/train/OnSwipeTouchListener;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    return-void
.end method

.method private updateTime()V
    .locals 6

    .line 291
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 293
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    add-int/lit8 v1, v1, 0x1

    .line 295
    .local v1, "waveValue":I
    const/4 v2, 0x0

    .line 296
    .local v2, "waveProgress":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v3

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 298
    .local v3, "waveColor":I
    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v4, :cond_1

    .line 299
    mul-int/lit8 v4, v1, 0x1e

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    div-int v2, v4, v5

    goto :goto_0

    .line 302
    .end local v3    # "waveColor":I
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 303
    .restart local v3    # "waveColor":I
    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v4, :cond_1

    .line 304
    mul-int/lit8 v4, v1, 0x1e

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    div-int v2, v4, v5

    .line 307
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressValue:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressValue:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 310
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 311
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 313
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->time:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v5, v5, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v5}, Lcom/isaigu/gymapp/mgr/CommonUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method

.method private updateUI()V
    .locals 11

    .line 213
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 215
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 216
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    const v3, 0x7f0d006e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 219
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v2, v2, v1

    .line 220
    .local v2, "value":I
    iget-object v5, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v5, v5, v1

    int-to-float v6, v2

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 221
    iget-object v5, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    int-to-float v9, v2

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    iget v10, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v10, v10

    mul-float v9, v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v5, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v5, v5, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_0

    .line 223
    iget-object v5, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v8, 0x7f06005b

    invoke-virtual {v6, v8}, Lcom/isaigu/gymapp/BaseActivity;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v5, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_1

    .line 226
    :cond_0
    iget-object v5, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v8, 0x7f060025

    invoke-virtual {v6, v8}, Lcom/isaigu/gymapp/BaseActivity;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget-object v5, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 218
    .end local v2    # "value":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->startpaulse:Lcom/isaigu/gymapp/widget/MyButton;

    const v2, 0x7f0c006d

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->startpaulse:Lcom/isaigu/gymapp/widget/MyButton;

    const v2, 0x7f0c006a

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 237
    :goto_2
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->address:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->strenthExist:Lcom/isaigu/gymapp/widget/MyButton;

    const v2, 0x7f0800c3

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 241
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->youyangyundong:Lcom/isaigu/gymapp/widget/MyButton;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 242
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->anmo:Lcom/isaigu/gymapp/widget/MyButton;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 243
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-ne v1, v4, :cond_3

    .line 244
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->strenthExist:Lcom/isaigu/gymapp/widget/MyButton;

    const v2, 0x7f0800c5

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 246
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->youyangyundong:Lcom/isaigu/gymapp/widget/MyButton;

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 247
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 248
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->anmo:Lcom/isaigu/gymapp/widget/MyButton;

    const v2, 0x7f0800c2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 252
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    const-string v2, " s"

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountUnit(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/widget/AmountView2;->setMinValue(I)V

    .line 255
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/widget/AmountView2;->setGoods_storage(I)V

    .line 256
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v1, v5}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmount(I)V

    .line 257
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    iget-object v5, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    const v6, 0x7f0600bb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountColor(I)V

    .line 259
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountUnit(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    invoke-virtual {v1, v7}, Lcom/isaigu/gymapp/widget/AmountView2;->setMinValue(I)V

    .line 262
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/widget/AmountView2;->setGoods_storage(I)V

    .line 263
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmount(I)V

    .line 264
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    const v3, 0x7f0600bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountColor(I)V

    .line 266
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->MyBatterView:Lcom/isaigu/gymapp/widget/BatterView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/BatterView;->setProgress(I)V

    .line 267
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->batteryValueTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v3

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v1, :cond_6

    .line 271
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->signalImage:Landroid/widget/ImageView;

    const v2, 0x7f0c0068

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 273
    :cond_6
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->signalImage:Landroid/widget/ImageView;

    const v2, 0x7f0c0067

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 275
    :goto_4
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 276
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    const v2, 0x7f080091

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5

    .line 278
    :cond_7
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    const v2, 0x7f080090

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 281
    :goto_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const-string v2, "sample"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 282
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    new-array v2, v4, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v3, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_6

    .line 284
    :cond_8
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const v2, 0x7f0c0020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    new-array v2, v4, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v3, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 287
    :goto_6
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateTime()V

    .line 288
    return-void
.end method


# virtual methods
.method public bind(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/listener/OnTrainListListener;)V
    .locals 1
    .param p1, "item"    # Lcom/isaigu/gymapp/train/model/TrainItem;
    .param p2, "listener"    # Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    .line 192
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 193
    iput-object p2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    .line 194
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isEmpty:Z

    if-nez v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindNotEmpty()V

    .line 197
    :cond_0
    return-void
.end method

.method public getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    return-object v0
.end method

.method public synthetic lambda$bindEmptyListener$8$TrainViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/train/listener/OnTrainListListener;->onEmptyItemClick(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    return-void
.end method

.method public synthetic lambda$bindListener$0$TrainViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setUserType(I)V

    return-void
.end method

.method public synthetic lambda$bindListener$1$TrainViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setUserType(I)V

    return-void
.end method

.method public synthetic lambda$bindListener$2$TrainViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setUserType(I)V

    return-void
.end method

.method public synthetic lambda$bindListener$3$TrainViewHolder(Landroid/view/View;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V

    .line 87
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V

    .line 88
    return-void
.end method

.method public synthetic lambda$bindListener$4$TrainViewHolder(Landroid/view/View;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 91
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->start()V

    .line 96
    :goto_0
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V

    .line 97
    return-void
.end method

.method public synthetic lambda$bindListener$5$TrainViewHolder(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "amount"    # I

    .line 100
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iput p2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 101
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V

    .line 102
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->onItemChange()V

    .line 103
    return-void
.end method

.method public synthetic lambda$bindListener$6$TrainViewHolder(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "amount"    # I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fee\u6539\u65f6\u95f4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iput p2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 108
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V

    .line 109
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->onItemChange()V

    .line 110
    return-void
.end method

.method public synthetic lambda$bindListener$7$TrainViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 145
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V

    .line 146
    return-void
.end method

.method public synthetic lambda$bindNotEmpty$9$TrainViewHolder()V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V

    return-void
.end method
