.class Lorg/apache/poi/hpsf/IndirectPropertyName;
.super Ljava/lang/Object;
.source "IndirectPropertyName.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _value:Lorg/apache/poi/hpsf/CodePageString;


# direct methods
.method constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/CodePageString;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/IndirectPropertyName;->_value:Lorg/apache/poi/hpsf/CodePageString;

    .line 29
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/poi/hpsf/IndirectPropertyName;->_value:Lorg/apache/poi/hpsf/CodePageString;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CodePageString;->getSize()I

    move-result v0

    return v0
.end method
