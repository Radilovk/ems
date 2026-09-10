.class Lorg/apache/poi/hpsf/MutableSection$1;
.super Ljava/lang/Object;
.source "MutableSection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hpsf/MutableSection;->write(Ljava/io/OutputStream;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/poi/hpsf/Property;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hpsf/MutableSection;


# direct methods
.method constructor <init>(Lorg/apache/poi/hpsf/MutableSection;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lorg/apache/poi/hpsf/MutableSection$1;->this$0:Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 428
    check-cast p1, Lorg/apache/poi/hpsf/Property;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/poi/hpsf/Property;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/MutableSection$1;->compare(Lorg/apache/poi/hpsf/Property;Lorg/apache/poi/hpsf/Property;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/poi/hpsf/Property;Lorg/apache/poi/hpsf/Property;)I
    .locals 4
    .param p1, "p1"    # Lorg/apache/poi/hpsf/Property;
    .param p2, "p2"    # Lorg/apache/poi/hpsf/Property;

    .prologue
    .line 431
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 432
    const/4 v0, -0x1

    .line 436
    :goto_0
    return v0

    .line 433
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 434
    const/4 v0, 0x0

    goto :goto_0

    .line 436
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
