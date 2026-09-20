.class final Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;
.super Ljava/lang/Object;
.source "SegmentProgramUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockHolder"
.end annotation


# instance fields
.field cycles:Landroid/widget/EditText;

.field hz:Landroid/widget/EditText;

.field pulseContinue:Landroid/widget/EditText;

.field pulsePause:Landroid/widget/EditText;

.field pulseWidth:Landroid/widget/EditText;

.field strenth:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V
    .registers 2

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseInt(Landroid/widget/EditText;I)I
    .registers 3

    .line 293
    if-nez p0, :cond_3

    .line 294
    return p1

    .line 297
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_16
    const-string p0, ""

    .line 298
    :goto_18
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 299
    return p1

    .line 301
    :cond_1f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_23} :catch_24

    return p0

    .line 302
    :catch_24
    move-exception p0

    .line 303
    return p1
.end method


# virtual methods
.method toSegment()Lcom/isaigu/gymapp/dialog/ProgramSegment;
    .registers 5

    .line 279
    new-instance v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;-><init>()V

    .line 280
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->cycles:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->parseInt(Landroid/widget/EditText;I)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    .line 281
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->strenth:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->parseInt(Landroid/widget/EditText;I)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    .line 282
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->hz:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->parseInt(Landroid/widget/EditText;I)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    .line 283
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->pulseWidth:Landroid/widget/EditText;

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->parseInt(Landroid/widget/EditText;I)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    .line 284
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->pulseContinue:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->parseInt(Landroid/widget/EditText;I)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseContinue:I

    .line 285
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->pulsePause:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->parseInt(Landroid/widget/EditText;I)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulsePause:I

    .line 286
    iget v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    if-ge v1, v2, :cond_3d

    .line 287
    iput v2, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    .line 289
    :cond_3d
    return-object v0
.end method
