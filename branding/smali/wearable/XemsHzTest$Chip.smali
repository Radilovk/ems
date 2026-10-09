.class final Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;
.super Ljava/lang/Object;
.source "XemsHzTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/XemsHzTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Chip"
.end annotation


# instance fields
.field final kind:I

.field final t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

.field final value:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;II)V
    .registers 4

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    .line 315
    iput p2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;->kind:I

    .line 316
    iput p3, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;->value:I

    .line 317
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 321
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 322
    iget v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;->kind:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hz:I

    .line 325
    :goto_d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->redraw()V

    .line 326
    return-void

    .line 323
    :cond_13
    iget v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->level:I

    goto :goto_d

    .line 324
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->ch:I

    goto :goto_d
.end method
