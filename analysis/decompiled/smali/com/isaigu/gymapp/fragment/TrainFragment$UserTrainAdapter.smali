.class public Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserTrainAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;,
        Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    }
.end annotation


# instance fields
.field private buweiSelected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[Z>;"
        }
    .end annotation
.end field

.field private colorArray:[[I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private maButtonBackgroundArray:[I

.field private maSelected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

.field private timerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field public userTrainControlHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    const v9, 0x7f0d0027

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 596
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 572
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v8, [I

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f0d0059

    .line 573
    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f0d0059

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v6

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f0d0026

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [I

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f0d005b

    .line 574
    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2, v9}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v6

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2, v9}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [I

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f0d00a7

    .line 575
    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f0d00a7

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v6

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f0d0044

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [I

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f0d0059

    .line 576
    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f0d0059

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v6

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f0d0026

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-array v2, v8, [I

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v4, 0x7f0d005b

    .line 577
    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    aput v3, v2, v5

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3, v9}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    aput v3, v2, v6

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3, v9}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v8, [I

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v4, 0x7f0d00a7

    .line 578
    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    aput v3, v2, v5

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v4, 0x7f0d00a7

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    aput v3, v2, v6

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v4, 0x7f0d0044

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    aput v3, v2, v7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    .line 581
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maButtonBackgroundArray:[I

    .line 589
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    .line 590
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    .line 591
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    .line 592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    .line 594
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->timerMap:Ljava/util/HashMap;

    .line 597
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    .line 598
    return-void

    .line 581
    :array_0
    .array-data 4
        0x7f02008b
        0x7f02008c
        0x7f020065
        0x7f02008b
        0x7f02008c
        0x7f020065
    .end array-data
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p2, "x2"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p3, "x3"    # I

    .prologue
    .line 570
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p4, "x4"    # Z

    .prologue
    .line 570
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->removeTrainRecord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "x2"    # I

    .prologue
    .line 570
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .prologue
    .line 570
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 570
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTrainRecordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;II)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "x2"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 570
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->changeTrainType(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->addTrainRecord(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "x2"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "x3"    # I

    .prologue
    .line 570
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;B)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # B

    .prologue
    .line 570
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleGetBattery(Ljava/lang/String;B)V

    return-void
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "x2"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "x3"    # I

    .prologue
    .line 570
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopUser(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    return-void
.end method

.method private addListener(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .locals 4
    .param p1, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "position"    # I

    .prologue
    .line 1391
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1394
    :cond_1
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$4;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$4;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView2;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;)V

    .line 1408
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/AmountView2;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;)V

    .line 1422
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->setting:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1444
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V

    .line 1480
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1481
    move v0, v1

    .line 1482
    .local v0, "fi":I
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v2, v2, v1

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setOnStateChangeListener(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;)V

    .line 1519
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$9;

    invoke-direct {v3, p0, p3, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$9;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1480
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1527
    .end local v0    # "fi":I
    :cond_2
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$10;

    invoke-direct {v3, p0, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$10;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1533
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->save:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    invoke-direct {v3, p0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1660
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->strenth:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1665
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->youyang:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$13;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$13;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1670
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->anmo:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$14;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$14;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1675
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->startpause:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$15;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$15;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1697
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->stop:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$16;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$16;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;ILcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private addTrainRecord(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .locals 4
    .param p1, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .prologue
    .line 1708
    if-eqz p1, :cond_0

    iget-boolean v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v2, :cond_1

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1711
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1712
    new-instance v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;-><init>()V

    .line 1713
    .local v1, "recordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->userId:Ljava/lang/Long;

    .line 1714
    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->useType:I

    .line 1715
    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->getProgramDataBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1716
    .local v0, "program":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulseContinue:I

    .line 1717
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulseWidth:I

    .line 1718
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulsePause:I

    .line 1719
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->workLength:I

    .line 1720
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->hz:I

    .line 1721
    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->trainName:Ljava/lang/String;

    .line 1722
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->strenth:I

    .line 1723
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->inputRamp:I

    .line 1724
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->outputRamp:I

    .line 1725
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    .line 1726
    const/4 v2, 0x0

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    .line 1728
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private changeTrainType(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;II)V
    .locals 5
    .param p1, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "oriType"    # I
    .param p4, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 1793
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1812
    :cond_0
    :goto_0
    return-void

    .line 1796
    :cond_1
    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->removeTrainRecord(Ljava/lang/String;)V

    .line 1797
    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-eq v3, p3, :cond_2

    move v1, p3

    .line 1798
    .local v1, "type":I
    :goto_1
    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput v1, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 1799
    iput-boolean v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 1800
    iput-boolean v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1801
    iput v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1802
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1804
    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->getProgramDataBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1805
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iput v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1806
    iget-object v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    invoke-direct {p0, v2, v3, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 1807
    iget-object v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-boolean v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    .line 1809
    invoke-direct {p0, p1, p2, p4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 1810
    invoke-direct {p0, p1, p4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    goto :goto_0

    .end local v0    # "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .end local v1    # "type":I
    :cond_2
    move v1, v2

    .line 1797
    goto :goto_1
.end method

.method private emptyItemCheck()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 619
    sget-boolean v6, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v8, :cond_0

    .line 620
    new-instance v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v5}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    .line 621
    .local v5, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iput v8, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    .line 622
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    .end local v5    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_0
    sget-boolean v6, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    if-nez v6, :cond_8

    .line 626
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v9, :cond_1

    .line 627
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    rsub-int/lit8 v6, v4, 0x3

    if-ge v2, v6, :cond_4

    .line 628
    new-instance v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v5}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    .line 629
    .restart local v5    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iput v8, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    .line 630
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    .end local v2    # "i":I
    .end local v4    # "size":I
    .end local v5    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_1
    const/4 v0, 0x1

    .line 634
    .local v0, "allItem":Z
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 635
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v6, v8, :cond_2

    .line 636
    const/4 v0, 0x0

    .line 634
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 639
    :cond_3
    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_4

    .line 640
    new-instance v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v5}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    .line 641
    .restart local v5    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iput v8, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    .line 642
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    .end local v0    # "allItem":Z
    .end local v5    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_4
    const/4 v3, 0x0

    .local v3, "itemCount":I
    const/4 v1, 0x0

    .line 646
    .local v1, "emptyCount":I
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 647
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v6, v8, :cond_6

    .line 648
    add-int/lit8 v1, v1, 0x1

    .line 646
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 649
    :cond_6
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v6, :cond_5

    .line 650
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 653
    :cond_7
    add-int v6, v3, v1

    if-le v6, v9, :cond_8

    if-le v1, v8, :cond_8

    .line 654
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 658
    .end local v1    # "emptyCount":I
    .end local v2    # "i":I
    .end local v3    # "itemCount":I
    :cond_8
    return-void
.end method

.method private handleGetBattery(Ljava/lang/String;B)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "battery"    # B

    .prologue
    .line 780
    :try_start_0
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 781
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 782
    :try_start_1
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 783
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ge v2, v4, :cond_0

    .line 785
    :try_start_2
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_2

    .line 786
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 787
    .local v3, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 788
    .local v1, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 789
    iput p2, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    .line 790
    iget-object v4, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batterView:Lcom/isaigu/gymapp/widget/BatterView;

    invoke-virtual {v4, p2}, Lcom/isaigu/gymapp/widget/BatterView;->setProgress(I)V

    .line 791
    iget-object v6, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batteryValueTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 800
    .end local v1    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local v2    # "i":I
    .end local v3    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_0
    :try_start_3
    monitor-exit v5

    .line 805
    :cond_1
    :goto_1
    return-void

    .line 795
    .restart local v2    # "i":I
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 783
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 800
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 802
    :catch_1
    move-exception v0

    .line 803
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private isPartSelected()Z
    .locals 4

    .prologue
    .line 963
    const/4 v2, 0x0

    .line 964
    .local v2, "select":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 965
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 966
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_2

    .line 967
    const/4 v2, 0x1

    .line 971
    :cond_0
    if-eqz v2, :cond_3

    .line 975
    .end local v1    # "j":I
    :cond_1
    return v2

    .line 965
    .restart local v1    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 964
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isRowSelected()Z
    .locals 3

    .prologue
    .line 978
    const/4 v1, 0x0

    .line 979
    .local v1, "selected":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 980
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 981
    const/4 v1, 0x1

    .line 985
    :cond_0
    return v1

    .line 979
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeTrainRecord(Ljava/lang/String;)V
    .locals 1
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    :cond_0
    return-void
.end method

.method private set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .locals 12
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "useType"    # I
    .param p3, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    .line 1841
    iget-object v0, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v2, v0

    iget-object v0, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v3, v0

    iget-object v0, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v4, v0

    iget-object v0, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v5, v0

    iget-object v0, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v6, v0

    iget-object v0, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v7, v0

    iget-object v0, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v8, v0

    iget-object v0, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v9, v0

    iget-object v0, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v10, v0

    iget-object v0, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v11, v0

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v11}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_mode_10_part_parameter(Ljava/lang/String;IIIIIIIIIII)V

    .line 1852
    return-void
.end method

.method private set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V
    .locals 11
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "useType"    # I
    .param p3, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p4, "start"    # Z

    .prologue
    .line 1858
    iget v2, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iget v3, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iget v4, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iget v5, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget v6, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iget v7, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iget v8, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iget v9, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    move-object v0, p1

    move v1, p2

    move v10, p4

    invoke-static/range {v0 .. v10}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_mode_other_parameter(Ljava/lang/String;IIIIIIIIIZ)V

    .line 1863
    return-void
.end method

.method private declared-synchronized startTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .locals 6
    .param p1, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p2, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p3, "position"    # I

    .prologue
    .line 1125
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1289
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1128
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1129
    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v0

    .line 1288
    .local v0, "timer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->timerMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1125
    .end local v0    # "timer":Ljava/util/Timer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized stopTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .locals 2
    .param p1, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p2, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p3, "position"    # I

    .prologue
    .line 1109
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1122
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1112
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->timerMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->timerMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 1114
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopUser(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .locals 7
    .param p1, "holder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "position"    # I

    .prologue
    .line 1814
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1837
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1817
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v5, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    .line 1818
    .local v2, "train":Lcom/isaigu/gymapp/bean/TrainProgram;
    if-nez v2, :cond_2

    .line 1819
    new-instance v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    .end local v2    # "train":Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;-><init>()V

    .line 1821
    .restart local v2    # "train":Lcom/isaigu/gymapp/bean/TrainProgram;
    :cond_2
    invoke-static {v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1822
    .local v3, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1823
    .local v0, "oldTrainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iput-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1824
    iget-object v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v5, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iput v5, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 1825
    iget-object v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/bean/TrainProgram;->getProgramDataBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 1826
    .local v1, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    const/4 v4, 0x0

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1827
    const/4 v4, 0x0

    iput-boolean v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 1828
    const/4 v4, 0x0

    iput-boolean v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1829
    const/4 v4, 0x0

    iput v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1830
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1831
    iget-object v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/bean/TrainProgram;->reset()V

    .line 1832
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 1833
    invoke-direct {p0, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1835
    iget-object v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v5, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-boolean v6, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-direct {p0, v4, v5, v1, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1814
    .end local v0    # "oldTrainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v1    # "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .end local v2    # "train":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v3    # "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .locals 2
    .param p1, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "position"    # I

    .prologue
    .line 1097
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p2, v1, :cond_1

    .line 1106
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1101
    .local v0, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_2

    .line 1102
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->startTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    goto :goto_0

    .line 1104
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    goto :goto_0
.end method

.method private updateTrainRecordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1733
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_1

    .line 1754
    .end local p3    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1736
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1739
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    .line 1740
    .local v1, "recordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    const-string v2, "maxBodyStrenth"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1741
    check-cast p3, Ljava/lang/Float;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1742
    .local v0, "integer":F
    iget v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    int-to-float v2, v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    .line 1743
    float-to-int v2, v0

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    .line 1744
    float-to-int v2, v0

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->strenth:I

    goto :goto_0

    .line 1746
    .end local v0    # "integer":F
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_2
    const-string v2, "minBodyStrenth"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1747
    check-cast p3, Ljava/lang/Float;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1748
    .restart local v0    # "integer":F
    iget v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    int-to-float v2, v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 1749
    float-to-int v2, v0

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    goto :goto_0

    .line 1752
    .end local v0    # "integer":F
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {v1, p2, p3}, Lcom/isaigu/gymapp/utils/ReflectUtils;->setObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .locals 10
    .param p1, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "position"    # I

    .prologue
    .line 1324
    if-eqz p2, :cond_0

    iget-object v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v4, :cond_0

    if-ltz p3, :cond_0

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1328
    .local v1, "program":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 1329
    .local v3, "trainUser":Lcom/isaigu/gymapp/bean/TrainUser;
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v4, :cond_3

    .line 1332
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->signalImage:Landroid/widget/ImageView;

    const v5, 0x7f03005b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1338
    :goto_1
    iget-object v5, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batterView:Lcom/isaigu/gymapp/widget/BatterView;

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v5, v4}, Lcom/isaigu/gymapp/widget/BatterView;->setProgress(I)V

    .line 1339
    iget-object v5, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batteryValueTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->getProgramDataBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 1341
    .local v2, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v4, 0xa

    if-ge v0, v4, :cond_4

    .line 1342
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    aget-object v5, v5, p3

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    aget-object v6, v6, p3

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    aget-object v7, v7, p3

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setColorArray(III)V

    .line 1343
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v4, v4, v0

    iget-object v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v5, v5, v0

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 1344
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v6, 0x7f080060

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v8, v8, v0

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    iget v9, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v6, 0x7f0d004c

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1347
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_2

    .line 1348
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    aget-object v5, v5, p3

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1341
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1335
    .end local v0    # "i":I
    .end local v2    # "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :cond_3
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->signalImage:Landroid/widget/ImageView;

    const v5, 0x7f03005a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1351
    .restart local v0    # "i":I
    .restart local v2    # "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :cond_4
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    aget-object v5, v5, p3

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    aget-object v6, v6, p3

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    aget-object v7, v7, p3

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSectionColors(III)V

    .line 1352
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v6, 0x7f080060

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1355
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maButtonBackgroundArray:[I

    aget v5, v5, p3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1360
    :goto_3
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->strenth:Landroid/widget/Button;

    const v5, 0x7f0200bb

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1361
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->youyang:Landroid/widget/Button;

    const v5, 0x7f0200bb

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1362
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->anmo:Landroid/widget/Button;

    const v5, 0x7f0200bb

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1363
    iget v4, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 1364
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->strenth:Landroid/widget/Button;

    const v5, 0x7f0200bd

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1371
    :cond_5
    :goto_4
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v5, v5

    const/high16 v6, 0x42960000    # 75.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 1373
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    const-string v5, " s"

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountUnit(Ljava/lang/String;)V

    .line 1374
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    const-string v5, " s"

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountUnit(Ljava/lang/String;)V

    .line 1375
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/AmountView2;->setGoods_storage(I)V

    .line 1376
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/AmountView2;->setGoods_storage(I)V

    .line 1377
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmount(I)V

    .line 1378
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmount(I)V

    .line 1380
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->name:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->address:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->time:Landroid/widget/TextView;

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    invoke-static {v5}, Lcom/isaigu/gymapp/mgr/CommonUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v4, :cond_9

    .line 1385
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->startpause:Landroid/widget/Button;

    const v5, 0x7f030060

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1357
    :cond_6
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    const v5, 0x7f02008a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 1365
    :cond_7
    iget v4, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 1366
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->youyang:Landroid/widget/Button;

    const v5, 0x7f0200bc

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 1367
    :cond_8
    iget v4, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 1368
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->anmo:Landroid/widget/Button;

    const v5, 0x7f0200ba

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 1387
    :cond_9
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->startpause:Landroid/widget/Button;

    const v5, 0x7f03005d

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized addUser(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .locals 6
    .param p1, "data"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 661
    monitor-enter p0

    if-nez p1, :cond_0

    .line 662
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "synchronized  addUser data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    :goto_0
    monitor-exit p0

    return-void

    .line 665
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f53\u524d\u6a21\u5f0f \uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 666
    sget-boolean v2, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    if-eqz v2, :cond_5

    .line 667
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_3

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v2, v4, :cond_3

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "containEmpty":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 670
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v2, v4, :cond_4

    .line 671
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 672
    const/4 v0, 0x1

    .line 676
    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v5, :cond_2

    .line 677
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_2
    if-eqz v0, :cond_3

    .line 680
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    const/16 v3, 0xa

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 705
    .end local v0    # "containEmpty":Z
    .end local v1    # "i":I
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->emptyItemCheck()V

    .line 706
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 661
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 669
    .restart local v0    # "containEmpty":Z
    .restart local v1    # "i":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 686
    .end local v0    # "containEmpty":Z
    .end local v1    # "i":I
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v5, :cond_3

    .line 687
    const/4 v0, 0x0

    .line 688
    .restart local v0    # "containEmpty":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 689
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v2, v4, :cond_8

    .line 690
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 691
    const/4 v0, 0x1

    .line 695
    :cond_6
    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v5, :cond_7

    .line 696
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_7
    if-eqz v0, :cond_3

    .line 699
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    const/16 v3, 0xa

    new-array v3, v3, [Z

    fill-array-data v3, :array_1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 688
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 680
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 699
    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public clearAllMASelect()V
    .locals 4

    .prologue
    .line 956
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 957
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 958
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 959
    .local v0, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v0, v2, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 956
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v0    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    :cond_0
    return-void
.end method

.method public clearAllPartSelect()V
    .locals 5

    .prologue
    .line 945
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 946
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 947
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    .line 946
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 949
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 950
    .local v0, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v0, v3, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 945
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 953
    .end local v0    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method public firstUpdatePulseContinue(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .locals 8
    .param p1, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .prologue
    const v7, 0x7f0d00a3

    const v6, 0x7f0d00a2

    const/high16 v5, 0x41f00000    # 30.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1764
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1790
    :cond_0
    :goto_0
    return-void

    .line 1767
    :cond_1
    iget-object v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->getProgramDataBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1768
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    const/4 v1, 0x0

    .line 1769
    .local v1, "progress":I
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v2, :cond_2

    .line 1771
    iput-boolean v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1772
    iget v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v5

    float-to-int v1, v2

    .line 1773
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1774
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1775
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 1776
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1777
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1779
    :cond_2
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v2, :cond_0

    .line 1781
    const/4 v2, 0x1

    iput-boolean v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1782
    iget v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v5

    float-to-int v1, v2

    .line 1783
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1784
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1785
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3, v7}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 1786
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1787
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iget v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1788
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3, v7}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1869
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1876
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1877
    .local v0, "user":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    return v1
.end method

.method public getmData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public handleColumnOperation(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 918
    if-ltz p1, :cond_0

    const/16 v4, 0x9

    if-le p1, v4, :cond_1

    .line 939
    :cond_0
    return-void

    .line 921
    :cond_1
    const/4 v0, 0x1

    .line 922
    .local v0, "allSelect":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 923
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    aget-boolean v4, v4, p1

    if-nez v4, :cond_4

    .line 924
    const/4 v0, 0x0

    .line 929
    :cond_2
    const/4 v3, 0x0

    .line 930
    .local v3, "value":Z
    if-nez v0, :cond_3

    .line 931
    const/4 v3, 0x1

    .line 933
    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 934
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    aput-boolean v3, v4, p1

    .line 935
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 936
    .local v1, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v1, v4, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 922
    .end local v1    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local v3    # "value":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized handleConnectionStatusChange(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "connected"    # Z

    .prologue
    .line 1295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    monitor-exit p0

    return-void

    .line 1295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleRowAndIndexOperation(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "index"    # I

    .prologue
    .line 893
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x9

    if-le p2, v0, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    aget-boolean v1, v1, p2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    aput-boolean v1, v0, p2

    .line 897
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v0, v1, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    goto :goto_0

    .line 896
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handleRowOperation(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 902
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 906
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 907
    .local v0, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 908
    iget-object v1, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maButtonBackgroundArray:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 909
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    .line 914
    :goto_2
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v0, v1, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    goto :goto_0

    .line 905
    .end local v0    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 911
    .restart local v0    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    :cond_3
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$800(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    .line 912
    iget-object v1, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public handleStartPauseAllUser()V
    .locals 8

    .prologue
    .line 825
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 826
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 827
    .local v3, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-eqz v4, :cond_1

    .line 825
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 830
    :cond_1
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 831
    .local v2, "userTrainControlHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    if-eqz v2, :cond_0

    .line 832
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 833
    const/4 v4, 0x0

    iput v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 834
    iget-boolean v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v4, :cond_3

    .line 835
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 836
    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->firstUpdatePulseContinue(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    .line 840
    :goto_2
    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/bean/TrainProgram;->getProgramDataBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 841
    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/bean/TrainProgram;->getProgramDataBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    iget-boolean v7, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    .line 843
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v2, v4, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 844
    invoke-direct {p0, v2, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 847
    .end local v2    # "userTrainControlHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local v3    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 851
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 838
    .restart local v2    # "userTrainControlHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .restart local v3    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public handleStartPauseAllUser(Z)V
    .locals 8
    .param p1, "start"    # Z

    .prologue
    .line 855
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 856
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 857
    .local v3, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-eqz v4, :cond_1

    .line 855
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 860
    :cond_1
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 861
    .local v2, "userTrainControlHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    if-eqz v2, :cond_0

    .line 862
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 863
    const/4 v4, 0x0

    iput v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 864
    iput-boolean p1, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 865
    iget-boolean v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v4, :cond_2

    .line 866
    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->firstUpdatePulseContinue(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    .line 868
    :cond_2
    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/bean/TrainProgram;->getProgramDataBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 869
    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/bean/TrainProgram;->getProgramDataBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    iget-boolean v7, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    .line 871
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v2, v4, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 872
    invoke-direct {p0, v2, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 875
    .end local v2    # "userTrainControlHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local v3    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 879
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method public handleStopAllUser()V
    .locals 5

    .prologue
    .line 882
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 883
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 884
    .local v2, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-boolean v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v3, :cond_0

    .line 885
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 886
    .local v0, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    invoke-direct {p0, v0, v2, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopUser(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 882
    .end local v0    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 890
    .end local v2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_1
    return-void
.end method

.method public handleStrenthChange(I)V
    .locals 13
    .param p1, "value"    # I

    .prologue
    const/16 v10, 0x64

    const/4 v12, 0x0

    const/high16 v11, 0x42c80000    # 100.0f

    .line 1000
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->isPartSelected()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1001
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_b

    .line 1002
    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1003
    .local v7, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget v8, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-eqz v8, :cond_0

    .line 1001
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1006
    :cond_0
    iget-object v8, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/bean/TrainProgram;->getProgramDataBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 1007
    .local v1, "dataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget-boolean v8, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v8, :cond_4

    .line 1008
    const/4 v0, 0x0

    .line 1009
    .local v0, "contain":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Z

    array-length v8, v8

    if-ge v4, v8, :cond_3

    .line 1010
    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Z

    aget-boolean v8, v8, v4

    if-eqz v8, :cond_1

    .line 1011
    const/4 v0, 0x1

    .line 1012
    iget v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1013
    .local v5, "strenth":I
    if-lez v5, :cond_1

    .line 1014
    iget-object v8, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v8, v8, v4

    int-to-float v8, v8

    div-float/2addr v8, v11

    int-to-float v9, v5

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1015
    .local v6, "vStrenth":I
    add-int/2addr v6, p1

    .line 1016
    invoke-static {v6, v12, v5}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v6

    .line 1017
    if-lez p1, :cond_2

    .line 1018
    iget-object v8, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    int-to-float v9, v6

    mul-float/2addr v9, v11

    int-to-float v10, v5

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v8, v4

    .line 1009
    .end local v5    # "strenth":I
    .end local v6    # "vStrenth":I
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1020
    .restart local v5    # "strenth":I
    .restart local v6    # "vStrenth":I
    :cond_2
    iget-object v8, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    int-to-float v9, v6

    mul-float/2addr v9, v11

    int-to-float v10, v5

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v8, v4

    goto :goto_3

    .line 1025
    .end local v5    # "strenth":I
    .end local v6    # "vStrenth":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1026
    iget-object v8, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v9, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v9, v9, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    invoke-direct {p0, v8, v9, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 1029
    .end local v0    # "contain":Z
    .end local v4    # "j":I
    :cond_4
    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 1030
    .local v2, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v2, v8, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    goto/16 :goto_1

    .line 1032
    .end local v1    # "dataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .end local v2    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local v3    # "i":I
    .end local v7    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_5
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->isRowSelected()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1033
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_b

    .line 1034
    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1035
    .restart local v7    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-eqz v8, :cond_7

    .line 1033
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1038
    :cond_7
    iget-object v8, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/bean/TrainProgram;->getProgramDataBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 1039
    .restart local v1    # "dataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget-boolean v8, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v8, :cond_a

    .line 1040
    iget v8, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    add-int/2addr v8, p1

    iput v8, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1041
    iget v8, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-le v8, v10, :cond_8

    .line 1042
    iput v10, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1044
    :cond_8
    iget v8, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-gez v8, :cond_9

    .line 1045
    iput v12, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1047
    :cond_9
    iget-object v8, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v9, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v9, v9, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    invoke-direct {p0, v8, v9, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 1049
    :cond_a
    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 1050
    .restart local v2    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v2, v8, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    goto :goto_5

    .line 1093
    .end local v1    # "dataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .end local v2    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local v3    # "i":I
    .end local v7    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_b
    return-void
.end method

.method public isSomeoneStart()Z
    .locals 3

    .prologue
    .line 811
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 812
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 813
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-eqz v2, :cond_1

    .line 811
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    :cond_1
    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v2, :cond_0

    .line 817
    const/4 v2, 0x1

    .line 820
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 756
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getItemViewType(I)I

    move-result v3

    if-nez v3, :cond_1

    move-object v1, p1

    .line 757
    check-cast v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 758
    .local v1, "userHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "holder position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 760
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 761
    .local v2, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const-string v4, "sample"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 762
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    new-array v4, v5, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v5, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 767
    :goto_0
    iget-object v0, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 768
    .local v0, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    if-eqz v0, :cond_0

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v3, :cond_3

    .line 769
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data bean null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 776
    .end local v0    # "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v1    # "userHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local v2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_1
    :goto_1
    return-void

    .line 764
    .restart local v1    # "userHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .restart local v2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_2
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    const v4, 0x7f03001c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    new-array v4, v5, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v5, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 772
    .restart local v0    # "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    :cond_3
    invoke-direct {p0, v1, v2, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->addListener(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 773
    invoke-direct {p0, v1, v2, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 774
    invoke-direct {p0, v1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 731
    if-nez p2, :cond_1

    .line 732
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04006f

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 733
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 734
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 735
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 737
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 738
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 739
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    invoke-direct {v2, p0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Landroid/view/View;)V

    .line 750
    :goto_0
    return-object v2

    .line 742
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040069

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 743
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 744
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_2

    .line 745
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 747
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 748
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 749
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;

    invoke-direct {v2, p0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Landroid/view/View;)V

    goto :goto_0
.end method

.method public declared-synchronized removeUser(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 710
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    .line 711
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 727
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 715
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 716
    .local v0, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/mgr/DataMgr;->removeTrainingUser(Ljava/lang/String;)V

    .line 717
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectByAddress(Ljava/lang/String;)Z

    .line 718
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 719
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 720
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$700(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$500(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->emptyItemCheck()V

    .line 726
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 710
    .end local v0    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateAdapter(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    .line 602
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    if-nez v1, :cond_0

    .line 603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    .line 605
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 606
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    const/16 v2, 0xa

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 610
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->emptyItemCheck()V

    .line 611
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->notifyDataSetChanged()V

    .line 612
    return-void

    .line 606
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
