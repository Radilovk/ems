.class public Lorg/apache/poi/util/BitFieldFactory;
.super Ljava/lang/Object;
.source "BitFieldFactory.java"


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/util/BitField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/util/BitFieldFactory;->instances:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(I)Lorg/apache/poi/util/BitField;
    .locals 3
    .param p0, "mask"    # I

    .line 33
    sget-object v0, Lorg/apache/poi/util/BitFieldFactory;->instances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/util/BitField;

    .line 34
    .local v0, "f":Lorg/apache/poi/util/BitField;
    if-nez v0, :cond_0

    .line 35
    new-instance v1, Lorg/apache/poi/util/BitField;

    invoke-direct {v1, p0}, Lorg/apache/poi/util/BitField;-><init>(I)V

    move-object v0, v1

    .line 36
    sget-object v1, Lorg/apache/poi/util/BitFieldFactory;->instances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-object v0
.end method
