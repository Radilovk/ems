.class Lorg/apache/poi/hpsf/Section$PropertyListEntry;
.super Ljava/lang/Object;
.source "Section.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hpsf/Section;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PropertyListEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/hpsf/Section$PropertyListEntry;",
        ">;"
    }
.end annotation


# instance fields
.field id:I

.field length:I

.field offset:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 297
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->compareTo(Lorg/apache/poi/hpsf/Section$PropertyListEntry;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/hpsf/Section$PropertyListEntry;)I
    .locals 2
    .param p1, "o"    # Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    .line 312
    iget v0, p1, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    .line 313
    .local v0, "otherOffset":I
    iget v1, p0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    if-ge v1, v0, :cond_0

    .line 314
    const/4 v1, -0x1

    return v1

    .line 315
    :cond_0
    if-ne v1, v0, :cond_1

    .line 316
    const/4 v1, 0x0

    return v1

    .line 318
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    iget v1, p0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 327
    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    iget v1, p0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 329
    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    iget v1, p0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 331
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
