.class public final Lcom/isaigu/gymapp/ai/AiPersonal$Effect;
.super Ljava/lang/Object;
.source "AiPersonal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiPersonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Effect"
.end annotation


# instance fields
.field public final notesBg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final notesEn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public offS:I

.field public phi:D

.field public rampUpMs:I

.field public final zoneDelta:[I

.field public final zoneMax:[I


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0xa

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneDelta:[I

    .line 28
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneMax:[I

    .line 30
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesBg:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesEn:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    :goto_20
    if-ge v0, v3, :cond_2b

    .line 40
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneMax:[I

    const/16 v2, 0x64

    aput v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 42
    :cond_2b
    return-void
.end method


# virtual methods
.method add([II)V
    .registers 8

    .prologue
    .line 54
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_10

    aget v2, p1, v0

    .line 55
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneDelta:[I

    aget v4, v3, v2

    add-int/2addr v4, p2

    aput v4, v3, v2

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 57
    :cond_10
    return-void
.end method

.method public apply([I)[I
    .registers 8

    .prologue
    .line 61
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 62
    const/4 v1, 0x0

    :goto_7
    const/16 v2, 0xa

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 63
    aget v2, v0, v1

    if-gtz v2, :cond_17

    .line 62
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 66
    :cond_17
    aget v2, v0, v1

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneDelta:[I

    aget v3, v3, v1

    add-int/2addr v3, v2

    .line 67
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneDelta:[I

    aget v2, v2, v1

    if-gez v2, :cond_41

    aget v2, v0, v1

    const/16 v4, 0x14

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2c
    const/16 v4, 0x64

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneMax:[I

    aget v5, v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v1

    goto :goto_14

    :cond_41
    const/4 v2, 0x1

    goto :goto_2c

    .line 69
    :cond_43
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesBg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method note(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesBg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesEn:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method
