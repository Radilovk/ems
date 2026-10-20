.class final Lcom/isaigu/gymapp/dialog/ParamAdvice$Fold;
.super Ljava/lang/Object;
.source "ParamAdvice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/ParamAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fold"
.end annotation


# instance fields
.field private final body:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Fold;->body:Landroid/view/View;

    .line 244
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 248
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 249
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Fold;->body:Landroid/view/View;

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Fold;->body:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x8

    :goto_f
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 250
    return-void

    .line 249
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
