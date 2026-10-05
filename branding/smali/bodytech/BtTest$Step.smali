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
.field static final HZ:I = 0x0

.field static final US:I = 0x1


# instance fields
.field final t:Lcom/isaigu/gymapp/bodytech/BtTest;

.field final what:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V
    .registers 3

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 193
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->what:I

    .line 194
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 7

    .prologue
    const/16 v0, 0x32

    const/4 v1, 0x1

    .line 198
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->what:I

    if-nez v2, :cond_3f

    .line 199
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    .line 200
    const/16 v3, 0x14

    if-ge v2, v3, :cond_32

    move v0, v1

    .line 201
    :cond_10
    :goto_10
    if-gez p1, :cond_1a

    if-le v2, v1, :cond_1a

    sub-int v3, v2, v0

    if-ge v3, v1, :cond_1a

    add-int/lit8 v0, v2, -0x1

    .line 202
    :cond_1a
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    const/16 v4, 0x3e8

    mul-int/2addr v0, p1

    add-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    .line 206
    :goto_2a
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->redraw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 207
    return-void

    .line 200
    :cond_32
    const/16 v3, 0x64

    if-ge v2, v3, :cond_38

    const/4 v0, 0x5

    goto :goto_10

    :cond_38
    const/16 v3, 0x12c

    if-ge v2, v3, :cond_10

    const/16 v0, 0xa

    goto :goto_10

    .line 204
    :cond_3f
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    const/16 v2, 0x1ff

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Step;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    mul-int/lit8 v4, p1, 0xa

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    goto :goto_2a
.end method
