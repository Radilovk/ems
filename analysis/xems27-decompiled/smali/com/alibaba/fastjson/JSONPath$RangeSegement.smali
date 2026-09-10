.class Lcom/alibaba/fastjson/JSONPath$RangeSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeSegement"
.end annotation


# instance fields
.field private final end:I

.field private final start:I

.field private final step:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "step"    # I

    .line 1536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    iput p1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->start:I

    .line 1538
    iput p2, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->end:I

    .line 1539
    iput p3, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->step:I

    .line 1540
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;

    .line 1543
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$SizeSegement;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$SizeSegement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1544
    .local v0, "size":I
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->start:I

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    .line 1545
    .local v1, "start":I
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->end:I

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v2, v0

    .line 1547
    .local v2, "end":I
    :goto_1
    sub-int v3, v2, v1

    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->step:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 1548
    .local v3, "array_size":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1549
    const/4 v4, 0x0

    return-object v4

    .line 1552
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1553
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move v5, v1

    .local v5, "i":I
    :goto_2
    if-gt v5, v2, :cond_3

    if-ge v5, v0, :cond_3

    .line 1554
    invoke-virtual {p1, p3, v5}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 1555
    .local v6, "item":Ljava/lang/Object;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    .end local v6    # "item":Ljava/lang/Object;
    iget v6, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->step:I

    add-int/2addr v5, v6

    goto :goto_2

    .line 1557
    .end local v5    # "i":I
    :cond_3
    return-object v4
.end method
