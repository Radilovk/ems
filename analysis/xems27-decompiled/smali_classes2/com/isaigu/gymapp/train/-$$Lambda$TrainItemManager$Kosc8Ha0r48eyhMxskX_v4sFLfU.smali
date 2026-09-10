.class public final synthetic Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$Kosc8Ha0r48eyhMxskX_v4sFLfU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$Kosc8Ha0r48eyhMxskX_v4sFLfU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$Kosc8Ha0r48eyhMxskX_v4sFLfU;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$Kosc8Ha0r48eyhMxskX_v4sFLfU;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$Kosc8Ha0r48eyhMxskX_v4sFLfU;->INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$Kosc8Ha0r48eyhMxskX_v4sFLfU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {p1}, Lcom/isaigu/gymapp/train/TrainItemManager;->lambda$notEmptyItems$8(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result p1

    return p1
.end method
