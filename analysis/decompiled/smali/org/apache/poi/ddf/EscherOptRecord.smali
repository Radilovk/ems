.class public Lorg/apache/poi/ddf/EscherOptRecord;
.super Lorg/apache/poi/ddf/AbstractEscherOptRecord;
.source "EscherOptRecord.java"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "msofbtOPT"

.field public static final RECORD_ID:S = -0xff5s


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance()S
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherOptRecord;->setInstance(S)V

    .line 39
    invoke-super {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getInstance()S

    move-result v0

    return v0
.end method

.method public getOptions()S
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getInstance()S

    .line 50
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getVersion()S

    .line 51
    invoke-super {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getOptions()S

    move-result v0

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "Opt"

    return-object v0
.end method

.method public getVersion()S
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherOptRecord;->setVersion(S)V

    .line 63
    invoke-super {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getVersion()S

    move-result v0

    return v0
.end method

.method public setVersion(S)V
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 69
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "msofbtOPT can have only \'0x3\' version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->setVersion(S)V

    .line 74
    return-void
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tab"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getRecordId()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getVersion()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getInstance()S

    move-result v7

    invoke-static {v7}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/poi/ddf/EscherOptRecord;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    .line 81
    .local v2, "property":Lorg/apache/poi/ddf/EscherProperty;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherProperty;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 83
    .end local v2    # "property":Lorg/apache/poi/ddf/EscherProperty;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
