.class public Lorg/apache/poi/util/StringUtil$StringsIterator;
.super Ljava/lang/Object;
.source "StringUtil.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/util/StringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringsIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private position:I

.field private strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/StringUtil$StringsIterator;->position:I

    .line 384
    if-eqz p1, :cond_0

    .line 385
    iput-object p1, p0, Lorg/apache/poi/util/StringUtil$StringsIterator;->strings:[Ljava/lang/String;

    goto :goto_0

    .line 387
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/util/StringUtil$StringsIterator;->strings:[Ljava/lang/String;

    .line 389
    :goto_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 392
    iget v0, p0, Lorg/apache/poi/util/StringUtil$StringsIterator;->position:I

    iget-object v1, p0, Lorg/apache/poi/util/StringUtil$StringsIterator;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 380
    invoke-virtual {p0}, Lorg/apache/poi/util/StringUtil$StringsIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .line 395
    iget v0, p0, Lorg/apache/poi/util/StringUtil$StringsIterator;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/poi/util/StringUtil$StringsIterator;->position:I

    .line 396
    .local v0, "ourPos":I
    iget-object v1, p0, Lorg/apache/poi/util/StringUtil$StringsIterator;->strings:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 398
    aget-object v1, v1, v0

    return-object v1

    .line 397
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1
.end method

.method public remove()V
    .locals 0

    .line 400
    return-void
.end method
