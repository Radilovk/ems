.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;
.super Ljava/lang/Object;
.source "BluetensLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lib"
.end annotation


# instance fields
.field public final cats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final desc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final progs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->parts:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->cats:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->desc:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->progs:Ljava/util/List;

    return-void
.end method

.method static label(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 87
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    if-eqz p2, :cond_1f

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 91
    :goto_1e
    return-object v0

    .line 88
    :cond_1f
    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_1e

    :cond_23
    move-object v0, p1

    .line 91
    goto :goto_1e
.end method


# virtual methods
.method public catName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->cats:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->label(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public find(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;
    .registers 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->progs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;

    .line 70
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->file:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 74
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public partName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->parts:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->label(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
