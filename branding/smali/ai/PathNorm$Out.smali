.class final Lcom/isaigu/gymapp/ai/PathNorm$Out;
.super Ljava/lang/Object;
.source "PathNorm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/PathNorm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Out"
.end annotation


# instance fields
.field final b:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/PathNorm$Out;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method varargs emit(C[D)V
    .registers 7

    .prologue
    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PathNorm$Out;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    const/4 v0, 0x0

    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_20

    .line 94
    if-lez v0, :cond_12

    .line 95
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/PathNorm$Out;->b:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :cond_12
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/PathNorm$Out;->b:Ljava/lang/StringBuilder;

    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/PathNorm;->fmt(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 99
    :cond_20
    return-void
.end method
