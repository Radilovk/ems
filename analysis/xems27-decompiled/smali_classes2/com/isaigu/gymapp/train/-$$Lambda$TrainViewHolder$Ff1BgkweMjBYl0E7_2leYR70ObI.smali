.class public final synthetic Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$Ff1BgkweMjBYl0E7_2leYR70ObI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;


# instance fields
.field public final synthetic f$0:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$Ff1BgkweMjBYl0E7_2leYR70ObI;->f$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    return-void
.end method


# virtual methods
.method public final onTrainItemChange()V
    .locals 1

    iget-object v0, p0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$Ff1BgkweMjBYl0E7_2leYR70ObI;->f$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->lambda$bindNotEmpty$9$TrainViewHolder()V

    return-void
.end method
