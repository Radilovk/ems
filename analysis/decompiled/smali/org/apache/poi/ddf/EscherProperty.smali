.class public abstract Lorg/apache/poi/ddf/EscherProperty;
.super Ljava/lang/Object;
.source "EscherProperty.java"


# instance fields
.field private _id:S


# direct methods
.method public constructor <init>(S)V
    .locals 0
    .param p1, "id"    # S

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherProperty;->_id:S

    .line 36
    return-void
.end method

.method public constructor <init>(SZZ)V
    .locals 2
    .param p1, "propertyNumber"    # S
    .param p2, "isComplex"    # Z
    .param p3, "isBlipId"    # Z

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p2, :cond_1

    const v1, 0x8000

    :goto_0
    add-int/2addr v1, p1

    if-eqz p3, :cond_0

    const/16 v0, 0x4000

    :cond_0
    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherProperty;->_id:S

    .line 46
    return-void

    :cond_1
    move v1, v0

    .line 43
    goto :goto_0
.end method


# virtual methods
.method public getId()S
    .locals 1

    .prologue
    .line 49
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherProperty;->_id:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherProperties;->getPropertyName(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyNumber()S
    .locals 1

    .prologue
    .line 53
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherProperty;->_id:S

    and-int/lit16 v0, v0, 0x3fff

    int-to-short v0, v0

    return v0
.end method

.method public getPropertySize()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x6

    return v0
.end method

.method public isBlipId()Z
    .locals 1

    .prologue
    .line 61
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherProperty;->_id:S

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplex()Z
    .locals 1

    .prologue
    .line 57
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherProperty;->_id:S

    and-int/lit16 v0, v0, -0x8000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract serializeComplexPart([BI)I
.end method

.method public abstract serializeSimplePart([BI)I
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tab"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" blipId=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->isBlipId()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
