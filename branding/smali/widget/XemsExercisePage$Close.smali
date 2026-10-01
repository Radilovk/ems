.class final Lcom/isaigu/gymapp/widget/XemsExercisePage$Close;
.super Ljava/lang/Object;
.source "XemsExercisePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsExercisePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field private final d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsExercisePage$Close;->d:Landroid/app/Dialog;

    .line 99
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsExercisePage$Close;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 104
    return-void
.end method
