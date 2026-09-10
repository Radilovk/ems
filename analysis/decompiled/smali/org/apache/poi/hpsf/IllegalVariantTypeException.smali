.class public Lorg/apache/poi/hpsf/IllegalVariantTypeException;
.super Lorg/apache/poi/hpsf/VariantTypeException;
.source "IllegalVariantTypeException.java"


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 3
    .param p1, "variantType"    # J
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The variant type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/poi/hpsf/Variant;->getVariantName(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/poi/util/HexDump;->toHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is illegal in this context."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/hpsf/IllegalVariantTypeException;-><init>(JLjava/lang/Object;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(JLjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "variantType"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hpsf/VariantTypeException;-><init>(JLjava/lang/Object;Ljava/lang/String;)V

    .line 43
    return-void
.end method
