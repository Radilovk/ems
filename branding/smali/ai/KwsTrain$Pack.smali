.class public final Lcom/isaigu/gymapp/ai/KwsTrain$Pack;
.super Ljava/lang/Object;
.source "KwsTrain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/KwsTrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pack"
.end annotation


# instance fields
.field public final neg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field

.field public people:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/KwsTrain$Pack;->neg:Ljava/util/List;

    .line 258
    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/KwsTrain$Pack;->people:[F

    return-void
.end method
