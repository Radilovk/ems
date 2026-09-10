.class public Lcom/isaigu/gymapp/train/model/PartsParams;
.super Ljava/lang/Object;
.source "PartsParams.java"


# instance fields
.field private abdomen:Ljava/lang/Integer;

.field private arm:Ljava/lang/Integer;

.field private back:Ljava/lang/Integer;

.field private calf:Ljava/lang/Integer;

.field private chest:Ljava/lang/Integer;

.field private hip:Ljava/lang/Integer;

.field final maxValue:I

.field final minValue:I

.field private shoulder:Ljava/lang/Integer;

.field private thighBack:Ljava/lang/Integer;

.field private thighFront:Ljava/lang/Integer;

.field private waist:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->minValue:I

    .line 5
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->maxValue:I

    .line 7
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->chest:Ljava/lang/Integer;

    .line 9
    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->abdomen:Ljava/lang/Integer;

    .line 11
    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->thighFront:Ljava/lang/Integer;

    .line 13
    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->calf:Ljava/lang/Integer;

    .line 15
    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->arm:Ljava/lang/Integer;

    .line 17
    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->shoulder:Ljava/lang/Integer;

    .line 19
    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->back:Ljava/lang/Integer;

    .line 21
    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->waist:Ljava/lang/Integer;

    .line 23
    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->hip:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->thighBack:Ljava/lang/Integer;

    return-void
.end method

.method private getRangeValue(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAllValue(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->chest:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/PartsParams;->setChest(Ljava/lang/Integer;)V

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->abdomen:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/PartsParams;->setAbdomen(Ljava/lang/Integer;)V

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->thighFront:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/PartsParams;->setThighFront(Ljava/lang/Integer;)V

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->calf:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/PartsParams;->setCalf(Ljava/lang/Integer;)V

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->arm:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/PartsParams;->setArm(Ljava/lang/Integer;)V

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->shoulder:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/PartsParams;->setShoulder(Ljava/lang/Integer;)V

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->back:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/PartsParams;->setBack(Ljava/lang/Integer;)V

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->waist:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/PartsParams;->setWaist(Ljava/lang/Integer;)V

    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->hip:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/PartsParams;->setHip(Ljava/lang/Integer;)V

    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->thighBack:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/PartsParams;->setThighBack(Ljava/lang/Integer;)V

    .line 135
    return-void
.end method

.method public getAbdomen()Ljava/lang/Integer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->abdomen:Ljava/lang/Integer;

    return-object v0
.end method

.method public getArm()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->arm:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBack()Ljava/lang/Integer;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->back:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCalf()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->calf:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChest()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->chest:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHip()Ljava/lang/Integer;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->hip:Ljava/lang/Integer;

    return-object v0
.end method

.method public getShoulder()Ljava/lang/Integer;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->shoulder:Ljava/lang/Integer;

    return-object v0
.end method

.method public getThighBack()Ljava/lang/Integer;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->thighBack:Ljava/lang/Integer;

    return-object v0
.end method

.method public getThighFront()Ljava/lang/Integer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->thighFront:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWaist()Ljava/lang/Integer;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->waist:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAbdomen(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "abdomen"    # Ljava/lang/Integer;

    .line 40
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->getRangeValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->abdomen:Ljava/lang/Integer;

    .line 41
    return-void
.end method

.method public setAllValue(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Integer;

    .line 108
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->setChest(Ljava/lang/Integer;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->setAbdomen(Ljava/lang/Integer;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->setThighFront(Ljava/lang/Integer;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->setCalf(Ljava/lang/Integer;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->setArm(Ljava/lang/Integer;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->setShoulder(Ljava/lang/Integer;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->setBack(Ljava/lang/Integer;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->setWaist(Ljava/lang/Integer;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->setHip(Ljava/lang/Integer;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->setThighBack(Ljava/lang/Integer;)V

    .line 118
    return-void
.end method

.method public setArm(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "arm"    # Ljava/lang/Integer;

    .line 64
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->getRangeValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->arm:Ljava/lang/Integer;

    .line 65
    return-void
.end method

.method public setBack(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "back"    # Ljava/lang/Integer;

    .line 80
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->getRangeValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->back:Ljava/lang/Integer;

    .line 81
    return-void
.end method

.method public setCalf(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "calf"    # Ljava/lang/Integer;

    .line 56
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->getRangeValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->calf:Ljava/lang/Integer;

    .line 57
    return-void
.end method

.method public setChest(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "chest"    # Ljava/lang/Integer;

    .line 32
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->getRangeValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->chest:Ljava/lang/Integer;

    .line 33
    return-void
.end method

.method public setHip(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "hip"    # Ljava/lang/Integer;

    .line 96
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->getRangeValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->hip:Ljava/lang/Integer;

    .line 97
    return-void
.end method

.method public setShoulder(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "shoulder"    # Ljava/lang/Integer;

    .line 72
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->getRangeValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->shoulder:Ljava/lang/Integer;

    .line 73
    return-void
.end method

.method public setThighBack(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "thighBack"    # Ljava/lang/Integer;

    .line 104
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->getRangeValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->thighBack:Ljava/lang/Integer;

    .line 105
    return-void
.end method

.method public setThighFront(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "thighFront"    # Ljava/lang/Integer;

    .line 48
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->getRangeValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->thighFront:Ljava/lang/Integer;

    .line 49
    return-void
.end method

.method public setWaist(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "waist"    # Ljava/lang/Integer;

    .line 88
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/model/PartsParams;->getRangeValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/PartsParams;->waist:Ljava/lang/Integer;

    .line 89
    return-void
.end method
