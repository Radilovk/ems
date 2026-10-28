.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;
.super Ljava/lang/Object;
.source "BluetensScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloseLinks"
.end annotation


# instance fields
.field final pads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1484
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;->pads:Ljava/util/List;

    .line 1485
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 1490
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->close()V

    goto :goto_6

    .line 1492
    :cond_18
    return-void
.end method
