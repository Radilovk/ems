.class Lcom/alibaba/fastjson/JSONPath$ValueSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValueSegment"
.end annotation


# instance fields
.field private eq:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "eq"    # Z

    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->eq:Z

    .line 1603
    if-eqz p2, :cond_0

    .line 1606
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->propertyName:Ljava/lang/String;

    .line 1607
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->propertyNameHash:J

    .line 1608
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->value:Ljava/lang/Object;

    .line 1609
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->eq:Z

    .line 1610
    return-void

    .line 1604
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .line 1613
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->propertyName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 1614
    .local v0, "propertyValue":Ljava/lang/Object;
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->value:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1615
    .local v1, "result":Z
    iget-boolean v2, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->eq:Z

    if-nez v2, :cond_0

    .line 1616
    xor-int/lit8 v2, v1, 0x1

    move v1, v2

    .line 1618
    :cond_0
    return v1
.end method
