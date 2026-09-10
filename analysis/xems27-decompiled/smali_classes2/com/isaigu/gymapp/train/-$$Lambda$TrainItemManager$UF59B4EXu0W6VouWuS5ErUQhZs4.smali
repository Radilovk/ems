.class public final synthetic Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$UF59B4EXu0W6VouWuS5ErUQhZs4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$UF59B4EXu0W6VouWuS5ErUQhZs4;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$UF59B4EXu0W6VouWuS5ErUQhZs4;->f$0:I

    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/TrainItemManager;->lambda$addAllPartValue$7(ILcom/isaigu/gymapp/train/model/TrainItem;)V

    return-void
.end method
