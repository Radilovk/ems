.class final Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;
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
    name = "Lvl"
.end annotation


# instance fields
.field final t:Lcom/isaigu/gymapp/bodytech/BtTest;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtTest;)V
    .registers 2

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 230
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 234
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_38

    move v0, v1

    .line 235
    :goto_a
    if-gez p1, :cond_1c

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    if-le v2, v1, :cond_1c

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 236
    :cond_1c
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    const/16 v3, 0x63

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v4, v4, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    .line 237
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->redraw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 238
    return-void

    .line 234
    :cond_38
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    const/16 v2, 0x28

    if-ge v0, v2, :cond_42

    const/4 v0, 0x2

    goto :goto_a

    :cond_42
    const/4 v0, 0x5

    goto :goto_a
.end method
