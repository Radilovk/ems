.class final Lcom/isaigu/gymapp/widget/XemsExercisePage$Gone;
.super Ljava/lang/Object;
.source "XemsExercisePage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsExercisePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Gone"
.end annotation


# instance fields
.field private final web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsExercisePage$Gone;->web:Landroid/webkit/WebView;

    .line 112
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsExercisePage$Gone;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsExercisePage$Gone;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 121
    :goto_a
    return-void

    .line 119
    :catch_b
    move-exception v0

    goto :goto_a
.end method
