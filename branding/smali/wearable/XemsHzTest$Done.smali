.class final Lcom/isaigu/gymapp/wearable/XemsHzTest$Done;
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
    name = "Done"
.end annotation


# instance fields
.field final t:Lcom/isaigu/gymapp/wearable/XemsHzTest;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V
    .registers 2

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Done;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    .line 347
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Done;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->stop()V

    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Done;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 353
    return-void
.end method
