.class public Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;
.super Ljava/lang/Object;
.source "NumericWheelAdapter.java"

# interfaces
.implements Lcom/contrarywind/adapter/WheelAdapter;


# instance fields
.field private maxValue:I

.field private minValue:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->minValue:I

    .line 21
    iput p2, p0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->maxValue:I

    .line 22
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 26
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->getItemsCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 27
    iget v1, p0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->minValue:I

    add-int v0, v1, p1

    .line 28
    .local v0, "value":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 30
    .end local v0    # "value":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->maxValue:I

    iget v1, p0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    :try_start_0
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->minValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v1, v2

    .line 43
    :goto_0
    return v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method
