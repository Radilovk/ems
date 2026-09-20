.class final Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RowHolder"
.end annotation


# instance fields
.field cycles:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

.field hz:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

.field pulseWidth:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

.field strenth:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;)V
    .registers 2

    .line 296
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;-><init>()V

    return-void
.end method


# virtual methods
.method toSegment()Lcom/isaigu/gymapp/dialog/ProgramSegment;
    .registers 5

    .line 303
    new-instance v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;-><init>()V

    .line 304
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->cycles:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    iget v1, v1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;->value:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x1

    :goto_12
    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    .line 305
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->strenth:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    iget v1, v1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;->value:I

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    .line 306
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->hz:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    if-eqz v1, :cond_29

    iget v1, v1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;->value:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_29
    iput v2, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    .line 307
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->pulseWidth:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    if-eqz v1, :cond_31

    iget v3, v1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;->value:I

    :cond_31
    iput v3, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    .line 308
    return-object v0
.end method
