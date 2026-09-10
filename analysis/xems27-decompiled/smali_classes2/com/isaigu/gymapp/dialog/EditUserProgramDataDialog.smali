.class public Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
.super Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;
.source "EditUserProgramDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;
    }
.end annotation


# instance fields
.field private anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

.field private check1:[Landroid/widget/ImageView;

.field private close:Landroid/widget/Button;

.field private editPogram:Z

.field private frequency:Landroid/widget/TextView;

.field private frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

.field private frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

.field private frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

.field private inputramp:Landroid/widget/TextView;

.field private multiEdit:Z

.field private outputramp:Landroid/widget/TextView;

.field private paulseContinue:Landroid/widget/TextView;

.field private paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

.field private paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

.field private paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

.field private paulseStop:Landroid/widget/TextView;

.field private paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

.field private paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

.field private paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

.field private paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

.field private paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

.field private paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

.field private paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

.field private people:[Landroid/widget/RelativeLayout;

.field private pickerViewDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;"
        }
    .end annotation
.end field

.field private reset1:Landroid/widget/Button;

.field private reset2:Landroid/widget/Button;

.field private reset3:Landroid/widget/Button;

.field private save:Landroid/widget/Button;

.field private saveProgramListener:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

.field private trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

.field private trainUserProgramDataWrapperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private userIcon:Landroid/widget/ImageView;

.field private userIcon1:[Landroid/widget/ImageView;

.field private userName1:[Landroid/widget/TextView;

.field private usericonLayout:Landroid/widget/LinearLayout;

.field private usericonLayout2:Landroid/widget/LinearLayout;

.field private username:Landroid/widget/TextView;

.field private worklength:Landroid/widget/TextView;

.field private worklength1:Lcom/isaigu/gymapp/widget/AmountView;

.field private worklength2:Lcom/isaigu/gymapp/widget/AmountView;

.field private worklength3:Lcom/isaigu/gymapp/widget/AmountView;

.field private wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;-><init>()V

    .line 69
    const/4 v0, 0x6

    new-array v1, v0, [Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    .line 70
    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    .line 71
    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    .line 72
    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;IIILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getPickerViewData(IIILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->preCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->multiEdit:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->saveProgramListener:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)[Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->pickerViewDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Ljava/util/List;I)I
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getSelected(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequency:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->inputramp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->outputramp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method private getPickerViewData(IIILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "step"    # I
    .param p4, "unit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;"
        }
    .end annotation

    .line 1225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 1227
    new-instance v2, Lcom/isaigu/gymapp/bean/PickerViewData;

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/bean/PickerViewData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 1228
    .local v2, "data":Lcom/isaigu/gymapp/bean/PickerViewData;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    .end local v2    # "data":Lcom/isaigu/gymapp/bean/PickerViewData;
    add-int/2addr v1, p3

    goto :goto_0

    .line 1230
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private getSelected(Ljava/util/List;I)I
    .locals 6
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;I)I"
        }
    .end annotation

    .line 1217
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1218
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/PickerViewData;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PickerViewData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    int-to-long v3, p2

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 1219
    return v0

    .line 1217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1222
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private initListener()V
    .locals 4

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 227
    move v2, v0

    .line 228
    .local v2, "fi":I
    aget-object v1, v1, v0

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$1;

    invoke-direct {v3, p0, v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;I)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .end local v2    # "fi":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->inputramp:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$2;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->outputramp:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$3;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$4;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$5;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$6;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$6;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->reset1:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->reset2:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$8;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$8;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->reset3:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->save:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->close:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$11;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$11;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequency:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$13;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$13;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 664
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 675
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$15;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$15;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 680
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 691
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$17;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$17;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 696
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$18;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$18;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 707
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$19;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$19;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 712
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$20;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$20;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 724
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$21;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$21;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 729
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$22;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$22;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 741
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$23;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$23;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 746
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$24;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$24;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 758
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$25;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$25;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 763
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$26;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$26;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 775
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$27;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$27;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 780
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$28;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$28;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 792
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$29;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$29;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 797
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$30;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$30;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 809
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$31;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$31;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 814
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$32;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$32;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 827
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$33;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$33;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 832
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$34;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$34;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 844
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$35;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$35;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 849
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$36;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$36;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 861
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$37;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$37;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 866
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$38;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$38;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 878
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$39;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$39;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 883
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$40;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$40;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 895
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$41;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$41;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 900
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$42;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$42;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 912
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$43;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$43;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 918
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$44;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$44;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 930
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$45;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$45;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 935
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 949
    return-void
.end method

.method private initPickDataListHz()V
    .locals 5

    .line 1208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->pickerViewDatas:Ljava/util/List;

    .line 1209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x78

    if-ge v0, v1, :cond_0

    .line 1210
    new-instance v1, Lcom/isaigu/gymapp/bean/PickerViewData;

    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Hz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/bean/PickerViewData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 1212
    .local v1, "data":Lcom/isaigu/gymapp/bean/PickerViewData;
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->pickerViewDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    .end local v1    # "data":Lcom/isaigu/gymapp/bean/PickerViewData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private initSetData()V
    .locals 6

    .line 1077
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->multiEdit:Z

    const-string v1, "sample"

    const v2, 0x7f0c0020

    .line 1098
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1077
    if-eqz v0, :cond_3

    .line 1078
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    .line 1079
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainUserProgramDataWrapperList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1080
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainUserProgramDataWrapperList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1081
    .local v3, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 1084
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1086
    :goto_1
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1088
    .end local v3    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    goto :goto_2

    .line 1089
    :cond_1
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    aget-object v3, v3, v0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1078
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    goto :goto_3

    .line 1093
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_5

    .line 1094
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->username:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1096
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_3

    .line 1098
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1102
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    const/16 v2, 0x3c

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequency:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->inputramp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->outputramp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1111
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1112
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1114
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1115
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1116
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1117
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1120
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1121
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1122
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1124
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 1125
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 1126
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 1128
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1129
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1130
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1132
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1133
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1134
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1135
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1138
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, " Hz"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, " us"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, " s"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1148
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, " min"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0d003d

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1158
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1159
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1161
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1162
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1163
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1164
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1166
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1167
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1168
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1170
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1171
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1172
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1174
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1175
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1176
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1177
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1180
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 1181
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 1182
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 1183
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 1184
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 147
    const v0, 0x7f0901d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout:Landroid/widget/LinearLayout;

    .line 148
    const v0, 0x7f0901d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout2:Landroid/widget/LinearLayout;

    .line 150
    const v0, 0x7f0901ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon:Landroid/widget/ImageView;

    .line 151
    const v0, 0x7f0901d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->username:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0901fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f09011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0900a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequency:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f090122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0900c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->inputramp:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f09011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->outputramp:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f090126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    .line 163
    const v0, 0x7f0900a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    .line 165
    const v0, 0x7f0900a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    .line 167
    const v0, 0x7f0900a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    .line 170
    const v0, 0x7f090127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    .line 171
    const v0, 0x7f090128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    .line 172
    const v0, 0x7f090129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    .line 174
    const v0, 0x7f09011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    .line 175
    const v0, 0x7f090120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    .line 176
    const v0, 0x7f090121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    .line 178
    const v0, 0x7f090123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    .line 179
    const v0, 0x7f090124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    .line 180
    const v0, 0x7f090125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    .line 182
    const v0, 0x7f0901fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    .line 183
    const v0, 0x7f0901fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    .line 184
    const v0, 0x7f0901ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    .line 186
    const v0, 0x7f090043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    .line 188
    const v0, 0x7f09014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->reset1:Landroid/widget/Button;

    .line 189
    const v0, 0x7f090150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->reset2:Landroid/widget/Button;

    .line 190
    const v0, 0x7f090151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->reset3:Landroid/widget/Button;

    .line 192
    const v0, 0x7f09015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->save:Landroid/widget/Button;

    .line 193
    const v0, 0x7f090078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->close:Landroid/widget/Button;

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    const v1, 0x7f09012c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    const v1, 0x7f09012d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    const v1, 0x7f09012e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    const v1, 0x7f09012f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    const v1, 0x7f090130

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    const v1, 0x7f090131

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    const v1, 0x7f0901da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    const v1, 0x7f0901db

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v3

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    const v1, 0x7f0901dc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v4

    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    const v1, 0x7f0901dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v5

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    const v1, 0x7f0901de

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v6

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    const v1, 0x7f0901df

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v7

    .line 209
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    const v1, 0x7f0901d0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 210
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    const v1, 0x7f0901d1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 211
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    const v1, 0x7f0901d2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    const v1, 0x7f0901d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 213
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    const v1, 0x7f0901d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    const v1, 0x7f0901d5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    const v1, 0x7f09006a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    const v1, 0x7f09006b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    const v1, 0x7f09006c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    const v1, 0x7f09006d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    const v1, 0x7f09006e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    const v1, 0x7f09006f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 223
    return-void
.end method

.method private preCheck()Z
    .locals 9

    .line 952
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    const/16 v1, 0x3c

    .line 975
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 952
    div-int/2addr v0, v1

    .line 953
    .local v0, "value":I
    const v3, 0x7f0d00f6

    const/16 v4, 0x64

    .line 954
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 953
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v0, :cond_2b

    if-le v0, v4, :cond_0

    goto/16 :goto_15

    .line 957
    :cond_0
    iget-object v8, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v8, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/2addr v8, v1

    .line 958
    .end local v0    # "value":I
    .local v8, "value":I
    if-ltz v8, :cond_2a

    if-le v8, v4, :cond_1

    goto/16 :goto_14

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/2addr v0, v1

    .line 963
    .end local v8    # "value":I
    .restart local v0    # "value":I
    if-ltz v0, :cond_29

    if-le v0, v4, :cond_2

    goto/16 :goto_13

    .line 967
    :cond_2
    iget-object v8, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v8, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/2addr v8, v1

    .line 968
    .end local v0    # "value":I
    .restart local v8    # "value":I
    if-ltz v8, :cond_28

    if-le v8, v4, :cond_3

    goto/16 :goto_12

    .line 973
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 974
    .end local v8    # "value":I
    .restart local v0    # "value":I
    const v3, 0x7f0d008d

    if-ltz v0, :cond_27

    if-le v0, v1, :cond_4

    goto/16 :goto_11

    .line 978
    :cond_4
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 979
    if-ltz v0, :cond_26

    if-le v0, v1, :cond_5

    goto/16 :goto_10

    .line 983
    :cond_5
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 984
    if-ltz v0, :cond_25

    if-le v0, v1, :cond_6

    goto/16 :goto_f

    .line 988
    :cond_6
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 989
    if-ltz v0, :cond_24

    if-le v0, v1, :cond_7

    goto/16 :goto_e

    .line 994
    :cond_7
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 995
    const v3, 0x7f0d0052

    const/16 v4, 0x78

    if-ltz v0, :cond_23

    if-le v0, v4, :cond_8

    goto/16 :goto_d

    .line 999
    :cond_8
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1000
    if-ltz v0, :cond_22

    if-le v0, v4, :cond_9

    goto/16 :goto_c

    .line 1004
    :cond_9
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1005
    if-ltz v0, :cond_21

    if-le v0, v4, :cond_a

    goto/16 :goto_b

    .line 1009
    :cond_a
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1010
    if-ltz v0, :cond_20

    if-le v0, v4, :cond_b

    goto/16 :goto_a

    .line 1015
    :cond_b
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1016
    const v3, 0x7f0d008f

    if-ltz v0, :cond_1f

    if-le v0, v1, :cond_c

    goto/16 :goto_9

    .line 1020
    :cond_c
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1021
    if-ltz v0, :cond_1e

    if-le v0, v1, :cond_d

    goto/16 :goto_8

    .line 1025
    :cond_d
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1026
    if-ltz v0, :cond_1d

    if-le v0, v1, :cond_e

    goto/16 :goto_7

    .line 1030
    :cond_e
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1031
    if-ltz v0, :cond_1c

    if-le v0, v1, :cond_f

    goto/16 :goto_6

    .line 1035
    :cond_f
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 1036
    .local v1, "paulseCe":I
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 1037
    .local v2, "value1":I
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 1038
    .local v3, "value2":I
    if-ltz v2, :cond_1b

    if-ltz v3, :cond_1b

    add-int v4, v2, v3

    mul-int/lit16 v5, v1, 0x3e8

    if-le v4, v5, :cond_10

    goto/16 :goto_5

    .line 1042
    :cond_10
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1043
    const v4, 0x7f0d0070

    const/16 v5, 0x190

    if-ltz v0, :cond_1a

    if-le v0, v5, :cond_11

    goto/16 :goto_4

    .line 1047
    :cond_11
    iget-object v8, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1048
    if-ltz v0, :cond_19

    if-le v0, v5, :cond_12

    goto :goto_3

    .line 1052
    :cond_12
    iget-object v8, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1053
    if-ltz v0, :cond_18

    if-le v0, v5, :cond_13

    goto :goto_2

    .line 1057
    :cond_13
    iget-object v8, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1058
    if-ltz v0, :cond_17

    if-le v0, v5, :cond_14

    goto :goto_1

    .line 1063
    :cond_14
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 1064
    const/16 v4, 0xa

    if-ltz v0, :cond_16

    if-le v0, v4, :cond_15

    goto :goto_0

    .line 1069
    :cond_15
    return v6

    .line 1065
    :cond_16
    :goto_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    const v8, 0x7f0d0028

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1066
    return v7

    .line 1059
    :cond_17
    :goto_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v8

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1060
    return v7

    .line 1054
    :cond_18
    :goto_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v8

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1055
    return v7

    .line 1049
    :cond_19
    :goto_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v8

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1050
    return v7

    .line 1044
    :cond_1a
    :goto_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v8

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1045
    return v7

    .line 1039
    :cond_1b
    :goto_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    const v5, 0x7f0d0060

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1040
    return v7

    .line 1032
    .end local v1    # "paulseCe":I
    .end local v2    # "value1":I
    .end local v3    # "value2":I
    :cond_1c
    :goto_6
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1033
    return v7

    .line 1027
    :cond_1d
    :goto_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1028
    return v7

    .line 1022
    :cond_1e
    :goto_8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1023
    return v7

    .line 1017
    :cond_1f
    :goto_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1018
    return v7

    .line 1011
    :cond_20
    :goto_a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1012
    return v7

    .line 1006
    :cond_21
    :goto_b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1007
    return v7

    .line 1001
    :cond_22
    :goto_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1002
    return v7

    .line 996
    :cond_23
    :goto_d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 997
    return v7

    .line 990
    :cond_24
    :goto_e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 991
    return v7

    .line 985
    :cond_25
    :goto_f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 986
    return v7

    .line 980
    :cond_26
    :goto_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 981
    return v7

    .line 975
    :cond_27
    :goto_11
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 976
    return v7

    .line 969
    .end local v0    # "value":I
    .restart local v8    # "value":I
    :cond_28
    :goto_12
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 970
    return v7

    .line 964
    .end local v8    # "value":I
    .restart local v0    # "value":I
    :cond_29
    :goto_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 965
    return v7

    .line 959
    .end local v0    # "value":I
    .restart local v8    # "value":I
    :cond_2a
    :goto_14
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 960
    return v7

    .line 954
    .end local v8    # "value":I
    .restart local v0    # "value":I
    :cond_2b
    :goto_15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 955
    return v7
.end method


# virtual methods
.method public getViewIid()I
    .locals 1

    .line 87
    const v0, 0x7f0b0033

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 98
    .local v1, "bundle":Landroid/os/Bundle;
    const/16 v2, 0x8

    if-eqz v1, :cond_5

    .line 99
    const-string v3, "editProgram"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->editPogram:Z

    .line 100
    const-string v4, "data"

    if-nez v3, :cond_3

    .line 101
    const-string v3, "multiEdit"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->multiEdit:Z

    .line 102
    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainUserProgramDataWrapperList:Ljava/util/List;

    .line 104
    if-eqz v3, :cond_0

    .line 105
    const-class v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainUserProgramDataWrapperList:Ljava/util/List;

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainUserProgramDataWrapperList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 108
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 112
    if-eqz v3, :cond_2

    .line 113
    invoke-static {v3}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    goto :goto_0

    .line 115
    :cond_2
    new-instance v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v3}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    iput-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 118
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 123
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v2, :cond_4

    .line 126
    invoke-static {v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    goto :goto_1

    .line 128
    :cond_4
    new-instance v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 129
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->init()V

    goto :goto_1

    .line 133
    :cond_5
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    new-instance v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 136
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->init()V

    .line 139
    :goto_1
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initPickDataListHz()V

    .line 140
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initSetData()V

    .line 141
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initListener()V

    .line 143
    return-object v0
.end method

.method public onStart()V
    .locals 6

    .line 1188
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;->onStart()V

    .line 1189
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1191
    .local v0, "win":Landroid/view/Window;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1193
    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1196
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1197
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1199
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1201
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    mul-float v4, v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1202
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const v5, 0x3f75c28f    # 0.96f

    mul-float v4, v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1203
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1204
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1205
    return-void
.end method

.method public setSaveProgramListener(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;)V
    .locals 0
    .param p1, "saveProgramListener"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    .line 1073
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->saveProgramListener:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    .line 1074
    return-void
.end method
