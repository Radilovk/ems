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
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 176
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 6

    .prologue
    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCap(II)I

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Lvl;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->redraw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 182
    return-void
.end method
