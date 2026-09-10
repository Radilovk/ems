.class public abstract Lorg/apache/poi/hpsf/VariantTypeException;
.super Lorg/apache/poi/hpsf/HPSFException;
.source "VariantTypeException.java"


# instance fields
.field private value:Ljava/lang/Object;

.field private variantType:J


# direct methods
.method public constructor <init>(JLjava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "variantType"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "msg"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p4}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    .line 47
    iput-wide p1, p0, Lorg/apache/poi/hpsf/VariantTypeException;->variantType:J

    .line 48
    iput-object p3, p0, Lorg/apache/poi/hpsf/VariantTypeException;->value:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/poi/hpsf/VariantTypeException;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getVariantType()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lorg/apache/poi/hpsf/VariantTypeException;->variantType:J

    return-wide v0
.end method
