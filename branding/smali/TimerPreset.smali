.class public final Lcom/isaigu/gymapp/dialog/TimerPreset;
.super Ljava/lang/Object;
.source "TimerPreset.java"


# static fields
.field private static final BLOCK:Ljava/lang/String; = "\u001e"

.field private static final FIELD:Ljava/lang/String; = "\u001f"


# instance fields
.field public blockMode:Z

.field public blockRepeat:Z

.field public blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;"
        }
    .end annotation
.end field

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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;
    .registers 5

    .line 60
    new-instance v0, Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;-><init>()V

    .line 61
    if-eqz p0, :cond_a2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_a2

    .line 64
    :cond_f
    const/16 v1, 0xa

    const-string v2, "\u001f"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 66
    :try_start_17
    array-length v1, p0

    if-lez v1, :cond_1f

    .line 67
    const/4 v1, 0x0

    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    .line 69
    :cond_1f
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_27

    .line 70
    aget-object v1, p0, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 72
    :cond_27
    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_37

    .line 73
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    .line 75
    :cond_37
    array-length v1, p0

    const/4 v2, 0x3

    if-le v1, v2, :cond_47

    .line 76
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    .line 78
    :cond_47
    array-length v1, p0

    const/4 v2, 0x4

    if-le v1, v2, :cond_57

    .line 79
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    .line 81
    :cond_57
    array-length v1, p0

    const/4 v2, 0x5

    if-le v1, v2, :cond_67

    .line 82
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    .line 84
    :cond_67
    array-length v1, p0

    const/4 v2, 0x6

    if-le v1, v2, :cond_6f

    .line 85
    aget-object v1, p0, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    .line 87
    :cond_6f
    array-length v1, p0
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_70} :catch_a0

    const-string v2, "1"

    const/4 v3, 0x7

    if-le v1, v3, :cond_81

    .line 88
    :try_start_75
    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    .line 90
    :cond_81
    array-length v1, p0

    const/16 v3, 0x8

    if-le v1, v3, :cond_92

    .line 91
    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    .line 93
    :cond_92
    array-length v1, p0

    const/16 v2, 0x9

    if-le v1, v2, :cond_9f

    .line 94
    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/TimerPreset;->parseBlocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_9f} :catch_a0

    .line 97
    :cond_9f
    goto :goto_a1

    .line 96
    :catch_a0
    move-exception p0

    .line 98
    :goto_a1
    return-object v0

    .line 62
    :cond_a2
    :goto_a2
    return-object v0
.end method

.method static joinRecords(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/TimerPreset;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 124
    if-eqz p0, :cond_42

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_42

    .line 127
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 129
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/TimerPreset;

    .line 130
    if-eqz v2, :cond_3a

    iget-object v3, v2, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_28

    .line 131
    goto :goto_3a

    .line 133
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_33

    .line 134
    const-string v3, "\u001e"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_33
    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/TimerPreset;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 138
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :cond_42
    :goto_42
    const-string p0, ""

    return-object p0
.end method

.method private static parseBlocks(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    if-eqz p0, :cond_32

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_32

    .line 106
    :cond_e
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 107
    const/4 v1, 0x0

    :goto_15
    array-length v2, p0

    if-ge v1, v2, :cond_31

    .line 108
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_25

    .line 109
    goto :goto_2e

    .line 111
    :cond_25
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->deserialize(Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 113
    :cond_31
    return-object v0

    .line 104
    :cond_32
    :goto_32
    return-object v0
.end method

.method private static safe(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 117
    if-nez p0, :cond_5

    .line 118
    const-string p0, ""

    return-object p0

    .line 120
    :cond_5
    const-string v0, "\u001f"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u001e"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static splitRecords(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/TimerPreset;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3b

    .line 146
    :cond_e
    const/4 v1, -0x1

    const-string v2, "\u001e"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 147
    const/4 v1, 0x0

    :goto_16
    array-length v2, p0

    if-ge v1, v2, :cond_3a

    .line 148
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_26

    .line 149
    goto :goto_37

    .line 151
    :cond_26
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/TimerPreset;->deserialize(Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object v2

    .line 152
    iget-object v3, v2, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_37

    .line 153
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 156
    :cond_3a
    return-object v0

    .line 144
    :cond_3b
    :goto_3b
    return-object v0
.end method


# virtual methods
.method public copy()Lcom/isaigu/gymapp/dialog/TimerPreset;
    .registers 5

    .line 22
    new-instance v0, Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 25
    iget v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    iput v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    .line 26
    iget v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    iput v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    .line 27
    iget v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    iput v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    .line 28
    iget v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    iput v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    .line 29
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    if-eqz v1, :cond_22

    goto :goto_24

    :cond_22
    const-string v1, ""

    :goto_24
    iput-object v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    .line 30
    iget-boolean v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    .line 31
    iget-boolean v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    .line 33
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    if-eqz v1, :cond_5c

    .line 34
    const/4 v1, 0x0

    :goto_3a
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 35
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 36
    if-eqz v2, :cond_59

    .line 37
    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->deserialize(Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 41
    :cond_5c
    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .registers 4

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/TimerPreset;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u001f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/TimerPreset;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/TimerPreset;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->serializeBlocks(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
