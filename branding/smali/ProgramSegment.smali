.class public final Lcom/isaigu/gymapp/dialog/ProgramSegment;
.super Ljava/lang/Object;
.source "ProgramSegment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public cycles:I

.field public hz:I

.field public pulseWidth:I

.field public strenth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    .line 16
    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/ProgramSegment;
    .registers 4

    .line 46
    new-instance v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;-><init>()V

    .line 47
    if-eqz p0, :cond_5c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_5c

    .line 50
    :cond_e
    const/4 v1, 0x4

    const-string v2, ","

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 52
    :try_start_15
    array-length v1, p0

    const/4 v2, 0x1

    if-lez v1, :cond_2a

    .line 53
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    .line 55
    :cond_2a
    array-length v1, p0

    if-le v1, v2, :cond_39

    .line 56
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    .line 58
    :cond_39
    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_49

    .line 59
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    .line 61
    :cond_49
    array-length v1, p0

    const/4 v2, 0x3

    if-le v1, v2, :cond_59

    .line 62
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_59} :catch_5a

    .line 65
    :cond_59
    goto :goto_5b

    .line 64
    :catch_5a
    move-exception p0

    .line 66
    :goto_5b
    return-object v0

    .line 48
    :cond_5c
    :goto_5c
    return-object v0
.end method

.method public static fromBean(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ProgramSegment;
    .registers 3

    .line 19
    new-instance v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;-><init>()V

    .line 20
    if-nez p0, :cond_8

    .line 21
    return-object v0

    .line 23
    :cond_8
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    .line 24
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    .line 25
    iget p0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput p0, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    .line 26
    iget p0, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    const/4 v1, 0x1

    if-ge p0, v1, :cond_1b

    .line 27
    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    .line 29
    :cond_1b
    return-object v0
.end method


# virtual methods
.method public applyTo(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 3

    .line 33
    if-nez p1, :cond_3

    .line 34
    return-void

    .line 36
    :cond_3
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 37
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 38
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 39
    return-void
.end method

.method public serialize()Ljava/lang/String;
    .registers 4

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
