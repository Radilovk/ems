.class final Lcom/isaigu/gymapp/dialog/ParamDialogUi$TabClick;
.super Ljava/lang/Object;
.source "ParamDialogUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/ParamDialogUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabClick"
.end annotation


# instance fields
.field private final k:I

.field private final tabs:Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;I)V
    .registers 3

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$TabClick;->tabs:Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;

    .line 301
    iput p2, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$TabClick;->k:I

    .line 302
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 306
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$TabClick;->tabs:Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;

    iget v1, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$TabClick;->k:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->select(I)V

    .line 308
    return-void
.end method
