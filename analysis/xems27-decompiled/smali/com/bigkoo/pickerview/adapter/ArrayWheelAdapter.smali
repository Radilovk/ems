.class public Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;
.super Ljava/lang/Object;
.source "ArrayWheelAdapter.java"

# interfaces
.implements Lcom/contrarywind/adapter/WheelAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/contrarywind/adapter/WheelAdapter;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;, "Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;->items:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 28
    .local p0, "this":Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;, "Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 31
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .line 36
    .local p0, "this":Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;, "Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 41
    .local p0, "this":Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;, "Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
