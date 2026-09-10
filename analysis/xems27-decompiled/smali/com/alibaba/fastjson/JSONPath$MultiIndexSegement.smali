.class Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;
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
    name = "MultiIndexSegement"
.end annotation


# instance fields
.field private final indexes:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .param p1, "indexes"    # [I

    .line 1516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1517
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;->indexes:[I

    .line 1518
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;

    .line 1521
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;->indexes:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1522
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;->indexes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1523
    aget v2, v2, v1

    invoke-virtual {p1, p3, v2}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 1524
    .local v2, "item":Ljava/lang/Object;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    .end local v2    # "item":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1526
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
