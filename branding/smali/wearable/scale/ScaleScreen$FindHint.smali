.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FindHint"
.end annotation


# instance fields
.field final token:I

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;I)V
    .registers 3

    .prologue
    .line 2130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2131
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2132
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;->token:I

    .line 2133
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2137
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;->token:I

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->searchToken:I

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->linkState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->lastSweep:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->sessionT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    .line 2145
    :cond_25
    :goto_25
    return-void

    .line 2141
    :cond_26
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->find:Landroid/widget/TextView;

    const-string v1, "\u041d\u0435 \u0433\u043e \u043d\u0430\u043c\u0438\u0440\u0430? \u0418\u0437\u0431\u0435\u0440\u0438 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v2, "Not found? Choose the scale"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2142
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->find:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not found in 10 s: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adverts()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adverts, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$FindHint;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->nearby()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " devices near"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    goto :goto_25
.end method
