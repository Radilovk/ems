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
.field cycles:Landroid/widget/EditText;

.field hz:Landroid/widget/EditText;

.field pulseWidth:Landroid/widget/EditText;

.field strenth:Landroid/widget/EditText;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;)V
    .registers 2

    .line 235
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;-><init>()V

    return-void
.end method

.method private static parse(Landroid/widget/EditText;I)I
    .registers 3

    .line 255
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    :cond_13
    const-string p0, ""

    .line 256
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 257
    return p1

    .line 259
    :cond_1c
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_20} :catch_21

    return p0

    .line 260
    :catch_21
    move-exception p0

    .line 261
    return p1
.end method


# virtual methods
.method toSegment()Lcom/isaigu/gymapp/dialog/ProgramSegment;
    .registers 5

    .line 242
    new-instance v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;-><init>()V

    .line 243
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->cycles:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->parse(Landroid/widget/EditText;I)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    .line 244
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->strenth:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->parse(Landroid/widget/EditText;I)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    .line 245
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->hz:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->parse(Landroid/widget/EditText;I)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    .line 246
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->pulseWidth:Landroid/widget/EditText;

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->parse(Landroid/widget/EditText;I)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    .line 247
    iget v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    if-ge v1, v2, :cond_2d

    .line 248
    iput v2, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    .line 250
    :cond_2d
    return-object v0
.end method
