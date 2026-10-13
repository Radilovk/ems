.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;
.super Ljava/lang/Object;
.source "BluetensLok.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Section"
.end annotation


# instance fields
.field public final blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;",
            ">;"
        }
    .end annotation
.end field

.field public interval:I

.field public repeat:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ms()D
    .registers 6

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    .line 50
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 51
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->ms()D

    move-result-wide v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 52
    goto :goto_9

    .line 53
    :cond_1c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->interval:I

    int-to-double v0, v0

    add-double/2addr v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method
