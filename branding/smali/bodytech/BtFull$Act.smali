.class final Lcom/isaigu/gymapp/bodytech/BtFull$Act;
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
    name = "Act"
.end annotation


# static fields
.field static final CLEAR:I = 0x1

.field static final COPY:I


# instance fields
.field final f:Lcom/isaigu/gymapp/bodytech/BtFull;

.field final what:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtFull;I)V
    .registers 3

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Act;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    .line 231
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Act;->what:I

    .line 232
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 236
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Act;->what:I

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Act;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->copyToAll(I)V

    .line 238
    :goto_b
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Act;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtFull;->render()V

    .line 239
    return-void

    .line 237
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Act;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clearChannel(I)V

    goto :goto_b
.end method
