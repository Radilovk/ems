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
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v1, v2

    .line 65
    :goto_8
    const/16 v3, 0xa

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v1, v3, :cond_1e

    .line 66
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneMax:[I

    aget v3, v3, v1

    const/16 v4, 0x64

    if-ge v3, v4, :cond_1b

    .line 67
    aput v2, v0, v1

    .line 65
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 70
    :cond_1e
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
