.class public final synthetic Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$KMZi3lztyuzd4mudgGf1YCOcs4U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$KMZi3lztyuzd4mudgGf1YCOcs4U;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$KMZi3lztyuzd4mudgGf1YCOcs4U;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$KMZi3lztyuzd4mudgGf1YCOcs4U;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$KMZi3lztyuzd4mudgGf1YCOcs4U;->f$1:Ljava/util/List;

    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0, v1, p1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->lambda$settingAllUser$15(Ljava/util/ArrayList;Ljava/util/List;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    return-void
.end method
