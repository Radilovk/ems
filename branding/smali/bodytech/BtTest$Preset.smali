.class final Lcom/isaigu/gymapp/bodytech/BtTest$Preset;
.super Ljava/lang/Object;
.source "BtTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Preset"
.end annotation


# static fields
.field static final HZ:I = 0x0

.field static final US:I = 0x1

.field static final WAVE:I = 0x2


# instance fields
.field final t:Lcom/isaigu/gymapp/bodytech/BtTest;

.field final value:I

.field final what:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtTest;II)V
    .registers 4

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 218
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    .line 219
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    .line 220
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 224
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 225
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    .line 228
    :goto_d
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->redraw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 229
    return-void

    .line 226
    :cond_15
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    goto :goto_d

    .line 227
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->tWave:I

    goto :goto_d
.end method
