.class Lcom/isaigu/gymapp/ai/AiUi$35;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;

.field final synthetic val$v:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1829
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$35;->val$cb:Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;

    iput p2, p0, Lcom/isaigu/gymapp/ai/AiUi$35;->val$v:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$35;->val$cb:Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiUi$35;->val$v:I

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;->onSelect(I)V

    .line 1833
    return-void
.end method
