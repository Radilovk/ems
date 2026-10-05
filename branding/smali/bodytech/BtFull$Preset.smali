.class final Lcom/isaigu/gymapp/bodytech/BtFull$Preset;
.super Ljava/lang/Object;
.source "BtFull.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Preset"
.end annotation


# instance fields
.field final f:Lcom/isaigu/gymapp/bodytech/BtFull;

.field final kind:I

.field final second:Z

.field final value:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtFull;IZI)V
    .registers 5

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    .line 187
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->kind:I

    .line 188
    iput-boolean p3, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->second:Z

    .line 189
    iput p4, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->value:I

    .line 190
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 194
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    .line 196
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->kind:I

    if-nez v1, :cond_16

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->value:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChGain(II)V

    .line 200
    :goto_10
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtFull;->render()V

    .line 201
    return-void

    .line 197
    :cond_16
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->kind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->second:Z

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->value:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChHz(IZI)V

    goto :goto_10

    .line 198
    :cond_23
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->second:Z

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->value:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChWidth(IZI)V

    goto :goto_10

    .line 199
    :cond_30
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->second:Z

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->value:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChWave(IZI)V

    goto :goto_10
.end method
