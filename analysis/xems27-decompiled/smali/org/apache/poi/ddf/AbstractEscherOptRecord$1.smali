.class Lorg/apache/poi/ddf/AbstractEscherOptRecord$1;
.super Ljava/lang/Object;
.source "AbstractEscherOptRecord.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ddf/AbstractEscherOptRecord;->sortProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/poi/ddf/EscherProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/ddf/AbstractEscherOptRecord;


# direct methods
.method constructor <init>(Lorg/apache/poi/ddf/AbstractEscherOptRecord;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord$1;->this$0:Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 129
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ddf/EscherProperty;

    move-object v1, p2

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord$1;->compare(Lorg/apache/poi/ddf/EscherProperty;Lorg/apache/poi/ddf/EscherProperty;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/poi/ddf/EscherProperty;Lorg/apache/poi/ddf/EscherProperty;)I
    .locals 3
    .param p1, "p1"    # Lorg/apache/poi/ddf/EscherProperty;
    .param p2, "p2"    # Lorg/apache/poi/ddf/EscherProperty;

    .line 132
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v0

    .line 133
    .local v0, "s1":S
    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v1

    .line 134
    .local v1, "s2":S
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2
.end method
