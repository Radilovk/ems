.class final Lorg/apache/poi/poifs/storage/PropertyBlock$1;
.super Lorg/apache/poi/poifs/property/Property;
.source "PropertyBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/storage/PropertyBlock;->createPropertyBlockArray(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/util/List;)[Lorg/apache/poi/poifs/storage/BlockWritable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lorg/apache/poi/poifs/property/Property;-><init>()V

    return-void
.end method


# virtual methods
.method public isDirectory()Z
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method protected preWrite()V
    .locals 0

    .line 85
    return-void
.end method
