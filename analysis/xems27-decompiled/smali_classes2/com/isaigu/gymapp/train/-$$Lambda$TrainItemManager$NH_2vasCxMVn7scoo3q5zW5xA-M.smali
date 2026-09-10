.class public final synthetic Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$NH_2vasCxMVn7scoo3q5zW5xA-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$NH_2vasCxMVn7scoo3q5zW5xA-M;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p2, p0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$NH_2vasCxMVn7scoo3q5zW5xA-M;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$NH_2vasCxMVn7scoo3q5zW5xA-M;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget v1, p0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$NH_2vasCxMVn7scoo3q5zW5xA-M;->f$1:I

    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0, v1, p1}, Lcom/isaigu/gymapp/train/TrainItemManager;->lambda$addAllPartValue$6(Ljava/util/concurrent/atomic/AtomicBoolean;ILcom/isaigu/gymapp/train/model/TrainItem;)V

    return-void
.end method
