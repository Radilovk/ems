.class Lorg/apache/poi/poifs/property/PropertyFactory;
.super Ljava/lang/Object;
.source "PropertyFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static convertToProperties([Lorg/apache/poi/poifs/storage/ListManagedBlock;)Ljava/util/List;
    .locals 4
    .param p0, "blocks"    # [Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/poi/poifs/storage/ListManagedBlock;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v2, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/property/Property;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 64
    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/poi/poifs/storage/ListManagedBlock;->getData()[B

    move-result-object v0

    .line 65
    .local v0, "data":[B
    invoke-static {v0, v2}, Lorg/apache/poi/poifs/property/PropertyFactory;->convertToProperties([BLjava/util/List;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "data":[B
    :cond_0
    return-object v2
.end method

.method static convertToProperties([BLjava/util/List;)V
    .locals 5
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/property/Property;>;"
    array-length v3, p0

    div-int/lit16 v2, v3, 0x80

    .line 74
    .local v2, "property_count":I
    const/4 v1, 0x0

    .line 76
    .local v1, "offset":I
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 77
    add-int/lit8 v3, v1, 0x42

    aget-byte v3, p0, v3

    packed-switch v3, :pswitch_data_0

    .line 97
    :pswitch_0
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_1
    add-int/lit16 v1, v1, 0x80

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :pswitch_1
    new-instance v3, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4, p0, v1}, Lorg/apache/poi/poifs/property/DirectoryProperty;-><init>(I[BI)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :pswitch_2
    new-instance v3, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4, p0, v1}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(I[BI)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :pswitch_3
    new-instance v3, Lorg/apache/poi/poifs/property/RootProperty;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4, p0, v1}, Lorg/apache/poi/poifs/property/RootProperty;-><init>(I[BI)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_0
    return-void

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
