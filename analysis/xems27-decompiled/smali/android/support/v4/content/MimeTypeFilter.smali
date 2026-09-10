.class public final Landroid/support/v4/content/MimeTypeFilter;
.super Ljava/lang/Object;
.source "MimeTypeFilter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static matches(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "filters"    # [Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 83
    return-object v0

    .line 86
    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "mimeTypeParts":[Ljava/lang/String;
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 88
    .local v5, "filter":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "filterParts":[Ljava/lang/String;
    invoke-static {v2, v6}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 90
    return-object v5

    .line 87
    .end local v5    # "filter":Ljava/lang/String;
    .end local v6    # "filterParts":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_2
    return-object v0
.end method

.method public static matches([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mimeTypes"    # [Ljava/lang/String;
    .param p1, "filter"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 104
    return-object v0

    .line 107
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "filterParts":[Ljava/lang/String;
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p0, v4

    .line 109
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, "mimeTypeParts":[Ljava/lang/String;
    invoke-static {v6, v2}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 111
    return-object v5

    .line 108
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "mimeTypeParts":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    :cond_2
    return-object v0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/lang/String;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "mimeTypeParts":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "filterParts":[Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static matchesMany([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "mimeTypes"    # [Ljava/lang/String;
    .param p1, "filter"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 125
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 128
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "filterParts":[Ljava/lang/String;
    array-length v4, p0

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, p0, v0

    .line 131
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "mimeTypeParts":[Ljava/lang/String;
    invoke-static {v6, v3}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 133
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "mimeTypeParts":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "mimeTypeParts"    # [Ljava/lang/String;
    .param p1, "filterParts"    # [Ljava/lang/String;

    .line 46
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    array-length v0, p1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    aget-object v0, p1, v2

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, p1, v2

    aget-object v3, p0, v2

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    return v2

    .line 53
    :cond_1
    const/4 v0, 0x1

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    aget-object v3, p0, v0

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    return v2

    .line 58
    :cond_2
    return v0

    .line 47
    :cond_3
    :goto_0
    return v2
.end method
