.class public Lcom/alibaba/fastjson/JSONPath$FilterSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterSegement"
.end annotation


# instance fields
.field private final filter:Lcom/alibaba/fastjson/JSONPath$Filter;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 2017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2018
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 2019
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;

    .line 2023
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 2024
    return-object v0

    .line 2027
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 2029
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v2, p3, Ljava/lang/Iterable;

    if-eqz v2, :cond_3

    .line 2030
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2031
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2032
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2034
    .local v2, "item":Ljava/lang/Object;
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v3, p1, p2, p3, v2}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2035
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2037
    .end local v2    # "item":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 2039
    :cond_2
    return-object v1

    .line 2042
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v2, p1, p2, p3, p3}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2043
    return-object p3

    .line 2046
    :cond_4
    return-object v0
.end method
