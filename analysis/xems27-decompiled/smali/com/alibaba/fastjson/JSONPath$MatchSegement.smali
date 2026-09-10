.class Lcom/alibaba/fastjson/JSONPath$MatchSegement;
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
    name = "MatchSegement"
.end annotation


# instance fields
.field private final containsValues:[Ljava/lang/String;

.field private final endsWithValue:Ljava/lang/String;

.field private final minLength:I

.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final startsWithValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 5
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "startsWithValue"    # Ljava/lang/String;
    .param p3, "endsWithValue"    # Ljava/lang/String;
    .param p4, "containsValues"    # [Ljava/lang/String;
    .param p5, "not"    # Z

    .line 1866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1867
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->propertyName:Ljava/lang/String;

    .line 1868
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->propertyNameHash:J

    .line 1869
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    .line 1870
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    .line 1871
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    .line 1872
    iput-boolean p5, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    .line 1874
    const/4 v0, 0x0

    .line 1875
    .local v0, "len":I
    if-eqz p2, :cond_0

    .line 1876
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 1879
    :cond_0
    if-eqz p3, :cond_1

    .line 1880
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 1883
    :cond_1
    if-eqz p4, :cond_2

    .line 1884
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p4, v2

    .line 1885
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 1884
    .end local v3    # "item":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1889
    :cond_2
    iput v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->minLength:I

    .line 1890
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .line 1893
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->propertyName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 1895
    .local v0, "propertyValue":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1896
    return v1

    .line 1899
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1901
    .local v2, "strPropertyValue":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->minLength:I

    if-ge v3, v4, :cond_1

    .line 1902
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return v1

    .line 1905
    :cond_1
    const/4 v3, 0x0

    .line 1906
    .local v3, "start":I
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1907
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1908
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return v1

    .line 1910
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 1913
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1914
    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_5

    aget-object v6, v4, v1

    .line 1915
    .local v6, "containsValue":Ljava/lang/String;
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 1916
    .local v7, "index":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 1917
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return v1

    .line 1919
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int v3, v7, v8

    .line 1914
    .end local v6    # "containsValue":Ljava/lang/String;
    .end local v7    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1923
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1924
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1925
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return v1

    .line 1929
    :cond_6
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method
