.class Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$CloseListener;
.super Ljava/lang/Object;
.source "BetaFeaturesDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;

    iput-object p1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$CloseListener;->this$0:Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    iget-object p1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog$CloseListener;->this$0:Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/beta/BetaFeaturesDialog;->dismiss()V

    return-void
.end method
