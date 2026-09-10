.class Lorg/apache/poi/hpsf/VariantBool;
.super Ljava/lang/Object;
.source "VariantBool.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final SIZE:I = 0x2

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/poi/hpsf/VariantBool;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/VariantBool;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    .line 37
    .local v0, "value":S
    if-nez v0, :cond_0

    .line 39
    iput-boolean v2, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    .line 52
    :goto_0
    return-void

    .line 43
    :cond_0
    const v3, 0xffff

    if-ne v0, v3, :cond_1

    .line 45
    iput-boolean v1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    goto :goto_0

    .line 49
    :cond_1
    sget-object v3, Lorg/apache/poi/hpsf/VariantBool;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    const-string v5, "VARIANT_BOOL value \'"

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    const-string v7, "\' is incorrect"

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method getValue()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    return v0
.end method

.method setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    .line 62
    return-void
.end method
