.class public final Lcom/isaigu/gymapp/dialog/TimerPreset;
.super Ljava/lang/Object;
.source "TimerPreset.java"


# static fields
.field private static final BLOCK:Ljava/lang/String; = "\u001e"

.field private static final FIELD:Ljava/lang/String; = "\u001f"


# instance fields
.field public blockMode:Z

.field public customUri:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public loops:I

.field public minutes:I

.field public name:Ljava/lang/String;

.field public seconds:I

.field public sound:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 52
    new-instance v0, Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;-><init>()V

    .line 53
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_13

    .line 84
    :cond_12
    :goto_12
    return-object v0

    .line 56
    :cond_13
    const-string v1, "\u001f"

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 58
    :try_start_1b
    array-length v2, v1

    if-lez v2, :cond_23

    .line 59
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    .line 61
    :cond_23
    array-length v2, v1

    if-le v2, v3, :cond_2b

    .line 62
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 64
    :cond_2b
    array-length v2, v1

    if-le v2, v4, :cond_3b

    .line 65
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    .line 67
    :cond_3b
    array-length v2, v1

    if-le v2, v5, :cond_4b

    .line 68
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    .line 70
    :cond_4b
    array-length v2, v1

    if-le v2, v6, :cond_5b

    .line 71
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    .line 73
    :cond_5b
    array-length v2, v1

    if-le v2, v7, :cond_6b

    .line 74
    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    .line 76
    :cond_6b
    array-length v2, v1

    const/4 v3, 0x6

    if-le v2, v3, :cond_74

    .line 77
    const/4 v2, 0x6

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    .line 79
    :cond_74
    array-length v2, v1

    const/4 v3, 0x7

    if-le v2, v3, :cond_12

    .line 80
    const-string v2, "1"

    const/4 v3, 0x7

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_87} :catch_88

    goto :goto_12

    .line 82
    :catch_88
    move-exception v1

    goto :goto_12
.end method

.method static joinRecords(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/dialog/TimerPreset;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 95
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 96
    :cond_8
    const-string v0, ""

    .line 109
    :goto_a
    return-object v0

    .line 98
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const/4 v0, 0x0

    move v1, v0

    :goto_12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_43

    .line 100
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/TimerPreset;

    .line 101
    if-eqz v0, :cond_2c

    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_30

    .line 99
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 104
    :cond_30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3b

    .line 105
    const-string v3, "\u001e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_3b
    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;->serialize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 109
    :cond_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static safe(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 88
    if-nez p0, :cond_5

    .line 89
    const-string v0, ""

    .line 91
    :goto_4
    return-object v0

    :cond_5
    const-string v0, "\u001f"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u001e"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static splitRecords(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/dialog/TimerPreset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v1

    .line 127
    :goto_e
    return-object v0

    .line 117
    :cond_f
    const-string v0, "\u001e"

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 118
    const/4 v0, 0x0

    :goto_17
    array-length v3, v2

    if-ge v0, v3, :cond_3b

    .line 119
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_29

    .line 118
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 122
    :cond_29
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/TimerPreset;->deserialize(Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object v3

    .line 123
    iget-object v4, v3, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_26

    .line 124
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_3b
    move-object v0, v1

    .line 127
    goto :goto_e
.end method


# virtual methods
.method public copy()Lcom/isaigu/gymapp/dialog/TimerPreset;
    .registers 3

    .prologue
    .line 24
    new-instance v1, Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/TimerPreset;-><init>()V

    .line 25
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 27
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    iput v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    .line 28
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    iput v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    .line 29
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    iput v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    .line 30
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    iput v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    .line 31
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    :goto_23
    iput-object v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    .line 32
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    iput-boolean v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    .line 33
    return-object v1

    .line 31
    :cond_2a
    const-string v0, ""

    goto :goto_23
.end method

.method public serialize()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u001f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u001f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u001f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u001f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u001f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u001f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u001f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    if-eqz v0, :cond_80

    const/4 v0, 0x1

    :goto_64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u001f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u001f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_80
    move v0, v1

    .line 45
    goto :goto_64
.end method
