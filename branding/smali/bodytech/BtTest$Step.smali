.class final Lcom/isaigu/gymapp/bodytech/BtTest$Step;
.super Ljava/lang/Object;
.source "BtTest.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Step"
.end annotation


# static fields
.field static final GAIN:I = 0x4

.field static final HZ:I = 0x0

.field static final OFF:I = 0x3

.field static final ON:I = 0x2

.field static final US:I = 0x1


# instance fields
.field final t:Lcom/isaigu/gymapp/bodytech/BtTest;

.field final what:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V
    .registers 3

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 249
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->what:I

    .line 250
    return-void
.end method

.method static ms(II)I
    .registers 5

    .prologue
    .line 280
    const/16 v0, 0x14

    if-ge p0, v0, :cond_1c

    const/4 v0, 0x1

    .line 281
    :goto_5
    if-gez p1, :cond_e

    if-lez p0, :cond_e

    sub-int v1, p0, v0

    if-gez v1, :cond_e

    move v0, p0

    .line 282
    :cond_e
    const/4 v1, 0x0

    const/16 v2, 0x3e8

    mul-int/2addr v0, p1

    add-int/2addr v0, p0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 280
    :cond_1c
    const/16 v0, 0x64

    if-ge p0, v0, :cond_22

    const/4 v0, 0x5

    goto :goto_5

    :cond_22
    const/16 v0, 0x32

    goto :goto_5
.end method


# virtual methods
.method public onStep(I)V
    .registers 9

    .prologue
    const/16 v3, 0x64

    const/16 v1, 0x32

    const/16 v0, 0xa

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 254
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->what:I

    if-nez v4, :cond_52

    .line 255
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v4, v4, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    .line 256
    const/16 v5, 0x14

    if-ge v4, v5, :cond_3b

    move v0, v2

    .line 257
    :cond_15
    :goto_15
    if-gez p1, :cond_1f

    if-le v4, v2, :cond_1f

    sub-int v1, v4, v0

    if-ge v1, v2, :cond_1f

    add-int/lit8 v0, v4, -0x1

    .line 258
    :cond_1f
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    const/16 v3, 0x2710

    mul-int/2addr v0, p1

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    .line 259
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iput v6, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->proto:I

    .line 276
    :goto_33
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->redraw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 277
    return-void

    .line 256
    :cond_3b
    if-ge v4, v3, :cond_3f

    const/4 v0, 0x5

    goto :goto_15

    :cond_3f
    const/16 v5, 0x12c

    if-lt v4, v5, :cond_15

    const/16 v0, 0x3e8

    if-ge v4, v0, :cond_49

    move v0, v1

    goto :goto_15

    :cond_49
    const/16 v0, 0xbb8

    if-ge v4, v0, :cond_4f

    move v0, v3

    goto :goto_15

    :cond_4f
    const/16 v0, 0x1f4

    goto :goto_15

    .line 260
    :cond_52
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->what:I

    if-ne v3, v2, :cond_7f

    .line 261
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_7d

    .line 262
    :goto_5e
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v4, v4, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    .line 263
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iput v6, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->proto:I

    goto :goto_33

    :cond_7d
    move v0, v1

    .line 261
    goto :goto_5e

    .line 264
    :cond_7f
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->what:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a9

    .line 265
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->ms(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    if-lez v0, :cond_a4

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->offMs:I

    if-nez v0, :cond_a4

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->offMs:I

    .line 267
    :cond_a4
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iput v6, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->proto:I

    goto :goto_33

    .line 268
    :cond_a9
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->what:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_c6

    .line 269
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    if-lez v0, :cond_c0

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->offMs:I

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->ms(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->offMs:I

    .line 270
    :cond_c0
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iput v6, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->proto:I

    goto/16 :goto_33

    .line 272
    :cond_c6
    const/16 v1, 0x1f

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtTest;->gain:I

    add-int/2addr v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 273
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->gain:I

    if-le v1, v2, :cond_e5

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    if-le v2, v0, :cond_e5

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iput v0, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    .line 274
    :cond_e5
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->gain:I

    goto/16 :goto_33
.end method
