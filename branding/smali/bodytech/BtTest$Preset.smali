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
.field static final FREE:I = 0x4

.field static final HZ:I = 0x0

.field static final LEVEL:I = 0x3

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
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 241
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    .line 242
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    .line 243
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 247
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 248
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    if-nez v1, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    .line 253
    :goto_e
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->redraw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 254
    return-void

    .line 249
    :cond_16
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    if-ne v1, v0, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    goto :goto_e

    .line 250
    :cond_21
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2d

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    goto :goto_e

    .line 251
    :cond_2d
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3d

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    if-ne v2, v0, :cond_3b

    :goto_38
    iput-boolean v0, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->free:Z

    goto :goto_e

    :cond_3b
    const/4 v0, 0x0

    goto :goto_38

    .line 252
    :cond_3d
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->tWave:I

    goto :goto_e
.end method
