.class Lcom/isaigu/gymapp/widget/XemsUi$5;
.super Ljava/lang/Object;
.source "XemsUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V
    .registers 2

    .line 603
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$5;->val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 607
    :try_start_0
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$5;->val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object p1, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 609
    goto :goto_9

    .line 608
    :catchall_8
    move-exception p1

    .line 610
    :goto_9
    return-void
.end method
