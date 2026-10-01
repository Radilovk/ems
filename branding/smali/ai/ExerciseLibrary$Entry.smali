.class public final Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;
.super Ljava/lang/Object;
.source "ExerciseLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/ExerciseLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public bg:Ljava/lang/String;

.field public builtIn:Z

.field public defaultOn:Z

.field public diff:I

.field public en:Ljava/lang/String;

.field public eq:Ljava/lang/String;

.field public frames:I

.field public how:Ljava/lang/String;

.field public howEn:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field libZone:Ljava/lang/String;

.field public met:D

.field public mus:[I

.field public pat:Ljava/lang/String;

.field public pos:Ljava/lang/String;

.field public tg:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public vb:[F

.field public zone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public howText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->how:Ljava/lang/String;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howEn:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howEn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howEn:Ljava/lang/String;

    :goto_10
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->how:Ljava/lang/String;

    goto :goto_10
.end method

.method public isHold()Z
    .registers 3

    .prologue
    .line 78
    const-string v0, "duration"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->bg:Ljava/lang/String;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->en:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
