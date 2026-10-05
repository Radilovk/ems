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
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 294
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    .line 295
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    .line 296
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 300
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 301
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    if-nez v0, :cond_1c

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    .line 303
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iput v2, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->proto:I

    .line 319
    :goto_14
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->redraw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 320
    return-void

    .line 304
    :cond_1c
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    if-ne v0, v3, :cond_2b

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iput v2, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->proto:I

    goto :goto_14

    .line 307
    :cond_2b
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    if-ne v0, v4, :cond_36

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    goto :goto_14

    .line 309
    :cond_36
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_62

    .line 310
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtTest;->PROTO_VAL:[[I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    aget-object v0, v0, v1

    .line 311
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->tHz:I

    .line 312
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    aget v2, v0, v3

    iput v2, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->tUs:I

    .line 313
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    const/4 v2, 0x2

    aget v2, v0, v2

    iput v2, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->onMs:I

    .line 314
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    aget v0, v0, v4

    iput v0, v1, Lcom/isaigu/gymapp/bodytech/BtTest;->offMs:I

    .line 315
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->proto:I

    goto :goto_14

    .line 317
    :cond_62
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->tWave:I

    goto :goto_14
.end method
