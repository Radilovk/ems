.class public Lorg/apache/poi/hpsf/CustomProperty;
.super Lorg/apache/poi/hpsf/MutableProperty;
.source "CustomProperty.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hpsf/MutableProperty;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hpsf/CustomProperty;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Property;)V
    .locals 1
    .param p1, "property"    # Lorg/apache/poi/hpsf/Property;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Lorg/apache/poi/hpsf/Property;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(Lorg/apache/poi/hpsf/Property;)V

    .line 64
    iput-object p2, p0, Lorg/apache/poi/hpsf/CustomProperty;->name:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 125
    instance-of v0, p1, Lorg/apache/poi/hpsf/CustomProperty;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/CustomProperty;->equalsContents(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsContents(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 101
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hpsf/CustomProperty;

    .line 102
    .local v0, "c":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "name1":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "name2":Ljava/lang/String;
    const/4 v1, 0x1

    .line 105
    .local v1, "equalNames":Z
    if-nez v2, :cond_1

    .line 106
    if-nez v3, :cond_0

    move v1, v4

    .line 109
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperty;->getID()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperty;->getID()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperty;->getType()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperty;->getType()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperty;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperty;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    return v4

    :cond_0
    move v1, v5

    .line 106
    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 109
    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperty;->getID()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/apache/poi/hpsf/CustomProperty;->name:Ljava/lang/String;

    .line 85
    return-void
.end method
