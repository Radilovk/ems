.class Lorg/apache/poi/ddf/EscherArrayProperty$1;
.super Ljava/lang/Object;
.source "EscherArrayProperty.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ddf/EscherArrayProperty;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[B>;"
    }
.end annotation


# instance fields
.field idx:I

.field final synthetic this$0:Lorg/apache/poi/ddf/EscherArrayProperty;


# direct methods
.method constructor <init>(Lorg/apache/poi/ddf/EscherArrayProperty;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->this$0:Lorg/apache/poi/ddf/EscherArrayProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->idx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 216
    iget v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->idx:I

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->this$0:Lorg/apache/poi/ddf/EscherArrayProperty;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v1

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

    .line 213
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty$1;->next()[B

    move-result-object v0

    return-object v0
.end method

.method public next()[B
    .locals 3

    .line 220
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->this$0:Lorg/apache/poi/ddf/EscherArrayProperty;

    iget v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->idx:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->getElement(I)[B

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
