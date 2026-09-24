.class Lcom/isaigu/gymapp/widget/XemsUi$1;
.super Ljava/lang/Object;
.source "XemsUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 323
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$1;->val$cb:Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;

    iput p2, p0, Lcom/isaigu/gymapp/widget/XemsUi$1;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 326
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 327
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$1;->val$cb:Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$1;->val$idx:I

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;->onIndex(I)V

    .line 328
    return-void
.end method
