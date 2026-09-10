.class public final synthetic Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$BfRETC9lVVHxNTQpHrRL39OJZCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$BfRETC9lVVHxNTQpHrRL39OJZCU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$BfRETC9lVVHxNTQpHrRL39OJZCU;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$BfRETC9lVVHxNTQpHrRL39OJZCU;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$BfRETC9lVVHxNTQpHrRL39OJZCU;->INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$BfRETC9lVVHxNTQpHrRL39OJZCU;

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

    invoke-static {p1}, Lcom/isaigu/gymapp/train/TrainItemManager;->lambda$stopAll$3(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    return-void
.end method
