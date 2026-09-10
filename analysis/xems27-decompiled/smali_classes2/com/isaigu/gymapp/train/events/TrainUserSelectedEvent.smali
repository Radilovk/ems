.class public Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;
.super Ljava/lang/Object;
.source "TrainUserSelectedEvent.java"


# instance fields
.field private trainItem:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0
    .param p1, "trainItem"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;->trainItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 10
    return-void
.end method


# virtual methods
.method public getTrainItem()Lcom/isaigu/gymapp/train/model/TrainItem;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;->trainItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object v0
.end method

.method public setTrainItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0
    .param p1, "trainItem"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 17
    iput-object p1, p0, Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;->trainItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 18
    return-void
.end method
