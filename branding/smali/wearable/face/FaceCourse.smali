.class public final Lcom/isaigu/gymapp/wearable/face/FaceCourse;
.super Ljava/lang/Object;
.source "FaceCourse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;
    }
.end annotation


# static fields
.field public static final BREAK:J = 0x6c258c00L

.field public static final DAY:J = 0x5265c00L

.field public static final MIN_GAP:J = 0x44aa200L


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 87
    :cond_d
    return-object v0

    .line 80
    :cond_e
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v3, :cond_d

    aget-object v4, v2, v1

    .line 82
    :try_start_1a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_2f} :catch_32

    .line 80
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 83
    :catch_32
    move-exception v4

    goto :goto_2f
.end method

.method public static encode(Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x78

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 66
    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3d

    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_22

    .line 68
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :cond_22
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    const/16 v0, 0x24

    invoke-static {v4, v5, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 72
    :cond_3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static line(Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;Z)Ljava/lang/String;
    .registers 6

    .prologue
    .line 92
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->done:I

    if-gtz v0, :cond_c

    .line 93
    if-eqz p1, :cond_9

    const-string v0, "\u041f\u044a\u0440\u0432\u0430 \u0441\u0435\u0441\u0438\u044f"

    .line 100
    :goto_8
    return-object v0

    .line 93
    :cond_9
    const-string v0, "First session"

    goto :goto_8

    .line 95
    :cond_c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->done:I

    add-int/lit8 v1, v0, 0x1

    .line 96
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    if-lez v0, :cond_5a

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_51

    const-string v0, "\u0421\u0435\u0441\u0438\u044f "

    :goto_1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_54

    const-string v0, " \u043e\u0442 "

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    if-eqz p1, :cond_57

    const-string v0, " \u00b7 \u0441\u0435\u0434\u043c\u0438\u0446\u0430 "

    :goto_37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->week:I

    const/4 v2, 0x1

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->weeks:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 97
    :cond_51
    const-string v0, "Session "

    goto :goto_1d

    :cond_54
    const-string v0, " of "

    goto :goto_29

    .line 98
    :cond_57
    const-string v0, " \u00b7 week "

    goto :goto_37

    .line 100
    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_78

    const-string v0, "\u0421\u0435\u0441\u0438\u044f "

    :goto_63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_7b

    const-string v0, " \u00b7 \u043f\u043e\u0434\u0434\u0440\u044a\u0436\u043a\u0430"

    :goto_6f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_78
    const-string v0, "Session "

    goto :goto_63

    :cond_7b
    const-string v0, " \u00b7 upkeep"

    goto :goto_6f
.end method

.method public static stats(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceProgram;J)Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/isaigu/gymapp/wearable/face/FaceProgram;",
            "J)",
            "Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;-><init>()V

    .line 36
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->planned:I

    iput v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    .line 37
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->weeks:I

    iput v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->weeks:I

    .line 38
    const-wide/16 v4, 0x0

    .line 39
    const-wide/16 v0, 0x0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v0

    :cond_16
    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 41
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, p2

    if-gtz v1, :cond_16

    .line 44
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v2, v8, v2

    const-wide/32 v8, 0x6c258c00

    cmp-long v1, v2, v8

    if-lez v1, :cond_46

    .line 45
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 46
    const/4 v1, 0x0

    iput v1, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->done:I

    .line 48
    :cond_46
    iget v1, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->done:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->done:I

    .line 49
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    .line 50
    goto :goto_16

    .line 51
    :cond_52
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_61

    sub-long v0, p2, v2

    const-wide/32 v8, 0x6c258c00

    cmp-long v0, v0, v8

    if-lez v0, :cond_66

    .line 52
    :cond_61
    const/4 v0, 0x0

    iput v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->done:I

    move-object v0, v6

    .line 60
    :goto_65
    return-object v0

    .line 55
    :cond_66
    iput-wide v2, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->lastMs:J

    .line 56
    sub-long v0, p2, v4

    const-wide/32 v4, 0x240c8400

    div-long/2addr v0, v4

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->week:I

    .line 57
    iget v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->week:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_9d

    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->gapEarly:I

    .line 58
    :goto_7a
    const-wide/32 v4, 0x44aa200

    add-long/2addr v4, v2

    int-to-long v0, v0

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v0, v8

    add-long/2addr v0, v2

    const-wide/32 v2, 0xdbba00

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->nextMs:J

    .line 59
    iget v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    if-lez v0, :cond_a0

    iget v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->done:I

    iget v1, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->planned:I

    if-lt v0, v1, :cond_a0

    const/4 v0, 0x1

    :goto_99
    iput-boolean v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;->finished:Z

    move-object v0, v6

    .line 60
    goto :goto_65

    .line 57
    :cond_9d
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->gapLater:I

    goto :goto_7a

    .line 59
    :cond_a0
    const/4 v0, 0x0

    goto :goto_99
.end method
