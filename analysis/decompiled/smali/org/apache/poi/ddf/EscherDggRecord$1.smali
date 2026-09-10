.class final Lorg/apache/poi/ddf/EscherDggRecord$1;
.super Ljava/lang/Object;
.source "EscherDggRecord.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ddf/EscherDggRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 230
    check-cast p1, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherDggRecord$1;->compare(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I
    .locals 2
    .param p1, "f1"    # Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .param p2, "f2"    # Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .prologue
    .line 232
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    .line 235
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 236
    const/4 v0, -0x1

    goto :goto_0

    .line 238
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
