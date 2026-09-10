.class public final synthetic Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$1$AznCd_PX9U_AFipHY0-fJKnkhF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/isaigu/gymapp/train/TrainViewHolder$1;

.field public final synthetic f$1:Lcom/isaigu/gymapp/bean/TrainProgram;


# direct methods
.method public synthetic constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder$1;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$1$AznCd_PX9U_AFipHY0-fJKnkhF8;->f$0:Lcom/isaigu/gymapp/train/TrainViewHolder$1;

    iput-object p2, p0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$1$AznCd_PX9U_AFipHY0-fJKnkhF8;->f$1:Lcom/isaigu/gymapp/bean/TrainProgram;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$1$AznCd_PX9U_AFipHY0-fJKnkhF8;->f$0:Lcom/isaigu/gymapp/train/TrainViewHolder$1;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$1$AznCd_PX9U_AFipHY0-fJKnkhF8;->f$1:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->lambda$null$0$TrainViewHolder$1(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    return-void
.end method
