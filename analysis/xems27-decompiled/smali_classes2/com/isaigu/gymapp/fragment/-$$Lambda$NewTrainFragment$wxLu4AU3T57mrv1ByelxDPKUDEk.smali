.class public final synthetic Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$wxLu4AU3T57mrv1ByelxDPKUDEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$wxLu4AU3T57mrv1ByelxDPKUDEk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$wxLu4AU3T57mrv1ByelxDPKUDEk;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$wxLu4AU3T57mrv1ByelxDPKUDEk;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$wxLu4AU3T57mrv1ByelxDPKUDEk;->INSTANCE:Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$wxLu4AU3T57mrv1ByelxDPKUDEk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {p1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->lambda$null$16(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    return-void
.end method
