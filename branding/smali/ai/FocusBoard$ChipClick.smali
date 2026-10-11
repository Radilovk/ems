.class final Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChipClick"
.end annotation


# instance fields
.field private final k:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    iput p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;->k:I

    .line 1084
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1088
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1089
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;->k:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipClick(I)V

    .line 1090
    return-void
.end method
