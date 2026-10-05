.class final Lcom/isaigu/gymapp/bodytech/BtGear$Test;
.super Ljava/lang/Object;
.source "BtGear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtGear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Test"
.end annotation


# instance fields
.field final c:Lcom/isaigu/gymapp/bodytech/BtGear$Choice;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtGear$Choice;)V
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Test;->c:Lcom/isaigu/gymapp/bodytech/BtGear$Choice;

    .line 119
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Test;->c:Lcom/isaigu/gymapp/bodytech/BtGear$Choice;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 124
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtTestMode;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Test;->c:Lcom/isaigu/gymapp/bodytech/BtGear$Choice;

    iget-object v1, v1, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Test;->c:Lcom/isaigu/gymapp/bodytech/BtGear$Choice;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->mac:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtTestMode;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTestMode;->show()V

    .line 125
    return-void
.end method
