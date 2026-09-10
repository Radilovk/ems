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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    .line 37
    .local v0, "value":S
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 39
    iput-boolean v1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    .line 40
    return-void

    .line 43
    :cond_0
    const v2, 0xffff

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 45
    iput-boolean v3, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    .line 46
    return-void

    .line 49
    :cond_1
    sget-object v2, Lorg/apache/poi/hpsf/VariantBool;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    const-string v6, "VARIANT_BOOL value \'"

    const-string v7, "\' is incorrect"

    invoke-virtual {v2, v4, v6, v5, v7}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    .line 52
    return-void
.end method


# virtual methods
.method getValue()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    return v0
.end method

.method setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 61
    iput-boolean p1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    .line 62
    return-void
.end method
