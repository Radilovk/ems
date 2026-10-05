.class final Lcom/isaigu/gymapp/bodytech/BtFull$Adj;
.super Ljava/lang/Object;
.source "BtFull.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Adj"
.end annotation


# static fields
.field static final GAIN:I = 0x0

.field static final HZ:I = 0x1

.field static final US:I = 0x2

.field static final WAVE:I = 0x3


# instance fields
.field final f:Lcom/isaigu/gymapp/bodytech/BtFull;

.field final kind:I

.field final second:Z


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtFull;IZ)V
    .registers 4

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    .line 166
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;->kind:I

    .line 167
    iput-boolean p3, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;->second:Z

    .line 168
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 5

    .prologue
    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    .line 173
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;->kind:I

    if-nez v1, :cond_18

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain(I)I

    move-result v1

    mul-int/lit8 v2, p1, 0x5

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChGain(II)V

    .line 176
    :goto_12
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtFull;->render()V

    .line 177
    return-void

    .line 174
    :cond_18
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;->kind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;->second:Z

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;->second:Z

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v2

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/bodytech/BtFull;->stepHz(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChHz(IZI)V

    goto :goto_12

    .line 175
    :cond_2d
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;->second:Z

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Adj;->second:Z

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I

    move-result v2

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/bodytech/BtFull;->stepUs(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChWidth(IZI)V

    goto :goto_12
.end method
