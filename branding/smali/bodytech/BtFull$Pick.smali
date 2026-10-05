.class final Lcom/isaigu/gymapp/bodytech/BtFull$Pick;
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
    name = "Pick"
.end annotation


# instance fields
.field final ch:I

.field final f:Lcom/isaigu/gymapp/bodytech/BtFull;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtFull;I)V
    .registers 3

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Pick;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    .line 210
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Pick;->ch:I

    .line 211
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Pick;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Pick;->ch:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtFull;->sel:I

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Pick;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtFull;->render()V

    .line 217
    return-void
.end method
