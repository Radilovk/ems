.class final Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$ByPrio;
.super Ljava/lang/Object;
.source "ScaleInsight.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ByPrio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;)I
    .registers 5

    .prologue
    .line 762
    iget v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->prio:I

    iget v1, p2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->prio:I

    if-eq v0, v1, :cond_c

    iget v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->prio:I

    iget v1, p2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->prio:I

    sub-int/2addr v0, v1

    :goto_b
    return v0

    :cond_c
    iget v0, p2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->tone:I

    iget v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->tone:I

    sub-int/2addr v0, v1

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 759
    check-cast p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    check-cast p2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$ByPrio;->compare(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;)I

    move-result v0

    return v0
.end method
