.class final Lcom/isaigu/gymapp/ai/ProgramInfo$Close;
.super Ljava/lang/Object;
.source "ProgramInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/ProgramInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field final s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V
    .registers 2

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/ProgramInfo$Close;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 217
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ProgramInfo$Close;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 225
    :goto_7
    return-void

    .line 223
    :catch_8
    move-exception v0

    goto :goto_7
.end method
