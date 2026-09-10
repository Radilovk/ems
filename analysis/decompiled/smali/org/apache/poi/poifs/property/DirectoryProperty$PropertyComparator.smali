.class public Lorg/apache/poi/poifs/property/DirectoryProperty$PropertyComparator;
.super Ljava/lang/Object;
.source "DirectoryProperty.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/property/DirectoryProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/poi/poifs/property/Property;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p1, Lorg/apache/poi/poifs/property/Property;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/poi/poifs/property/Property;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/property/DirectoryProperty$PropertyComparator;->compare(Lorg/apache/poi/poifs/property/Property;Lorg/apache/poi/poifs/property/Property;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/poi/poifs/property/Property;Lorg/apache/poi/poifs/property/Property;)I
    .locals 6
    .param p1, "o1"    # Lorg/apache/poi/poifs/property/Property;
    .param p2, "o2"    # Lorg/apache/poi/poifs/property/Property;

    .prologue
    .line 143
    const-string v0, "_VBA_PROJECT"

    .line 144
    .local v0, "VBA_PROJECT":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "name1":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "name2":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v3, v4, v5

    .line 148
    .local v3, "result":I
    if-nez v3, :cond_0

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 152
    const/4 v3, 0x1

    .line 178
    :cond_0
    :goto_0
    return v3

    .line 153
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 154
    const/4 v3, -0x1

    goto :goto_0

    .line 157
    :cond_2
    const-string v4, "__"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "__"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 162
    :cond_3
    const-string v4, "__"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    const/4 v3, 0x1

    goto :goto_0

    .line 167
    :cond_4
    const-string v4, "__"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 170
    const/4 v3, -0x1

    goto :goto_0

    .line 175
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method
