.class public Lorg/apache/poi/hpsf/MutableProperty;
.super Lorg/apache/poi/hpsf/Property;
.source "MutableProperty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Property;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Property;)V
    .locals 2
    .param p1, "p"    # Lorg/apache/poi/hpsf/Property;

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Property;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/MutableProperty;->setID(J)V

    .line 55
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/MutableProperty;->setType(J)V

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/MutableProperty;->setValue(Ljava/lang/Object;)V

    .line 57
    return-void
.end method


# virtual methods
.method public setID(J)V
    .locals 0
    .param p1, "id"    # J

    .line 67
    iput-wide p1, p0, Lorg/apache/poi/hpsf/MutableProperty;->id:J

    .line 68
    return-void
.end method

.method public setType(J)V
    .locals 0
    .param p1, "type"    # J

    .line 79
    iput-wide p1, p0, Lorg/apache/poi/hpsf/MutableProperty;->type:J

    .line 80
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lorg/apache/poi/hpsf/MutableProperty;->value:Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public write(Ljava/io/OutputStream;I)I
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/hpsf/WritingNotSupportedException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "length":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutableProperty;->getType()J

    move-result-wide v1

    .line 114
    .local v1, "variantType":J
    const/16 v3, 0x4b0

    if-ne p2, v3, :cond_0

    const-wide/16 v3, 0x1e

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 115
    const-wide/16 v1, 0x1f

    .line 117
    :cond_0
    invoke-static {p1, v1, v2}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v3

    add-int/2addr v0, v3

    .line 118
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutableProperty;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3, p2}, Lorg/apache/poi/hpsf/VariantSupport;->write(Ljava/io/OutputStream;JLjava/lang/Object;I)I

    move-result v3

    add-int/2addr v0, v3

    .line 119
    return v0
.end method
