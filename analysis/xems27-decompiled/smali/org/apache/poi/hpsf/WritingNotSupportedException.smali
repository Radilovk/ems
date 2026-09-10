.class public Lorg/apache/poi/hpsf/WritingNotSupportedException;
.super Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;
.source "WritingNotSupportedException.java"


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 0
    .param p1, "variantType"    # J
    .param p3, "value"    # Ljava/lang/Object;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;-><init>(JLjava/lang/Object;)V

    .line 44
    return-void
.end method
