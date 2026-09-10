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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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

    .prologue
    const/4 v1, 0x6

    .line 46
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;-><init>()V

    .line 69
    new-array v0, v1, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    .line 70
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    .line 71
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    .line 72
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
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

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getPickerViewData(IIILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->preCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->multiEdit:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->saveProgramListener:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)[Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->pickerViewDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Ljava/util/List;I)I
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getSelected(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequency:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->inputramp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->outputramp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
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
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1217
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 1219
    new-instance v0, Lcom/isaigu/gymapp/bean/PickerViewData;

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/isaigu/gymapp/bean/PickerViewData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 1220
    .local v0, "data":Lcom/isaigu/gymapp/bean/PickerViewData;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    add-int/2addr v1, p3

    goto :goto_0

    .line 1222
    .end local v0    # "data":Lcom/isaigu/gymapp/bean/PickerViewData;
    :cond_0
    return-object v2
.end method

.method private getSelected(Ljava/util/List;I)I
    .locals 6
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1209
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1210
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/PickerViewData;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PickerViewData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v4, p2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1214
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1209
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private initListener()V
    .locals 4

    .prologue
    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 224
    move v0, v1

    .line 225
    .local v0, "fi":I
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v1

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "fi":I
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->inputramp:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$2;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$2;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->outputramp:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$3;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$3;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$4;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$4;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$5;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$5;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$6;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$6;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->reset1:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->reset2:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$8;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$8;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->reset3:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->save:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->close:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$11;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$11;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequency:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$13;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$13;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 661
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 672
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$15;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$15;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 677
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 688
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$17;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$17;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 693
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$18;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$18;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 704
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$19;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$19;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 709
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$20;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$20;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 721
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$21;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$21;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 726
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$22;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$22;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 738
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$23;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$23;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 743
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$24;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$24;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 755
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$25;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$25;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 760
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$26;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$26;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 772
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$27;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$27;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 777
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$28;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$28;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 789
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$29;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$29;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 794
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$30;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$30;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 806
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$31;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$31;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 811
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$32;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$32;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 824
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$33;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$33;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 829
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$34;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$34;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 841
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$35;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$35;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 846
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$36;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$36;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 858
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$37;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$37;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 863
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$38;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$38;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 875
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$39;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$39;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 880
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$40;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$40;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 892
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$41;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$41;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 897
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$42;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$42;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 909
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$43;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$43;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 915
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$44;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$44;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 927
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$45;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$45;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V

    .line 932
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountClickListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;)V

    .line 946
    return-void
.end method

.method private initPickDataListHz()V
    .locals 5

    .prologue
    .line 1201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->pickerViewDatas:Ljava/util/List;

    .line 1202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x78

    if-ge v1, v2, :cond_0

    .line 1203
    new-instance v0, Lcom/isaigu/gymapp/bean/PickerViewData;

    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Hz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/isaigu/gymapp/bean/PickerViewData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 1204
    .local v0, "data":Lcom/isaigu/gymapp/bean/PickerViewData;
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->pickerViewDatas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1206
    .end local v0    # "data":Lcom/isaigu/gymapp/bean/PickerViewData;
    :cond_0
    return-void
.end method

.method private initSetData()V
    .locals 9

    .prologue
    const/16 v8, 0x78

    const/16 v7, 0x64

    const/16 v6, 0x190

    const/16 v5, 0x32

    const/16 v4, 0x3c

    .line 1074
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->multiEdit:Z

    if-eqz v2, :cond_2

    .line 1075
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_3

    .line 1076
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainUserProgramDataWrapperList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1077
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainUserProgramDataWrapperList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1078
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const-string v3, "sample"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1079
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1083
    :goto_1
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1075
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1081
    .restart local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    const v3, 0x7f03001c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 1086
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 1090
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_3

    .line 1091
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->username:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const-string v3, "sample"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1093
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1099
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequency:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->inputramp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->outputramp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v8}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1108
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v8}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1109
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v8}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1111
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1112
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1113
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1114
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1117
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1118
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1119
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1121
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1122
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1123
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1125
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v7}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1126
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v7}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1127
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v7}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1128
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 1131
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " Hz"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1132
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " Hz"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1133
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " Hz"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1134
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " us"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1135
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " us"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1136
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " us"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1137
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " us"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1138
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " s"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1139
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " s"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1140
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " s"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1141
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " s"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1142
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " s"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1143
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " s"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1144
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " min"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1145
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " min"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1146
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v3, " min"

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1147
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f080030

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 1150
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1151
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1152
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1154
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1155
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1156
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1157
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1159
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1160
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1161
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1163
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1164
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1165
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1167
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v3, v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1168
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v3, v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1169
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v3, v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1170
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 1173
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 1174
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 1175
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 1176
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 1177
    return-void

    .line 1095
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    const v3, 0x7f03001c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_3
.end method

.method private initView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    const v0, 0x7f0f00ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout:Landroid/widget/LinearLayout;

    .line 148
    const v0, 0x7f0f00cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout2:Landroid/widget/LinearLayout;

    .line 150
    const v0, 0x7f0f009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon:Landroid/widget/ImageView;

    .line 151
    const v0, 0x7f0f00b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->username:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0f00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0f00e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0f00e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequency:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0f00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0f00ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->inputramp:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0f00eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->outputramp:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0f00ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth:Lcom/isaigu/gymapp/widget/AmountView;

    .line 163
    const v0, 0x7f0f00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview1:Lcom/isaigu/gymapp/widget/AmountView;

    .line 164
    const v0, 0x7f0f00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview2:Lcom/isaigu/gymapp/widget/AmountView;

    .line 165
    const v0, 0x7f0f00f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->frequencyview3:Lcom/isaigu/gymapp/widget/AmountView;

    .line 167
    const v0, 0x7f0f00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth1:Lcom/isaigu/gymapp/widget/AmountView;

    .line 168
    const v0, 0x7f0f00f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth2:Lcom/isaigu/gymapp/widget/AmountView;

    .line 169
    const v0, 0x7f0f00fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseWidth3:Lcom/isaigu/gymapp/widget/AmountView;

    .line 171
    const v0, 0x7f0f00ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue1:Lcom/isaigu/gymapp/widget/AmountView;

    .line 172
    const v0, 0x7f0f00f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue2:Lcom/isaigu/gymapp/widget/AmountView;

    .line 173
    const v0, 0x7f0f00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseContinue3:Lcom/isaigu/gymapp/widget/AmountView;

    .line 175
    const v0, 0x7f0f00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop1:Lcom/isaigu/gymapp/widget/AmountView;

    .line 176
    const v0, 0x7f0f00f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop2:Lcom/isaigu/gymapp/widget/AmountView;

    .line 177
    const v0, 0x7f0f00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->paulseStop3:Lcom/isaigu/gymapp/widget/AmountView;

    .line 179
    const v0, 0x7f0f00f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength1:Lcom/isaigu/gymapp/widget/AmountView;

    .line 180
    const v0, 0x7f0f00f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength2:Lcom/isaigu/gymapp/widget/AmountView;

    .line 181
    const v0, 0x7f0f00fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->worklength3:Lcom/isaigu/gymapp/widget/AmountView;

    .line 183
    const v0, 0x7f0f00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->anmozhouqi:Lcom/isaigu/gymapp/widget/AmountView;

    .line 185
    const v0, 0x7f0f00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->reset1:Landroid/widget/Button;

    .line 186
    const v0, 0x7f0f00f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->reset2:Landroid/widget/Button;

    .line 187
    const v0, 0x7f0f00ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->reset3:Landroid/widget/Button;

    .line 189
    const v0, 0x7f0f00ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->save:Landroid/widget/Button;

    .line 190
    const v0, 0x7f0f00ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->close:Landroid/widget/Button;

    .line 192
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f00cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v3

    .line 193
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f00d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v4

    .line 194
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f00d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v5

    .line 195
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f00da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v6

    .line 196
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v7

    .line 197
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;

    const/4 v2, 0x5

    const v0, 0x7f0f00e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v2

    .line 199
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    const v0, 0x7f0f00d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 200
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    const v0, 0x7f0f00d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 201
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    const v0, 0x7f0f00d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 202
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    const v0, 0x7f0f00dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v6

    .line 203
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    const v0, 0x7f0f00e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v7

    .line 204
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userName1:[Landroid/widget/TextView;

    const/4 v2, 0x5

    const v0, 0x7f0f00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 206
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    const v0, 0x7f0f00ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 207
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    const v0, 0x7f0f00d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 208
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    const v0, 0x7f0f00d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v5

    .line 209
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    const v0, 0x7f0f00db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 210
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    const v0, 0x7f0f00df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v7

    .line 211
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->userIcon1:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    const v0, 0x7f0f00e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 213
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    const v0, 0x7f0f00cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 214
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    const v0, 0x7f0f00d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 215
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    const v0, 0x7f0f00d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v5

    .line 216
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    const v0, 0x7f0f00dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 217
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    const v0, 0x7f0f00e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v7

    .line 218
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->check1:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    const v0, 0x7f0f00e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 220
    return-void
.end method

.method private preCheck()Z
    .locals 11

    .prologue
    const/16 v10, 0x78

    const/16 v9, 0x64

    const/16 v8, 0x3c

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 949
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v6, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v1, v6, 0x3c

    .line 950
    .local v1, "value":I
    if-ltz v1, :cond_0

    if-le v1, v9, :cond_2

    .line 951
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f0800cf

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1066
    :cond_1
    :goto_0
    return v4

    .line 954
    :cond_2
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v6, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v1, v6, 0x3c

    .line 955
    if-ltz v1, :cond_3

    if-le v1, v9, :cond_4

    .line 956
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f0800cf

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 957
    goto :goto_0

    .line 959
    :cond_4
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v6, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v1, v6, 0x3c

    .line 960
    if-ltz v1, :cond_5

    if-le v1, v9, :cond_6

    .line 961
    :cond_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f0800cf

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 962
    goto :goto_0

    .line 964
    :cond_6
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v6, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v1, v6, 0x3c

    .line 965
    if-ltz v1, :cond_7

    if-le v1, v9, :cond_8

    .line 966
    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f0800cf

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 967
    goto :goto_0

    .line 970
    :cond_8
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 971
    if-ltz v1, :cond_9

    if-le v1, v8, :cond_a

    .line 972
    :cond_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f08007a

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 973
    goto/16 :goto_0

    .line 975
    :cond_a
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 976
    if-ltz v1, :cond_b

    if-le v1, v8, :cond_c

    .line 977
    :cond_b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f08007a

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 978
    goto/16 :goto_0

    .line 980
    :cond_c
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 981
    if-ltz v1, :cond_d

    if-le v1, v8, :cond_e

    .line 982
    :cond_d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f08007a

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 983
    goto/16 :goto_0

    .line 985
    :cond_e
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 986
    if-ltz v1, :cond_f

    if-le v1, v8, :cond_10

    .line 987
    :cond_f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f08007a

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 988
    goto/16 :goto_0

    .line 991
    :cond_10
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 992
    if-ltz v1, :cond_11

    if-le v1, v10, :cond_12

    .line 993
    :cond_11
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f080045

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 994
    goto/16 :goto_0

    .line 996
    :cond_12
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 997
    if-ltz v1, :cond_13

    if-le v1, v10, :cond_14

    .line 998
    :cond_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f080045

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 999
    goto/16 :goto_0

    .line 1001
    :cond_14
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1002
    if-ltz v1, :cond_15

    if-le v1, v10, :cond_16

    .line 1003
    :cond_15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f080045

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1004
    goto/16 :goto_0

    .line 1006
    :cond_16
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1007
    if-ltz v1, :cond_17

    if-le v1, v10, :cond_18

    .line 1008
    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f080045

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1009
    goto/16 :goto_0

    .line 1012
    :cond_18
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1013
    if-ltz v1, :cond_19

    if-le v1, v8, :cond_1a

    .line 1014
    :cond_19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f08007c

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1015
    goto/16 :goto_0

    .line 1017
    :cond_1a
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1018
    if-ltz v1, :cond_1b

    if-le v1, v8, :cond_1c

    .line 1019
    :cond_1b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f08007c

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1020
    goto/16 :goto_0

    .line 1022
    :cond_1c
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1023
    if-ltz v1, :cond_1d

    if-le v1, v8, :cond_1e

    .line 1024
    :cond_1d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f08007c

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1025
    goto/16 :goto_0

    .line 1027
    :cond_1e
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1028
    if-ltz v1, :cond_1f

    if-le v1, v8, :cond_20

    .line 1029
    :cond_1f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f08007c

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1030
    goto/16 :goto_0

    .line 1032
    :cond_20
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 1033
    .local v0, "paulseCe":I
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 1034
    .local v2, "value1":I
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 1035
    .local v3, "value2":I
    if-ltz v2, :cond_21

    if-ltz v3, :cond_21

    add-int v6, v2, v3

    mul-int/lit16 v7, v0, 0x3e8

    if-le v6, v7, :cond_22

    .line 1036
    :cond_21
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    const v6, 0x7f080053

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1037
    goto/16 :goto_0

    .line 1039
    :cond_22
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1040
    if-ltz v1, :cond_23

    const/16 v6, 0x190

    if-le v1, v6, :cond_24

    .line 1041
    :cond_23
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f080062

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v8, 0x190

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1042
    goto/16 :goto_0

    .line 1044
    :cond_24
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1045
    if-ltz v1, :cond_25

    const/16 v6, 0x190

    if-le v1, v6, :cond_26

    .line 1046
    :cond_25
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f080062

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v8, 0x190

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1047
    goto/16 :goto_0

    .line 1049
    :cond_26
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1050
    if-ltz v1, :cond_27

    const/16 v6, 0x190

    if-le v1, v6, :cond_28

    .line 1051
    :cond_27
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f080062

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v8, 0x190

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1052
    goto/16 :goto_0

    .line 1054
    :cond_28
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1055
    if-ltz v1, :cond_29

    const/16 v6, 0x190

    if-le v1, v6, :cond_2a

    .line 1056
    :cond_29
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f080062

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v8, 0x190

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1057
    goto/16 :goto_0

    .line 1060
    :cond_2a
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 1061
    if-ltz v1, :cond_2b

    const/16 v6, 0xa

    if-le v1, v6, :cond_1

    .line 1062
    :cond_2b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    const v7, 0x7f08001e

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    move v4, v5

    .line 1063
    goto/16 :goto_0
.end method


# virtual methods
.method public getViewIid()I
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f040033

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_5

    .line 99
    const-string v2, "editProgram"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->editPogram:Z

    .line 100
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->editPogram:Z

    if-nez v2, :cond_3

    .line 101
    const-string v2, "multiEdit"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->multiEdit:Z

    .line 102
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->multiEdit:Z

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainUserProgramDataWrapperList:Ljava/util/List;

    .line 104
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainUserProgramDataWrapperList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainUserProgramDataWrapperList:Ljava/util/List;

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainUserProgramDataWrapperList:Ljava/util/List;

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainUserProgramDataWrapperList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 108
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    :goto_0
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initPickDataListHz()V

    .line 140
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initSetData()V

    .line 141
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initListener()V

    .line 143
    return-object v1

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 112
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 117
    :goto_1
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 118
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_2
    new-instance v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 123
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v2, :cond_4

    .line 126
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    goto :goto_0

    .line 128
    :cond_4
    new-instance v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 129
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->init()V

    goto :goto_0

    .line 133
    :cond_5
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->usericonLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    new-instance v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 136
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->init()V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1181
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;->onStart()V

    .line 1182
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1184
    .local v2, "win":Landroid/view/Window;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1186
    const v3, 0x7f0d0054

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1189
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1190
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1192
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1194
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1195
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const v4, 0x3f75c28f    # 0.96f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1196
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1197
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1198
    return-void
.end method

.method public setSaveProgramListener(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;)V
    .locals 0
    .param p1, "saveProgramListener"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->saveProgramListener:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    .line 1071
    return-void
.end method
