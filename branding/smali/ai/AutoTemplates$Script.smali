.class public final Lcom/isaigu/gymapp/ai/AutoTemplates$Script;
.super Ljava/lang/Object;
.source "AutoTemplates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoTemplates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Script"
.end annotation


# instance fields
.field public final avoid:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final level:I

.field public final phase:[[Ljava/lang/String;

.field public final programId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I[[Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->programId:Ljava/lang/String;

    .line 84
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->level:I

    .line 85
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->avoid:Ljava/util/Set;

    .line 87
    return-void
.end method


# virtual methods
.method public at(IDI)Lcom/isaigu/gymapp/ai/AutoTemplates$At;
    .registers 15

    .prologue
    .line 92
    if-ltz p1, :cond_14

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_14

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, p1

    array-length v0, v0

    if-nez v0, :cond_16

    .line 93
    :cond_14
    const/4 v0, 0x0

    .line 105
    :goto_15
    return-object v0

    .line 95
    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 96
    array-length v2, v0

    .line 97
    const/4 v1, 0x1

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v4, v1

    int-to-double v6, v2

    div-double/2addr v4, v6

    .line 98
    const/4 v1, 0x0

    add-int/lit8 v3, v2, -0x1

    div-double v6, p2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 99
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoTemplates$At;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates$At;-><init>()V

    .line 100
    aget-object v6, v0, v3

    iput-object v6, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->id:Ljava/lang/String;

    .line 101
    iput v3, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->index:I

    .line 102
    iput v2, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->count:I

    .line 103
    const-wide/16 v6, 0x0

    add-int/lit8 v8, v3, 0x1

    int-to-double v8, v8

    mul-double/2addr v4, v8

    sub-double/2addr v4, p2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->remainingS:D

    .line 104
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v2, :cond_5b

    add-int/lit8 v2, v3, 0x1

    aget-object v0, v0, v2

    :goto_57
    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->next:Ljava/lang/String;

    move-object v0, v1

    .line 105
    goto :goto_15

    .line 104
    :cond_5b
    const/4 v0, 0x0

    goto :goto_57
.end method
