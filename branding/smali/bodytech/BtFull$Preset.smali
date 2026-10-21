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
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    .line 191
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->kind:I

    .line 192
    iput-boolean p3, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->second:Z

    .line 193
    iput p4, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->value:I

    .line 194
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 198
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    .line 200
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->kind:I

    if-nez v1, :cond_16

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->value:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChGain(II)V

    .line 204
    :goto_10
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtFull;->render()V

    .line 205
    return-void

    .line 201
    :cond_16
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->kind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->second:Z

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->value:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChHz(IZI)V

    goto :goto_10

    .line 202
    :cond_23
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->second:Z

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->value:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChWidth(IZI)V

    goto :goto_10

    .line 203
    :cond_30
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->second:Z

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Preset;->value:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChWave(IZI)V

    goto :goto_10
.end method
