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

.field static final LEVEL:I = 0x3

.field static final PROTO:I = 0x4

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
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 298
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    .line 299
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    .line 300
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 304
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 305
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    if-nez v0, :cond_1d

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iput v2, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->proto:I

    .line 325
    :goto_15
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->redraw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 326
    return-void

    .line 308
    :cond_1d
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    if-ne v0, v3, :cond_2c

    .line 309
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    .line 310
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iput v2, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->proto:I

    goto :goto_15

    .line 311
    :cond_2c
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    if-ne v0, v4, :cond_37

    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    goto :goto_15

    .line 313
    :cond_37
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    if-ne v0, v5, :cond_68

    .line 314
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtTest;->PROTO_VAL:[[I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    aget-object v0, v0, v1

    .line 315
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    .line 316
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    aget v2, v0, v3

    iput v2, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    .line 317
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    const/4 v2, 0x2

    aget v2, v0, v2

    iput v2, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    .line 318
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    aget v2, v0, v4

    iput v2, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->offMs:I

    .line 319
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    aget v0, v0, v5

    iput v0, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->tWave:I

    .line 320
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->proto:I

    goto :goto_15

    .line 322
    :cond_68
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->tWave:I

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iput v2, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->proto:I

    goto :goto_15
.end method
